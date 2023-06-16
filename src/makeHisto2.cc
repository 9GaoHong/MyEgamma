#include <iostream>
#include <filesystem>
#include <boost/program_options.hpp>
#include <boost/algorithm/string.hpp>
#include <boost/algorithm/string/join.hpp>
#include <TFile.h>
#include <TTree.h>
#include <TH1D.h>
#include <TEfficiency.h>
#include <TString.h>

#include <Options.h>

namespace po = boost::program_options;

int main (int argc, char** argv) {

  Options options(argc, argv);
  YAML::Node const config = options.GetConfig();
  // input file name
  std::string filename = "input.root";
  if  (options.Exists("input")) filename = options.GetAs<std::string>("input");
  std::filesystem::path filepath(filename);
  std::string outputName = filepath.filename().string();
  // output file name
  std::string outputPath = "";
  if  (options.Exists("output")) outputPath = options.GetAs<std::string>("output");
  // tree name (or path)
  std::string tree_name = "tnpEleTrig/fitter_tree";
  tree_name = Options::NodeAs<std::string>(config, {"tree_name"});

  std::string ptUpper = "500.";
  std::string ptLower = "0.";
  if  (options.Exists("right-edge")) ptUpper = options.GetAs<std::string>("right-edge");
  if  (options.Exists("left-edge")) ptLower = options.GetAs<std::string>("left-edge");
  // open the TnP file
  TFile *inputFile = new TFile(filename.c_str(), "READ");
  TTree *tree = (TTree *)inputFile->Get(tree_name.c_str());
  // set branch addresses
  float el_pt, pair_mass;
  tree->SetBranchAddress("el_pt", &el_pt);
  tree->SetBranchAddress("pair_mass", &pair_mass);
  tree->SetBranchAddress("passHltEle32WPTightGsf", &passHltEle27WPTightGsf);
  // create the output file
  TFile *outputFile = new TFile((outputPath + "/" + outputName).c_str(), "recreate");
  //initiate the histograms
  std::vector<std::string> electronYears = Options::GetStrings(config, {"electron-years"});
  for (unsigned int i = 0; i < electronYears.size(); i++) {
    auto hist_model = TH1D("","",35, 60.,130. );
    auto hist_pass = TH1D(TString("pass_electron" + electronYears[i] + "_pt" + ptLower + "-" + ptUpper), "", 35, 60., 130.);
    auto hist_fail = TH1D(TString("fail_electron" + electronYears[i] + "_pt" + ptLower + "-" + ptUpper), "", 35, 60., 130.);
    auto eff = new TEfficiency(("eff_electron" + electronYears[i]).c_str(), "", 1, 0, 1);
    eff->SetTotalEvents(0, 0);
    eff->SetPassedEvents(0, 0);
    // loop over entries
    for (Long64_t jentry=0; jentry<tree->GetEntries();jentry++) {
      tree->GetEntry(jentry);
      // filter by pt
      if (el_pt <= std::stof(ptLower) || el_pt >= std::stof(ptUpper)) continue;
      // filter by tag cuts
      std::vector<std::string> tag_cuts = Options::GetStrings(config, {"tag-selections"});
      bool pass_tag_cuts = true;
      for (std::string const& cut : tag_cuts) {
        if (!tree->GetBranchStatus(cut.c_str())) continue; // skip if branch not found
        bool this_cut = false;
        tree->SetBranchAddress(cut.c_str(), &this_cut);
        tree->GetEntry(jentry);
        pass_tag_cuts = pass_tag_cuts && this_cut;
      }
      if (!pass_tag_cuts) continue;
    // fill histograms
      hist_model.Fill(pair_mass);
      if (tree->GetBranchStatus(("pass_electron" + electronYears[i]).c_str())) {
        bool pass_electron;
        tree->SetBranchAddress(("pass_electron" + electronYears[i]).c_str(), &pass_electron);
        tree->GetEntry(jentry);
        if (pass_electron) {
          hist_pass.Fill(pair_mass);
          eff->Fill(1);
        } else {
          hist_fail.Fill(pair_mass);
          eff->Fill(0);
        }
      } else {
        std::cout << "ERROR: pass_electron" << electronYears[i] << " branch not found!" << std::endl;
      }
    }
// write histograms and efficiencies to output file
hist_model.Write(("hist_model_electron" + electronYears[i]).c_str());
hist_pass.Write();
hist_fail.Write();
eff->Write();
}
// close files
outputFile->Close();
inputFile->Close();
return 0;
}

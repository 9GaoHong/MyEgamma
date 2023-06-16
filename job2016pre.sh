#UL2016preVFP=(Run2016F Run2016G Run2016H DY_NLO DY_LO)
UL2016preVFP=(Run2016F Run2016B Run2016C Run2016D Run2016E)
for j in ${UL2016preVFP[*]};do
./bin/addBranches --config config/electron.yaml --input /eos/user/h/hgao/ver1-2023-03-17/UL2016preVFP/UL2016preVFP_${j}.root --output /eos/user/h/hgao/ver1-2023-03-17/UL2016preVFP/output/UL2016preVFP_${j}.root --year 2016 --isMC 0
done


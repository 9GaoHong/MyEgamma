UL2016preVFP=(DY_NLO DY_LO)
for j in ${UL2016preVFP[*]};do
./bin/addBranches --config config/electron.yaml --input /eos/user/h/hgao/ver1-2023-03-17/UL2016preVFP/UL2016preVFP_${j}.root --output /eos/user/h/hgao/ver1-2023-03-17/UL2016preVFP/output/UL2016preVFP_${j}.root --year 2016 --isMC 0
done

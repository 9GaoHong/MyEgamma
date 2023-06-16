UL2018=(DY_NLO DY_LO)
for j in ${UL2018[*]};do
./bin/addBranches --config config/electron.yaml --input /eos/user/h/hgao/ver1-2023-03-17/UL2018/UL2018_${j}.root --output /eos/user/h/hgao/ver1-2023-03-17/UL2018/output/UL2018_${j}.root --year 2018 --isMC 1
done


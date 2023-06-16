UL2018=(Run2018A Run2018B Run2018C Run2018D)
#UL2018=(Run2018D)
for j in ${UL2018[*]};do
./bin/addBranches --config config/electron.yaml --input /eos/user/h/hgao/ver1-2023-03-17/UL2018/UL2018_${j}.root --output /eos/user/h/hgao/ver1-2023-03-17/UL2018/output/UL2018_${j}.root --year 2018 --isMC 0
done


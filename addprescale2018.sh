
UL2018=(
2018RunA-part0.root
2018RunA-part1.root
2018RunB-part0.root
2018RunB-part1.root
2018RunC-part0.root
2018RunC-part1.root
2018RunD-part0.root
2018RunD-part1.root
2018RunD-part2.root
2018RunD-part3.root
2018RunD-part4.root
2018RunD-part5.root)
for j in ${UL2018[*]};do
./bin/addWeights --config config/photon.yaml --input /eos/user/h/hgao/prescale/photonSample/${j} --output /eos/user/h/hgao/prescale/photonSample/UL2018prescaleSample/${j} --year 2018 --isMC 0
done

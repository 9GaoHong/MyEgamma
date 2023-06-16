import json

with open('Cert_271036-284044_13TeV_Legacy2016_Collisions16_JSON.txt') as file:
    data = json.load(file)
keys = sorted(data.keys())
with open('2016RunNum.txt','w') as output_file:
    for key in keys:
        output_file.write(key + '\n')

with open('Cert_294927-306462_13TeV_UL2017_Collisions17_GoldenJSON.txt') as file:
    data = json.load(file)
keys = sorted(data.keys())
with open('2017RunNum.txt','w') as output_file:
    for key in keys:
        output_file.write(key + '\n')

with open('Cert_314472-325175_13TeV_Legacy2018_Collisions18_JSON.txt') as file:
    data = json.load(file)
keys = sorted(data.keys())
with open('2018RunNum.txt','w') as output_file:
    for key in keys:
        output_file.write(key + '\n')


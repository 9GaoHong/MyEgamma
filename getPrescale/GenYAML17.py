import os
import re
import yaml
path = '/eos/user/h/hgao/prescale/2017prescale_table.txt'
assert path
f = open(path)
linenum = 0
run = []
cmsls = []
prescale = []
result_all = {}
HLT = ["HLT_Photon50_R9Id90_HE10_IsoM","HLT_Photon75_R9Id90_HE10_IsoM","HLT_Photon90_R9Id90_HE10_IsoM","HLT_Photon120_R9Id90_HE10_IsoM","HLT_Photon165_R9Id90_HE10_IsoM","HLT_Photon200"]
for t in range(len(HLT)):
    s = HLT[t]
    for x in f:
        if linenum >=3:
            y = x.split('|')
            if len(y) > 1:
                num = None
                number = re.findall("\d+",y[1])
                if number:
                    num = number[0]
                if num != None:
                    if s in y[5]:
                        run.append(int(y[1]))
                        cmsls.append(int(y[2]))
                        prescale.append(int(float(y[4].strip())))
        linenum += 1
    list = []
    dict = {}
    for i in range(len(run)):
        if run[i] == run[i-1]:
            dict.update(name = run[i])
            dict[cmsls[i]] = prescale[i]    
            
        else :
            dict.update(name = run[i])
            list.append(dict)
            dict[cmsls[i]] = prescale[i]
        
            dict = {}
    data = {}
    for i in range(len(run)):
        if run[i] == run[i-1]:
            data[run[i]][cmsls[i]] = prescale[i]
        else:
            data[run[i]] = {cmsls[i]: prescale[i]}
    result_all[s] = data
    
with open('/eos/user/h/hgao/prescale/2017.yaml', 'w') as f:
    yaml.dump(result_all, f, default_flow_style=False)








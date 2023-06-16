#!/bin/bash
COMMAND="brilcalc trg --prescale --hltpath"
HLT16=(HLT_Photon50_R9Id90_HE10_IsoM_v* HLT_Photon75_R9Id90_HE10_IsoM_v* HLT_Photon90_R9Id90_HE10_IsoM_v* HLT_Photon120_R9Id90_HE10_IsoM_v* HLT_Photon165_R9Id90_HE10_IsoM_v* HLT_Photon175_v* )

mapfile -t UL2016RUNS < "2016RunNum.txt"
for trigger in "${HLT16[@]}"; do 
    for RUN in "${UL2016RUNS[@]}"; do
        OUTPUT=$(eval "$COMMAND $trigger -r $RUN")
        echo "$OUTPUT" >> /eos/user/h/hgao/prescale/2016prescale_table.txt   
    done
done


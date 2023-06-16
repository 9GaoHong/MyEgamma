#!/bin/bash
COMMAND="brilcalc trg --prescale --hltpath"
HLT1718=(HLT_Photon50_R9Id90_HE10_IsoM_v* HLT_Photon75_R9Id90_HE10_IsoM_v* HLT_Photon90_R9Id90_HE10_IsoM_v* HLT_Photon120_R9Id90_HE10_IsoM_v* HLT_Photon165_R9Id90_HE10_IsoM_v* HLT_Photon200_v*)

mapfile -t UL2018RUNS < "2018RunNum.txt"

for trigger in "${HLT1718[@]}"; do   
    for RUN in "${UL2018RUNS[@]}"; do
        OUTPUT=$(eval "$COMMAND $trigger -r $RUN")
        echo "$OUTPUT" >> /eos/user/h/hgao/prescale/2018prescale_table.txt
	echo "done"
    done
done


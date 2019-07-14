------------------------------------------------------------------------
Nuvoton Technology Corporation - Confidential
Poleg OpenBMC files and instructions
Copyright (c) 2017-2019 Nuvoton Technology Corporation. All Rights Reserved.
------------------------------------------------------------------------

Poleg RunBMC files and instructions
====================================

Building instructions:
======================
	In order to build RunBMC OpenBMC use:
	======================================
	clone https://github.com/openbmc/openbmc
		Follow instructions at the README.md inside
	In step 3 "Target your hardware" do:
		export TEMPLATECONF=meta-quanta/meta-runbmc-nuvoton/conf
	Then:
		. openbmc-env
		bitbake obmc-phosphor-image


Folder CONTENTS
===============
RunBMC
|   readme.txt - this readme file with building instructions
|
+---board_deliverables
|       RunBMC_Microcontroller_Implementation_Guide_1.0.pdf
|       RunBMC_NPCM7mnx_BOM_A.1.0.xlsx       - BOM
|       RunBMC_NPCM7mnx_schematics_A.1.0.pdf - schematics
|
\---OCP_Specification
        OCP_RunBMC_Daughterboard_Card_Design_Specification_v1.pdf

----------------------------
For any help please contact:
tomer.maimon@nuvoton.com
avi.fishman@nuvoton.com
tali.perry@nuvoton.com
oshri.alkoby@nuvoton.com
----------------------------
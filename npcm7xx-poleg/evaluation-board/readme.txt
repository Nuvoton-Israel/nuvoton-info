------------------------------------------------------------------------
Nuvoton Technology Corporation - Confidential
Poleg OpenBMC files and instructions
Copyright (c) 2017-2018 Nuvoton Technology Corporation. All Rights Reserved.
------------------------------------------------------------------------

Poleg OpenBMC files and instructions
====================================

Building instructions:
======================
	In order to build Nuvoton OpenBMC use:
	======================================
	https://github.com/Nuvoton-Israel/openbmc/tree/npcm7xx_v2.1
	or
	https://github.com/Nuvoton-Israel/openbmc/tree/openbmc_npcm7xx_v2_2
	Follow instructions at the README.md inside

	Nuvoton OpenBMC builds both Nuvoton u-boot and linux.
	To build them separately:

	In order to build Nuvoton linux use:
	====================================
	https://github.com/Nuvoton-Israel/linux
	Branch Poleg-4.13.05-OpenBMC
	To build it run:
		make ARCH=arm PolegSVB_defconfig
		make uImage nuvoton-npcm750-evb.dtb modules CROSS_COMPILE=arm-none-linux-gnueabi- ARCH=arm LOADADDR=0x8000

	In order to build Nuvoton u-boot use:
	=====================================
	https://github.com/Nuvoton-Israel/u-boot
	Follow build instructions see:
	https://github.com/Nuvoton-Israel/u-boot/blob/npcm7xx/HowToBuild-npcm7xx.txt


Loading to Evaluation Board and running instructions:
=====================================================
	Use the provided Evaluation board (EB) with the pre-built images:
	=================================================================
	For initial EB setup see:
	- ./board_deliverables/NPCM750x_EVB_Quick_Setup_Guide.pdf
	For loading images to EB and running them.
	- ./sw_deliverables/NPCM7xx_OpenBMC_Programming.pdf
	
	Testing your peripheral access:
	===============================
	The following shell script contains examples for reading / writing to peripherals
	- ./sw_deliverables/linux_peripheral_testings.sh


FTP CONTENTS
============
Eval_Board
|   readme.txt - this readme file
|
|---sw_deliverables
|   |   NPCM7xx_OpenBMC_Programming.pdf - describes how to update the EB
|   |   uboot_env_parameters.txt - uboot environment that will load and run the OpenBMC_linux_X.X.X
|   |   linux_peripheral_testings.sh - shell script with examples for reading / writing to peripherals
|   |
|   \---Image_Generation_and_Programming
|           Image_Generation_and_Programming_1.8.9.zip - tools to program the BootBlock and u-boot
|                                                        described in EVB_BootBlock_U-Boot_Linux.pdf
|
\---board_deliverables
        NPCM750x_EVB_Quick_Setup_Guide.pdf  - How to work with the EB 

----------------------------
For any help please contact:
tomer.maimon@nuvoton.com
avi.fishman@nuvoton.com
tali.perry@nuvoton.com
----------------------------
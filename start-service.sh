#!/bin/bash

## Set Hugepages
sysctl -w vm.nr_hugepages=1408

## Old Ryzen-specific modprobe optimization script
modprobe msr
wrmsr -a 0xC0011022 0x510000
wrmsr -a 0xC001102b 0x1808cc16
wrmsr -a 0xC0011020 0
wrmsrsr -a 0xC0011021 0x40

## Service-specific script for autorun
XMRSTAK="/opt/xmr-stak-rx/build/bin"
cd $XMRSTAK; $XMRSTAK/randomx_booster.sh; $XMRSTAK/xmr-stak-rx -c $XMRSTAK/config.txt --noTest;

## Old script that only seems to run manually
#/opt/xmr-stak/build/bin/randomx_booster.sh
#/opt/xmr-stak/build/bin/xmr-stak-rx -c /opt/xmr-stak/build/bin/config.txt --noTest

#!/bin/bash

date | tee ./output1.txt
w | tee --append ./output1.txt
uptime | tee --append ./output1.txt

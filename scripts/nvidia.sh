#!/bin/bash

nvidia-smi --query-gpu=utilization.gpu,temperature.gpu,memory.used,memory.total \
--format=csv,noheader,nounits | awk -F', ' '{printf " %s%% |  %s°C |  %s/%s MB", $1, $2, $3, $4}'

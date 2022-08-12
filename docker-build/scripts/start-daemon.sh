#!/bin/bash

mkdir -p $TEMPO_HOME/logs
nohup $TEMPO_HOME/mate/tempo-mate >>$TEMPO_HOME/logs/tempo_mate.stdout.log 2>>$TEMPO_HOME/logs/tempo_mate.stderr.log &

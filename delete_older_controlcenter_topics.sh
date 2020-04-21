#!/bin/bash

set -o nounset \
    -o errexit \
    -o verbose

kafka-topics --bootstrap-server localhost:9092 --list | \
    grep _confluent-controlcenter | \
    grep -v _confluent-controlcenter-5-2-3-5 | \
    xargs -L1 kafka-topics --bootstrap-server localhost:9092 --delete --topic
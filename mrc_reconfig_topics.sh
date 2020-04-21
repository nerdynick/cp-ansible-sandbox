#!/bin/bash

set -o nounset \
    -o errexit \
    -o verbose

cat << EOF >> generic-observers.json
{
    "version": 1,
    "replicas": [
        {
            "count": 3,
            "constraints": {
                "rack": "dc1"
            }
        }
    ],
    "observers": [
        {
            "count": 2,
            "constraints": {
                "rack": "dc2"
            }
        }
    ]
}
EOF


kafka-topics --bootstrap-server localhost:9092 --list | \
    xargs -L1 kafka-configs --zookeeper zk1.dc1.nikoleta.aws.ps.confluent.io:2181 --entity-type topics --alter --replica-placement ~/generic-observers.json --entity-name
    
confluent-rebalancer execute \
    --metrics-bootstrap-server localhost:9092 \
    --bootstrap-server localhost:9092 \
    --throttle 1000000 \
    --zookeeper zk1.dc1.nikoleta.aws.ps.confluent.io:2181
    # With 5.5 --replica-placement-only can be added
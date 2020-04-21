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
export KAFKA_CLUSTER=EQFXSH20T7Spw8ZZ8rDDSA #Update to your cluster ID resolved from "confluent cluster describe --url http://KAFKA_HOST:8090
export SR_GROUP_ID=schema-registry #This is the default value, but update if you change the SR group id
export SR_USER=schema_registry #This is the default SCRAM user generated. Update if you change the SCRAM account principals
export CONNECT_USER=kafka_connect #Same as SR_USER
export CONNECT_CLUSTER=connect-cluster #This is the default value, but update if you change the KafkaConnect Group ID
export SYSADMIN_USER=nikoleta #This is an intial SystemAdmin Account that needs to exists in LDAP. As this is the account you'll be logging in to REST endpoints and C3

#Setup SR ServiceAcount
confluent iam rolebinding create --principal User:$SR_USER --role SecurityAdmin --kafka-cluster-id $KAFKA_CLUSTER --schema-registry-cluster-id $SR_GROUP_ID
confluent iam rolebinding create --principal User:$SR_USER --role ResourceOwner --kafka-cluster-id $KAFKA_CLUSTER --resource Group:$SR_GROUP_ID 
confluent iam rolebinding create --principal User:$SR_USER --role ResourceOwner --kafka-cluster-id $KAFKA_CLUSTER --resource Topic:_schemas 

#Setup Anonymous Read Access for SR
confluent iam rolebinding create --principal User:ANONYMOUS --role DeveloperRead  --kafka-cluster-id $KAFKA_CLUSTER --schema-registry-cluster-id $SR_GROUP_ID --resource Subject:*

#Setup Connect Worker ServiceAccount
confluent iam rolebinding create --principal User:$CONNECT_USER --role SecurityAdmin --kafka-cluster-id $KAFKA_CLUSTER --connect-cluster-id $CONNECT_CLUSTER
confluent iam rolebinding create --principal User:$CONNECT_USER --role ResourceOwner --resource Group:$CONNECT_CLUSTER --kafka-cluster-id $KAFKA_CLUSTER
confluent iam rolebinding create --principal User:$CONNECT_USER --role ResourceOwner --resource Topic:connect-configs --kafka-cluster-id $KAFKA_CLUSTER
confluent iam rolebinding create --principal User:$CONNECT_USER --role ResourceOwner --resource Topic:connect-offsets --kafka-cluster-id $KAFKA_CLUSTER
confluent iam rolebinding create --principal User:$CONNECT_USER --role ResourceOwner --resource Topic:connect-status --kafka-cluster-id $KAFKA_CLUSTER

#Setup Primary SystemAdmin Account
confluent iam rolebinding create --principal User:$SYSADMIN_USER --role SystemAdmin --kafka-cluster-id $KAFKA_CLUSTER
confluent iam rolebinding create --principal User:$SYSADMIN_USER --role SystemAdmin --kafka-cluster-id $KAFKA_CLUSTER --connect-cluster-id $CONNECT_CLUSTER
confluent iam rolebinding create --principal User:$SYSADMIN_USER --role SystemAdmin --kafka-cluster-id $KAFKA_CLUSTER --schema-registry-cluster-id $SR_GROUP_ID
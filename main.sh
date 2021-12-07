
# CREATE a VPC Network
gcloud compute networks create NAME \
    --project=PROJECT_ID \
    --subnet-mode=custom \
    --mtu=1460 \
    --bgp-routing-mode=regional

gcloud compute networks subnets create NAME \
    --project=PROJECT_ID \
    --range=IP_RANGE \
    --network=NAME \
    --region=REGION

# CREATE A firewall rule
gcloud compute firewall-rules create NAME \
    --project=PROJECT_ID
    --direction=INGRESS \
    --priority=1000 \
    --network=default \
    --action=ALLOW \
    --rules=PROTOCOL:PORT,...

#DELETE a firewall rule
gcloud compute firewall-rules delete NAME

# DELETE a VPC Network
gcloud beta compute networks delete NAME
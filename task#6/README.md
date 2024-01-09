## Automate the creation of a VM using Terraform.

### Steps:

- Install terraform on your Machine.
- Create an EC2 instance in AWS from your machine using Terraform (Compute Instance in GCP).
* Deleted old credentials: "for var in AWS_ACCESS_KEY_ID AWS_SECRET_ACCESS_KEY AWS_SESSION_TOKEN AWS_SECURITY_TOKEN ; do eval unset $var ; done "

- Run the ```terraform apply``` command to deploy the EC2.
- Go to AWS Console and verify EC2 is deployed.
![](../../../../Screenshot%202024-01-02%20at%209.15.33%20PM.png)
- Then run the ```terraform destroy``` command to delete the EC2.
![](../../../../Screenshot%202024-01-02%20at%209.20.32%20PM.png)



# terraform_random_pet_provider
Example of the terraform random_pet provider

**Prerequisites:**

You will need to have terraform installed in order to be able to test this code. 


## How to use: 

1. Clone this repository: 

```
git clone https://github.com/firedot/terraform_random_pet_provider.git
```

2. Go into the cloned repo directory 

```
cd terraform_random_pet_provider
```

3. Run the following command to download the needed provider: 

```
terraform init
```

4. Run: 

```
terraform apply
```

5. Enter your AWS Access key 

6. Enter your AMI ID

7. Enter your AWS Secret key

After the provisioning is finished, you will have a t2.micro instance with the following tags: 

 * **Identity:**  *test-web-srv*
 * **Name:**  *web.<randomly_generated_pet_name_string>*


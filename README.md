# An NCBI Guide to Finding and Analyzing Metagenomic Data

## By Cooper Park

## Offered October 2021

### Description
This is the collection of setup files and documentation for the JupyterHub associated with the workshop **An NCBI Guide to Finding and Analyzing Metagenomic Data**

### Server setup instructions

1) Setup the instance using these instructions - https://tljh.jupyter.org/en/latest/install/amazon.html
	
	a. Ubuntu 18.04
	
	b. Any size (I'm using m6i.32xlarge for metagenomics)
	
	c. Paste startup script from the link above
	
```bash
#!/bin/bash
curl -L https://tljh.jupyter.org/bootstrap.py \
| sudo python3 - \
--admin <admin-user-name>
```
	d. Add storage

	e. Set open HTTP/HTTPS access

2) Log in to EC2 instance (NOT THE JUPYTERHUB) and run 'cloudwatch-setup.sh'

3) Log in as Admin to JupyterHub and open a fresh terminal
	Run the script 'tljh-config.sh'


### File descriptions

tljh-config.sh : The setup file for the "littlest JupyterHub" after creation

cloudwatch-setup.sh : The setup file for the Cloudwatch Agent to monitor resource usage on the AWS EC2 instance the jupyterhub is hosted on.

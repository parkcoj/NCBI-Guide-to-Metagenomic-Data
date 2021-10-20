# An NCBI Guide to Finding and Analyzing Metagenomic Data

## By Cooper Park

## Offered October 2021

### Description
This is the collection of setup files and documentation for the JupyterHub associated with the workshop **An NCBI Guide to Finding and Analyzing Metagenomic Data**

### Server setup instructions

1) Setup the instance using these instructions - https://tljh.jupyter.org/en/latest/install/amazon.html
	
	a. Ubuntu 18.04
	
	b. Any size (I'm using m6i.32xlarge for metagenomics)
	
	c. Paste startup script from the link above **AND CHANGE THE ADMIN VALUE IN THE CODE**
	
```bash
#!/bin/bash
curl -L https://tljh.jupyter.org/bootstrap.py \
| sudo python3 - \
--admin <admin-user-name> --show-progress-page
```
	d. Add storage

	e. Set open HTTP/HTTPS access

2) Log in to EC2 instance (NOT THE JUPYTERHUB) and run 'cloudwatch-setup.sh'

3) Log in as Admin to JupyterHub and open a fresh terminal
	Run the script 'tljh-config.sh'

4) Send users to https://jupyterhub01.ncbi.nlm.nih.gov/hub?next=%2Fuser-redirect%2Fgit-pull?repo%3Dhttps%253A%252F%252Fgithub.com%252Fparkcoj%252FNCBI-Guide-to-Metagenomic-Data%26branch%3Dmain%26urlpath%3Dtree%252FNCBI-Guide-to-Metagenomic-Data%252Fmetagenome_exercises.ipynb to clone repo and open the notebook.


### Asynchronous Instructions (if you're here outside of a workshop offering)

Use Binder to access the materials outside of the workshop. 


### File descriptions

tljh-config.sh : The setup file for the "littlest JupyterHub" after creation

cloudwatch-setup.sh : The setup file for the Cloudwatch Agent to monitor resource usage on the AWS EC2 instance the jupyterhub is hosted on.

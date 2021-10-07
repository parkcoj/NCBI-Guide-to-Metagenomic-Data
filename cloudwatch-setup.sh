#! /bin/bash

# Download and install the Cloudwatch Agent
wget https://s3.amazonaws.com/amazoncloudwatch-agent/ubuntu/amd64/latest/amazon-cloudwatch-agent.deb
sudo dpkg -i -E ./amazon-cloudwatch-agent.deb
rm amazon-cloudwatch-agent.deb
cd /opt/aws/amazon-cloudwatch-agent/bin

# Download config file
sudo wget https://raw.githubusercontent.com/parkcoj/parkcoj_playground/main/cw-agent_config.json

# Apply config file settings and run the cloudwatch-agent
# Yes... it's the same command 2x. Just roll with it
sudo ./amazon-cloudwatch-agent-ctl -a fetch-config -m ec2 -c file:./cw-agent_config.json -s
sudo ./amazon-cloudwatch-agent-ctl -a fetch-config -m ec2 -c file:./cw-agent_config.json -s

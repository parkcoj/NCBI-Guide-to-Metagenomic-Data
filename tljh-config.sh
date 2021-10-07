#! /bin/bash

# Configure user limits
sudo tljh-config set limits.cpu 2 # Set CPU limits
sudo tljh-config set services.cull.timeout 14400 # Set timeout to 4 hours

# Install python packages
pip install matplotlib

# Install BLAST & MAGICBLAST packages
sudo mkdir -p /srv/{data,programs}/
cd /srv/programs/

sudo curl -o magicblast.tar.gz https://ftp.ncbi.nlm.nih.gov/blast/executables/magicblast/LATEST/ncbi-magicblast-1.6.0-x64-linux.tar.gz
sudo tar -xvzf magicblast.tar.gz && sudo chmod -R 755 ncbi-magicblast-1.6.0/

sudo curl -o blast.tar.gz https://ftp.ncbi.nlm.nih.gov/blast/executables/blast+/LATEST/ncbi-blast-2.12.0+-x64-linux.tar.gz
sudo tar -xvzf blast.tar.gz && sudo chmod -R 755 ncbi-blast-2.12.0+

# Download 16S RefSeq database
cd /srv/data/
sudo curl -o 16S_ribosomal_RNA.tar.gz https://ftp.ncbi.nlm.nih.gov/blast/db/16S_ribosomal_RNA.tar.gz
sudo tar -xvzf 16S_ribosomal_RNA.tar.gz
sudo mkdir 16S_ribosomal_RNA/
sudo mv 16S* 16S_ribosomal_RNA/

# Create symbolic links for programs and data
cd /etc/skel
sudo ln -s /srv/programs/ncbi-magicblast-1.6.0/bin/magicblast .
sudo ln -s /srv/programs/ncbi-blast-2.12.0+/bin/blastdbcmd .
sudo ln -s /srv/data/16S_ribosomal_RNA/ 16S_ribosomal_RNA

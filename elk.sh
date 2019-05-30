#######################################
##  ELASTIC SEARCH VERSION 7.1.x     ##
#######################################
#Download and install the public signing key:
wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -
#Install apt repo sync
sudo apt-get install apt-transport-https
#Save the repository definition to /etc/apt/sources.list.d/elastic-7.x.list:
echo "deb https://artifacts.elastic.co/packages/7.x/apt stable main" | sudo tee -a /etc/apt/sources.list.d/elastic-7.x.list
#Update apt repository
sudo apt-get update && sudo apt-get install elasticsearch
##NOTE##
#elasticsearch requires java openjdk v1.8.x to work
#install java openjdk
sudo apt install openjdk-8-jre

########################################
##         KIBANA DASHBOARD 7.1.x     ##
########################################
#Download and install the public signing key:
wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -
#Install apt repo sync
sudo apt-get install apt-transport-https
#Save the repository definition to /etc/apt/sources.list.d/elastic-7.x.list:
echo "deb https://artifacts.elastic.co/packages/7.x/apt stable main" | sudo tee -a /etc/apt/sources.list.d/elastic-7.x.list
#update apt repository
sudo apt-get update && sudo apt-get install kibana

###########################################
##            LOGSTASH 7.1.x             ##
###########################################
#Download and install the Public Signing Key:
wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -
#Install apt repo sync
sudo apt-get install apt-transport-https
#Save the repository definition to /etc/apt/sources.list.d/elastic-7.x.list:
echo "deb https://artifacts.elastic.co/packages/7.x/apt stable main" | sudo tee -a /etc/apt/sources.list.d/elastic-7.x.list
#update apt repository
sudo apt-get update && sudo apt-get install logstash

############################################
##           APM-SERVER 7.1.x             ##
############################################
#Download and install the Public Signing Key:
wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -
#Install apt repo sync
sudo apt-get install apt-transport-https
#Save the repository definition to /etc/apt/sources.list.d/elastic-7.x.list:
echo "deb https://artifacts.elastic.co/packages/7.x/apt stable main" | sudo tee -a /etc/apt/sources.list.d/elastic-7.x.list
#update apt repository
sudo apt-get update && sudo apt-get install apm-server
#configure APM Server to start automatically during boot, run:
sudo update-rc.d apm-server defaults 95 10

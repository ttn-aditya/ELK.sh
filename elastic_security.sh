###################################################
###         Elastic Xpack Security              ###
###################################################
export JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk-amd64
sudo chown elasticsearch:elasticsearch -R /usr/share/elasticsearch
sudo chown elasticsearch:elasticsearch -R /var/log/elasticsearch
sudo chown elasticsearch:elasticsearch -R /var/lib/elasticsearch
sudo chown elasticsearch:elasticsearch -R /etc/default/elasticsearch
sudo chown elasticsearch:elasticsearch -R /etc/elasticsearch
sudo su
cd /usr/share/elasticsearch/
bin/elasticsearch-certutil cert -out config/elastic-certificates.p12 -pass ""
sudo chown elasticsearch:elasticsearch -R /usr/share/elasticsearch
cp /usr/share/elasticsearch/config/elastic-certificates.p12 /etc/elasticsearch/
sudo chown elasticsearch:elasticsearch -R /etc/elasticsearch
cd /etc/elasticsearch/
sudo echo "xpack.security.enabled: true" >> elasticsearch.yml
echo "xpack.security.transport.ssl.enabled: true" >> elasticsearch.yml
echo "xpack.security.transport.ssl.verification_mode: certificate" >> elasticsearch.yml
echo "xpack.security.transport.ssl.keystore.path: elastic-certificates.p12" >> elasticsearch.yml
echo "xpack.security.transport.ssl.truststore.path: elastic-certificates.p12" >> elasticsearch.yml
cd /usr/share/elasticsearch/
bin/elasticsearch-setup-passwords auto >> password.txt
cat password.txt | grep PASSWORD kibana >> kibana_passwd.txt
echo "please set elasticsearch.username as kibana"
echo "please set elasticsearch.password as mentioned above"

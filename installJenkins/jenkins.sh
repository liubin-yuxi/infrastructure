apt-get install -y python-software-properties
add-apt-repository ppa:webupd8team/java
apt-get update
apt-get install -y oracle-java8-installer

wget -q -O - https://pkg.jenkins.io/debian/jenkins-ci.org.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ >        /etc/apt/sources.list.d/jenkins.list'  
sudo apt-get update
sudo apt-get install jenkins
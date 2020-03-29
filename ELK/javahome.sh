sudo mkdir -p /usr/lib/java
sudo touch ~/.bashrc
sudo tar -zxf jdk-8u192-linux-x64.tar.gz -C /usr/lib/java

sudo echo 'export JAVA_HOME=/usr/lib/java/jdk1.8.0_192' >> ~/.bashrc   
sudo echo 'export JRE_HOME=${JAVA_HOME}/jre  ' >> ~/.bashrc   
sudo echo 'export CLASSPATH=.:${JAVA_HOME}/lib:${JRE_HOME}/lib  ' >> ~/.bashrc   
sudo echo 'export PATH=${JAVA_HOME}/bin:$PATH  ' >> ~/.bashrc   

source ~/.bashrc

java -version
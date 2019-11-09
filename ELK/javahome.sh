mkdir -p /usr/lib/java
touch ~/.bashrc
tar -zxf jdk-8u192-linux-x64.tar.gz -C /usr/lib/java

echo 'export JAVA_HOME=/usr/lib/java/jdk1.8.0_192' >> ~/.bashrc   
echo 'export JRE_HOME=${JAVA_HOME}/jre  ' >> ~/.bashrc   
echo 'export CLASSPATH=.:${JAVA_HOME}/lib:${JRE_HOME}/lib  ' >> ~/.bashrc   
echo 'export PATH=${JAVA_HOME}/bin:$PATH  ' >> ~/.bashrc   

source ~/.bashrc

java -version
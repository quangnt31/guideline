#!/bin/sh

#### sed -i 's/\r//' filename


mkdir /opt/jdk/
tar x -C /opt/jdk/ -f jdk-8u131-linux-x64.tar.gz

update-alternatives --install /usr/bin/java java /opt/jdk/jdk1.8.0_131/bin/java 100
update-alternatives --install /usr/bin/javac javac /opt/jdk/jdk1.8.0_131/bin/javac 10
update-alternatives --install /usr/bin/jar jar /opt/jdk/jdk1.8.0_131/bin/jar 10

# choices for the alternative java 
update-alternatives --config java
update-alternatives --config javac
update-alternatives --config jar

java -version

echo  "JAVA_HOME=/opt/jdk/jdk1.8.0_131/" >> ~/.bashrc
echo  "export JAVA_HOME" >> ~/.bashrc
echo  "export PATH=$JAVA_HOME/bin:$PATH" >> ~/.bashrc
source ~/.bashrc

############################ UPDATE ##############################################

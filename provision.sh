#!/bin/bash
set -e
sudo apt-get update -y
sudo apt-get install default-jdk -y
echo "JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre/bin/java" | sudo tee /etc/environment
source /etc/environment
sudo apt-get install maven -y
sudo mkdir /opt/gradle
sudo unzip -d /opt/gradle gradle-3.4.1-bin.zip
echo "export PATH=$PATH:/opt/gradle/gradle-3.4.1/bin" | sudo tee /etc/environment
source /etc/environment
sudo apt-get install git

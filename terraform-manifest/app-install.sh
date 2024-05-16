#! /run java app
#sudo yum install java-17-amazon-corretto
sudo yum clean metadata #&& sudo yum -y install java-17-openjdk
sudo yum install java-17-amazon-corretto
mkdir /home/ec2-user/tomajapp && cd /home/ec2-user/tomajapp
wget https://github.com/Tomczi18/SpringBoot_Thymeleaf_udemy/releases/download/v1.0.0/thymeleafDemoApp-0.0.1-SNAPSHOT.war -P //home/ec2-user/tomajapp 
java -jar /home/ec2-user/tomajapp/thymeleafDemoApp-0.0.1-SNAPSHOT.war #> /home/ec2-user/tomajapp/myapp.log &

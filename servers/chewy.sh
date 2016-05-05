sudo apt-get update
sudo apt-get install openjdk-7-jdk tmux mosh glances python-setuptools

mkdir -p ~/minecraft
cd ~/minecraft; test -f minecraft_server.1.8.8.jar || wget https://s3.amazonaws.com/Minecraft.Download/versions/1.8.8/minecraft_server.1.8.8.jar

which supervisord || sudo easy_install supervisor

java -Xmx1536M -Xms1536M -jar minecraft_server.1.8.8.jar nogui

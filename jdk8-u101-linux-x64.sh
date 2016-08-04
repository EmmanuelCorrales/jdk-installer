echo "Downloading JDK 8u101 for Linux(x64)..."
wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u101-b13/jdk-8u101-linux-x64.tar.gz

echo "Extracting JDK files..."
tar -xvf jdk-8u101-linux-x64.tar.gz

echo "Creating folder at /usr/lib/jvm/jdk1.8.0 "
sudo mkdir -p /usr/lib/jvm/jdk1.8.0

echo "Copying JDK files to /usr/lib/jvm/jdk1.8.0 "
sudo mv jdk1.8.0_101/* /usr/lib/jvm/jdk1.8.0/

echo "Setting up jvm..."
sudo update-alternatives --install "/usr/bin/java" "java" "/usr/lib/jvm/jdk1.8.0/bin/java" 1
sudo update-alternatives --install "/usr/bin/javac" "javac" "/usr/lib/jvm/jdk1.8.0/bin/javac" 1
sudo update-alternatives --install "/usr/bin/javaws" "javaws" "/usr/lib/jvm/jdk1.8.0/bin/javaws" 1

echo "JDK 1.8.0_101 has been installed."

sudo update-alternatives --config java
java -version

sudo update-alternatives --config javac
javac -version

sudo update-alternatives --config javaws
javaws -version

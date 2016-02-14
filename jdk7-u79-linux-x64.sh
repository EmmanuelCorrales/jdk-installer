echo "Downloading JDK 7u79 for Linux(x64)..."
wget http://download.oracle.com/otn-pub/java/jdk/7u79-b15/jdk-7u79-linux-x64.tar.gz

echo "Extracting JDK files..."
tar -xvf jdk-7u79-linux-x64.tar.gz

echo "Creating folder at /usr/lib/jvm/jdk1.7.0 "
sudo mkdir -p /usr/lib/jvm/jdk1.7.0

echo "Copying JDK files to /usr/lib/jvm/jdk1.7.0 "
sudo mv jdk1.7.0_79/* /usr/lib/jvm/jdk1.7.0/

echo "Setting up jvm..."
sudo update-alternatives --install "/usr/bin/java" "java" "/usr/lib/jvm/jdk1.7.0/bin/java" 1
sudo update-alternatives --install "/usr/bin/javac" "javac" "/usr/lib/jvm/jdk1.7.0/bin/javac" 1
sudo update-alternatives --install "/usr/bin/javaws" "javaws" "/usr/lib/jvm/jdk1.7.0/bin/javaws" 1

echo "JDK 1.7.0_79 has been installed."

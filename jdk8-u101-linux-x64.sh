url=http://download.oracle.com/otn-pub/java/jdk/8u144-b01/090f390dda5b47b9b721c7dfaa008135/jdk-8u144-linux-x64.tar.gz
filename=jdk.tar.gz
jdk_version=1.8.0_144
jvm_dir=/usr/lib/jvm
jdk_dir=$jvm_dir/jdk$jdk_version

echo "Downloading JDK $jdk_version for Linux(x64)..."
wget -O - --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" $url > $filename

echo "Extracting JDK files"
tar -xvf $filename --directory $jvm_dir

echo "Setting up jvm..."
update-alternatives --install "/usr/bin/java" "java" "$jdk_dir/bin/java" 1
update-alternatives --install "/usr/bin/javac" "javac" "$jdk_dir/bin/javac" 1
update-alternatives --install "/usr/bin/javaws" "javaws" "$jdk_dir/bin/javaws" 1

echo "JDK $jdk_version has been installed."

update-alternatives --config java
java -version

update-alternatives --config javac
javac -version

update-alternatives --config javaws
javaws -version

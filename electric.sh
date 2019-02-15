echo $(uname -a)

if type -p java; then
    echo Java is installed
    echo   $(java -version)
    _java=java
else
    echo "no java"
fi

if [[ "$_java" ]]; then
    version=$("$_java" -version 2>&1 | awk -F '"' '/version/ {print $2}')
    echo current java version "$version"
    if [[ "$version" > "1.5" ]]; then
     	echo "setting the enviornement variable"
		echo "alias electric='java -cp $(pwd)/electric-9.07.jar:electricSFS-9.07.jar com.sun.electric.Launcher'" >> ~/.bashrc
		echo "this is only time process"
		echo "======================================="
		echo "electric  # to run the electric"
		echo "======================================="   
		echo "======================================="
		echo "Configuration Done"
		echo "======================================="
	else
		echo "Install the new java version"
    fi
fi
echo "======================================="
echo "Source the bashrc"
source ~/.bashrc	
echo "======================================="

#echo   $(java -version)

#!/bin/bash
# Written by Nishant Srivastava

#  Call as 
# ./update_gradle_wrapper.sh 3.1

# Iterate over each child directory inside the current directory
echo "# Updating to Gradle Wrapper Version: $1"
echo ""
for dir in ./*; 
do 
	echo ""
	echo ">>>> Updating directory : " $dir
	(cd "$dir" && ./gradlew wrapper --gradle-version $1); 
	echo ""
	echo ">>>> Done."
done
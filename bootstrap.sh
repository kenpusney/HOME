files=`ls -a files/ | sort`

for file in $files; do
	printf "$file\n" >> .bootfiles
done

files=`grep -v -x -f .bootignore .bootfiles`

for file in $files; do
    if [ -d files/$file ]
	then
		mkdir -p ~/$file
		cp -r files/$file/* ~/$file
	else
	    cp files/$file ~/
	fi
done

rm .bootfiles

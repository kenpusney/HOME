files=`ls -a . | sort`

for file in $files; do
	printf "$file\n" >> .bootfiles
done

files=`grep -v -x -f .bootignore .bootfiles`

for file in $files; do
    if [ -d $file ]
	then
		mkdir -p ~/$file
		cp -r $file/* ~/$file
	else
	    cp $file ~/
	fi
done

rm .bootfiles

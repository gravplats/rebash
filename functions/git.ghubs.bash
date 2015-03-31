ghubs () {
	if [[ $1 = "help" || -z "$1" ]]; then
		echo "Usage: ghubs <github-repository>"
		echo "Pushes a local repository to a new GitHub repository"
		echo ""
		echo "Example: ghubs my/repository"
	else
		# remove leading and trailing slashes.
		local repository=$(echo $1 | sed -E 's/^\/|\/$//g')
		git remote add origin "git@github.com:$repository"
        git push -u origin master
	fi
}
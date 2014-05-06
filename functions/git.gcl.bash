gcl () {
    if [[ $1 = "help" || -z "$1" ]]; then
        echo "Usage: gcl <github-repository>"
        echo "Clones a GitHub repository."
        echo ""
        echo "Example: gcl octocat/Spoon-Knife"
    else
        # remove leading and trailing slashes.
    local repository=$(echo $1 | sed -E 's/^\/|\/$//g')
        git clone "https://github.com/$repository"
    fi
}
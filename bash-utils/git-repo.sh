GITHUBUSER=passionintellectual

function createRepo(){
    repo_name=$1
    echo $repo_name
    GITHUBUSER='passionintellectual'
    # test -z $repo_name && echo "Repo name required." && exit 1
    curl -u 'passionintellectual' https://api.github.com/user/repos -d "{\"name\": \"${REPONAME:-$repo_name}\", \"description\": \"${DESCRIPTION}\", \"private\": true, \"has_issues\": true, \"has_downloads\": true, \"has_wiki\": false}"
}
rebash_update () {
    pushd . > /dev/null
    rebash go
    git pull --ff-only origin master
    reload
    popd > /dev/null    
}
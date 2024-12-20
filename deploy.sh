#!/bin/bash
if [[ $GIT_BRANCH == "origin/dev" ]]; then
    sh 'chmod +x build.sh'
    sh './build.sh'
    docker login -u subha2499 -p 
    docker tag test subha2499/dev
    docker push subha2499/dev

elif [[ $GIT_BRANCH == "origin/main" ]]; then
    sh 'chmod +x build.sh'
    sh './build.sh'
    docker login -u subha2499 -p dckr_pat_YwYa7pkRfFOxGmt1QVWVtOpCeG0
    docker tag test subha2499/prod 
    docker push subha2499/prod
fi

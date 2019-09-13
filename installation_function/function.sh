#!/usr/bin/env bash

function check_git()
{
    git --version 2>&1 > /dev/null
    echo $?
}


function is_new_project()
{

    printf "\e[36mpress y to install new laravel project or n to install your repository\e[39m \n";

    #get user input character
    read -rsn1  project_type

    #if user input is not valid rerun this function until he type `y` or `n`
    while [[ $project_type != y && $project_type != n  ]] ;  do
        printf "  '$project_type' \e[31m is not valid input \e[39m \n"
        is_new_project
    done;
}

function clone_project() {

    #create source folder if not exist
    if [[ ! -d src ]];then
        mkdir src
    fi

    cd src
    #clone selected project from github
    git clone $1;

}


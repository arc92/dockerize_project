#!/usr/bin/env bash

#check .en file exist if not create it
if [[ ! -f ./.env ]]; then
    cp ./.env.example ./.env
fi

#load .env file
. ./.env


#load function dependency
. ./installation_function/function.sh


#check user want new project our load existed project
is_new_project


if [[ $variable == y  ]];then
    clone_project "${INSTALL_REPOSITORY}"
else
    clone_project "${OUR_REPOSITY}"
fi
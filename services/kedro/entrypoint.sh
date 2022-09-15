#!/bin/bash
echo "Container started"

# exit when any command fails
#set -e


# Initialize/clone the project
if [ ! -f .init ]
then
    if [ -z $GIT_REPOSITORY ]
    then
        echo ".init file not found, creating new project"
        kedro new --config /tmp/project-config.yml --starter=pandas-iris
        kedro info
        cd proyecto-LCiD
        git init
        kedro mlflow init
        cd ..
    else
        echo ".init file not found, clonning project"
        git clone $GIT_REPOSITORY ./proyecto-LCiD
        cd proyecto-LCiD
    fi
    touch .init
else
    echo ".init file found. Doing Nothing"
fi

echo "Launching Server"
code-server --disable-telemetry --disable-update-check --config ~/vscode_config.yaml

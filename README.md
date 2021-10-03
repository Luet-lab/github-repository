# github-repository

Sample of Luet repository built on github actions and content with hosted on a container registry

## Setup

The sample uses quay. So you need to have an account on either quay or on docker hub.

The github action workflow in `.github` builds the repository and uses the secret `QUAY_ROBOT_USERNAME` and `QUAY_ROBOT_PASSWORD` that needs to be set in the repository. You need to edit the pipeline in case you use docker hub.

Change in the pipeline the `FINAL_REPO` variable to point to your container image.


## Building on top of other repositories

The file `.luet.yaml` contains a list of `luet` repositories that can be used while building. The list of repositories contains package definitions that can be then reused here in this spectree. You can comment it out if you don't need it, it is optional
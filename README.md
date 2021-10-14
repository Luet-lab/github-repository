# github-repository

Sample of Luet repository built on github actions and content with hosted on a container registry

## Setup

The sample uses ghcr.io. It does not need any setup for the container registry.

Just set 

## Use a different registry

You might want to tweak to other registry. In the workflow there are blocks commented for quay. 

The github action workflow in `.github` builds the repository and uses the secret `QUAY_ROBOT_USERNAME` and `QUAY_ROBOT_PASSWORD` that needs to be set in the repository. You need to edit the pipeline in case you want to use a different registry. The block is commented by default.

Change in the pipeline the `FINAL_REPO` variable to point to your container image in case you need it. For ghcr.io it is automatically generated.

## Notes

- Only pushing on `main` publishes packages. Pull requests and branches are just building on top.
- `PULL_REPOSITORY` is set to the Desktop repository for sample purposes. You can comment it out or set to a different repository if you are building against another repository

## Building on top of other repositories

The file `.luet.yaml` contains a list of `luet` repositories that can be used while building. The list of repositories contains package definitions that can be then reused here in this spectree. You can comment it out if you don't need it, it is optional
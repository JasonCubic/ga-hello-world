# Hello world service module

Simple hello world container-based GitHub Action

## to call this from a GitHub Action workflow in your repository

```yaml
name: example hello-world reusable workflow dispatch

on:
  workflow_dispatch: # Manually triggered by the user in GitHub repo on the Actions tab

jobs:
  example-hello-world-dispatch:
    name: calls the hello-world reusable workflow module
    # https://github.blog/2022-02-10-using-reusable-workflows-github-actions/
    # uses: USER_OR_ORG_NAME/REPO_NAME/.github/workflows/REUSABLE_WORKFLOW_FILE.yml@TAG_OR_BRANCH
    uses: JasonCubic/ga-hello-world/.github/workflows/call.yaml@v0.0.2
    with:
      who-to-greet: reusable workflows rock!
      runs-on: '["ubuntu-latest"]'
      # runs-on: '["self-hosted", "Linux", "X64"]'
```

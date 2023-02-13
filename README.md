# hello world service reusable workflow example

Simple reusable workflow that says hello world in the actions tab logs.

## calling reusable workflow hello-world example

```yaml
name: hello-world-test

on:
  workflow_dispatch: # Manually triggered by user in GitHub repo on the Actions tab

jobs:
  hello-world-test:
    name: call hello-world reusable workflow that is in another repo
    # https://github.blog/2022-02-10-using-reusable-workflows-github-actions/
    # uses: USER_OR_ORG_NAME/REPO_NAME/.github/workflows/REUSABLE_WORKFLOW_FILE.yml@TAG_OR_BRANCH
    uses: JasonCubic/ga-hello-world/.github/workflows/call.yaml@main
    with:
      runs-on: '["ubuntu-latest"]'
      who-to-greet: Developers
```

</details>

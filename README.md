# What is this?
This is a template to write CWL definition with VSCode with remote container extension.

[![Build Status](https://travis-ci.com/tom-tan/cwl-for-remote-container-template.svg?branch=master)](https://travis-ci.com/tom-tan/cwl-for-remote-container-template) [![pipeline status](https://gitlab.com/tom-tan/cwl-for-remote-container-template/badges/master/pipeline.svg)](https://gitlab.com/tom-tan/cwl-for-remote-container-template/commits/master) [![CircleCI](https://circleci.com/gh/tom-tan/cwl-for-remote-container-template/tree/master.svg?style=shield)](https://circleci.com/gh/tom-tan/cwl-for-remote-container-template/tree/master)

## How to use
- Copy this repository to your local machine.
- Open the copied repository with remote container extension of VSCode.
- Have fun!

## What is provided by this template?
- Basic tools are already installed:
  - `cwltool`, `cwl-runner`, `cwltest` and `nodejs` (for `InlineJavascriptRequirement`)
  - `docker` (you can use it without any configurations)
- A template for `cwltest`

## Supported CI services
This template provides configurations for several CI services.
All you have to do is just integrating your repository with CI services.
Each CI service executes tests listed in `test.yml` by using `cwltest`.

Replace `$USER` with your account name and `$REPO` with your repository name.
- Travis CI [![Build Status](https://travis-ci.com/tom-tan/cwl-for-remote-container-template.svg?branch=master)](https://travis-ci.com/tom-tan/cwl-for-remote-container-template)
  ```markdown
  [![Build Status](https://travis-ci.com/$USER/$REPO.svg?branch=master)](https://travis-ci.com/$USER/$REPO)
  ```
- Github Actions

  Replace `$WORKFLOW_NAME` with your GitHub Actions Workflow name.
  ```markdown
  [![Actions Status](https://github.com/{$USER}/{$REPO}/workflows/{$WORKFLOW_NAME}/badge.svg)](https://github.com/{$USER}/{$REPO}/actions)
  ```
- CircleCI [![CircleCI](https://circleci.com/gh/tom-tan/cwl-for-remote-container-template/tree/master.svg?style=shield)](https://circleci.com/gh/tom-tan/cwl-for-remote-container-template/tree/master)
  ```markdown
  [![CircleCI](https://circleci.com/gh/$USER/$REPO.svg?style=svg)](https://circleci.com/gh/$USER/$REPO)
  ```
- Gitlab CI [![pipeline status](https://gitlab.com/tom-tan/cwl-for-remote-container-template/badges/master/pipeline.svg)](https://gitlab.com/tom-tan/cwl-for-remote-container-template/commits/master)
  ```markdown
  [![pipeline status](https://gitlab.com/$USER/$REPO/badges/master/pipeline.svg)](https://gitlab.com/$USER/$REPO/commits/master)
  ```

## TODO
- [ ] A tutorial to write CWL
  - Maybe use [Zatsu method](https://qiita.com/tm_tn/items/7548fb5f9ea44f384b08)

## License
This repository is licensed under the [Unlicense](LICENSE) (a.k.a. Public Domain).
Under this license, you can:
- freely use the contents,
- freely modify the contents,
- freely change the license, and
- freely distribute it to others!

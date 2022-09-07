# What is this?
This is a template to write CWL documents with VSCode with remote container extension.

[![Actions Status](https://github.com/tom-tan/cwl-for-remote-container-template/workflows/CI/badge.svg)](https://github.com/tom-tan/cwl-for-remote-container-template/actions) [![CircleCI](https://circleci.com/gh/tom-tan/cwl-for-remote-container-template/tree/master.svg?style=shield)](https://circleci.com/gh/tom-tan/cwl-for-remote-container-template/tree/master) [![pipeline status](https://gitlab.com/tom-tan/cwl-for-remote-container-template/badges/master/pipeline.svg)](https://gitlab.com/tom-tan/cwl-for-remote-container-template/commits/master)

## Requirements
- [Visual Studio Code](https://code.visualstudio.com/)
- [Remote - Container extension](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers)
- git
- Docker

## How to use
- Push the `Use this template` button in this repository and create a new repository for you,
- Clone it to your local machine, and
- Open the cloned repository with remote container extension of VSCode.
- Have fun!

## What is provided by this template?
- A container setting for VSCode. It provides the followings:
  - basic tools such as `cwltool`, `cwl-runner`, `cwltest` and `nodejs` (for `InlineJavascriptRequirement`)
  - `docker` (you can use it without any configurations)
  - [Rabix Benten](https://github.com/rabix/benten) and [zatsu-cwl-generator](https://github.com/tom-tan/zatsu-cwl-generator) to help writing CWL documents
  - [Live Share extension](https://marketplace.visualstudio.com/items?itemName=MS-vsliveshare.vsliveshare) for live coding
- A template for `cwltest`
- Templates for CI services (described below)

## How to run tests

- Edit `test.yml`
  - Each entry consists of the input CWL file in `tool` field, the input parameter file in `job` field and the expected output object in `output` field (`doc` field is optional).
  - Here is an example entry:
  ```yaml
  - job: job/cat-job.yml
    tool: cwl/cat.cwl
    output:
      out:
        class: File
        basename: output.txt
        checksum: sha1$2af1a59da667eb4aedb182248c1d91741df7e24d
        size: 31
    doc: Template for cwltest
  ```
  - You can add new entries for your tools and workflows. I assume that the CWL files are put in `cwl` directory, the input parameter files are put in `job` directory, and the example inputs are put in `data` directory.
- Run test with the following command
  ```console
  $ cwltest --test test.yml
  Test [1/1] Template for cwltest
  ...
  All tests passed
  ```

## Supported CI services
This template provides configurations for several CI services.
All you have to do is just integrating your repository with CI services.
Each CI service executes tests listed in `test.yml` by using `cwltest`.

Replace `$USER` with your account name and `$REPO` with your repository name.
- Github Actions [![Actions Status](https://github.com/tom-tan/cwl-for-remote-container-template/workflows/CI/badge.svg)](https://github.com/tom-tan/cwl-for-remote-container-template/actions)
  - Replace `$WORKFLOW_NAME` with your GitHub Actions Workflow name.
  ```markdown
  [![Actions Status](https://github.com/$USER/$REPO/workflows/$WORKFLOW_NAME/badge.svg)](https://github.com/$USER/$REPO/actions)
  ```
- CircleCI [![CircleCI](https://circleci.com/gh/tom-tan/cwl-for-remote-container-template/tree/master.svg?style=shield)](https://circleci.com/gh/tom-tan/cwl-for-remote-container-template/tree/master)
  ```markdown
  [![CircleCI](https://circleci.com/gh/$USER/$REPO.svg?style=shield)](https://circleci.com/gh/$USER/$REPO)
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

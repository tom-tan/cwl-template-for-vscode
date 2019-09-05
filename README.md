# What is this?
This is a template to write CWL definition with VSCode with remote container extension.

[![Build Status](https://travis-ci.com/tom-tan/cwl-for-remote-container-template.svg?branch=master)](https://travis-ci.com/tom-tan/cwl-for-remote-container-template)

## How to use
- Copy this repository to your local machine.
- Open the copied repository with remote container extension of VSCode.
- Have fun!

## What is provided by this template?
- Basic tools are already installed:
  - `cwltool`, `cwl-runner`, and `cwltest`
  - `docker` (you can use it without any configurations)
- A template for `cwltest`

## Supported CI services
Replace `$USER` with your account name and `$REPO` with your repository name.
- Travis CI
  ```markdown
  [![Build Status](https://travis-ci.com/$USER/$REPO.svg?branch=master)](https://travis-ci.com/$USER/$REPO)
  ```
- Github Actions
- [WIP] CircleCI
- [WIP] Gitlab CI

## TODO
- [ ] make a template for CI settings for CI services
  - [x] Travis CI
  - [x] Github Actions
  - [ ] CircleCI
  - [ ] Gitlab CI
- [ ] A tutorial to write CWL
  - Maybe use Zatsu method

## License
This repository is licensed under the [Unlicense](LICENSE) (a.k.a. Public Domain).
Under this license, you can:
- freely use the contents,
- freely modify the contents,
- freely change the license, and
- freely distribute it to others!

# `websh` is...

[![Test](https://github.com/eggplants/websh.sh/actions/workflows/test.yml/badge.svg)](https://github.com/eggplants/websh.sh/actions/workflows/test.yml)

- websh(https://websh.jiro4989.com/) on Bash
- Run shell commands on shellgeibot-image without Docker and other special setup
- Inspired by [sheepla/websh-cli](https://github.com/sheepla/websh-cli)

## Install

```bash
# On Ubuntu
$ sudo apt install jq curl # and GNU sed, if not exists
$ wget -nv https://raw.githubusercontent.com/eggplants/websh.sh/master/websh
$ sudo install -m 0755 echo-sd /usr/local/bin/websh
$ rm echo-sd
```

## Run

```bash
websh

Description:
  websh(https://websh.jiro4989.com) on Bash

Usage:
  $ websh [-d IMG_SAVEDIR ] [ -i INPUT_IMAGE ] [-h|-p] cmd ...

  $ echo cmd ... | websh

Option:
  cmd           	Shell Commands wanted to run
  -d IMG_SAVEDIR	Set a dir saving output image(s) (default: $TMPDIR)
  -i INPUT_IMAGE	Specify the input image path (max: 4)
  -h            	Print help and exit
  -p            	Print stdout only

Requirement:
  jq, curl, GNU sed
```

```bash
$ websh 'echo text'
```

![demo1](https://raw.githubusercontent.com/eggplants/websh.sh/master/demo1.png)

```bash
$ websh 'echo text | textimg -o images/a.png;cp images/a.png images/b.png;unko.king'
```

![demo2](https://raw.githubusercontent.com/eggplants/websh.sh/master/demo2.png)

```bash
$ echo 'echo-sd 💩' | websh
```

![demo3](https://raw.githubusercontent.com/eggplants/websh.sh/master/demo3.png)

```bash
# Upload images as input and save output images to spesific dir
$ mkdir a
$ websh -i demo1.png -i demo2.png -d a 'ls media;echo test >&2;cp media/* images'
```

![demo4](https://raw.githubusercontent.com/eggplants/websh.sh/master/demo4.png)

```bash
# Plain output
$ websh -p 'echo test'
test
```

## LISENCE

MIT

## Author

haruna (eggplants)

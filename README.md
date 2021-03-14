# `websh` is...

- websh(https://websh.jiro4989.com/) on Bash
- inspired by [sheepla/websh-cli](https://github.com/sheepla/websh-cli)

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
$ websh
websh

Description:
  websh(https://websh.jiro4989.com/) on Bash

Usage:
  $ websh <cmd>

Requirement:
  jq, curl, GNU sed
```

```bash
$ ./websh 'echo text'
```

![demo1](https://raw.githubusercontent.com/eggplants/websh.sh/master/demo1.png)

```bash
$ websh 'echo text | textimg -o images/a.png;cp images/a.png images/b.png;unko.king'
```

![demo2](https://raw.githubusercontent.com/eggplants/websh.sh/master/demo2.png)

## LISENCE

MIT

## Author

haruna (eggplants)

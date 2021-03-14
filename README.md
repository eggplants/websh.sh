# `websh`

websh(https://websh.jiro4989.com/) on Bash

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
websh - websh(https://websh.jiro4989.com/) on Bash

usage:
  $ websh <cmd>

requirement:
  jq, curl, GNU sed
```

```bash
$ websh 'echo text | textimg -o images/a.png;cp images/a.png images/b.png;unko.king'
```

## LISENCE

MIT

## Author

haruna (eggplants)

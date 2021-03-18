#!/bin/bash
  o="$(./websh |& wc -l)"
echo $o # 20
  o="$(./websh "echo test1" | wc -l)"
echo $o # 0
  o="$(./websh "echo test2;echo hello>&2" | wc -l)"
echo $o # 0
  o="$(./websh "echo test3;echo hello>&2;echo a|textimg -s" | wc -l)"
echo $o # 0
  o="$(echo "echo test4" | ./websh | wc -l)"
echo $o # 0
  o="$(echo "echo test5;echo hello>&2" | ./websh | wc -l)"
echo $o # 0
  o="$(echo "echo test6;echo hello>&2;echo a|textimg -s" | ./websh | wc -l)"
echo $o # 0
  o="$(./websh -i demo1.png -i demo2.png 'ls media' | wc -l)"
echo $o # 10
  o="$(./websh -i demo1.png -i demo2.png 'ls media;echo test >&2' | wc -l)"
echo $o # 10
  o="$(./websh -i demo1.png -i demo2.png 'ls media;echo test >&2;mv media/* images' | wc -l)"
echo $o # 10
mkdir a
  o="$(./websh -i demo1.png -i demo2.png -d a 'ls media;echo test >&2;mv media/* images'| wc -l)"
echo $o # 0
  o="$(./websh -p 'echo test' | wc -l)"
echo $o # 1

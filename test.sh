#!/bin/bash

function show_index(){
  echo -e "###########\n# TEST $(printf %02d $1) #\n###########"
}

show_index 1 && (
  ./websh "echo test1"
)

show_index 2 && (
  ./websh "echo test2;echo hello>&2"
)

show_index 3 && (
  ./websh "echo test3;echo hello>&2;echo a|textimg -s"
)

show_index 4 && (
  echo "echo test4" | ./websh
)

show_index 5 && (
  echo "echo test5;echo hello>&2" | ./websh
)

show_index 6 && (
  echo "echo test6;echo hello>&2;echo a|textimg -s" | ./websh
)

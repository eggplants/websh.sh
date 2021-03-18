#!/usr/bin/env bats

@test 'env: jq, curl, sed' {
  run eval which\ {curl,jq,sed}\;
  [ "$status" = 0 ]
}

@test 'test0: help' {
  o="$(./websh |& wc -l)"
  [ "$o" -eq 10 ]
}

@test 'test1: arg, stdout' {
  o="$(./websh "echo test1" | wc -l)"
  [ "$o" -eq 10 ]
}

@test 'test2: arg, stdout, stderr' {
  o="$(./websh "echo test2;echo hello>&2" | wc -l)"
  [ "$o" -eq 10 ]
}

@test 'test3: arg, stdout, stderr, images' {
  o="$(./websh "echo test3;echo hello>&2;echo a|textimg -s" | wc -l)"
  [ "$o" -eq 10 ]
}

@test 'test4: stdin, stdout' {
  o="$(echo "echo test4" | ./websh | wc -l)"
  [ "$o" -eq 12 ]
}

@test 'test5: stdin, stdout, stderr' {
  o="$(echo "echo test5;echo hello>&2" | ./websh | wc -l)"
  [ "$o" -eq 13 ]
}

@test 'test6: stdin, stdout, stderr, images' {
  o="$(echo "echo test6;echo hello>&2;echo a|textimg -s" | ./websh | wc -l)"
  [ "$o" -eq 13 ]
}

@test 'test7: arg, stdout, input images' {
  o="$(./websh -i demo1.png -i demo2.png 'ls media' | wc -l)"
  [ "$o" -eq 10 ]
}

@test 'test8: arg, stdout, stderr, input images' {
  o="$(./websh -i demo1.png -i demo2.png 'ls media;echo test >&2' | wc -l)"
  [ "$o" -eq 10 ]
}

@test 'test9: arg, stdout, stderr, images, input images' {
  o="$(./websh -i demo1.png -i demo2.png 'ls media;echo test >&2;mv media/* images' | wc -l)"
  [ "$o" -eq 10 ]
}

@test 'test10: arg, stdout, stderr, images, input images' {
  mkdir -p a
  o="$(./websh -i demo1.png -i demo2.png -d a 'ls media;echo test >&2;mv media/* images'| wc -l)"
  [ "$o" -eq 10 ]
}

@test 'test11: arg, plain' {
  mkdir -p a
  o="$(./websh -p 'echo test' | wc -l)"
  [ "$o" -eq 1 ]
}

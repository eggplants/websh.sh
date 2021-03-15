#!/usr/bin/env bats


@test 'test0: help' {
  o="$(./websh |& wc -l)"
  [ "$o" -eq 11 ]
}

@test 'test1: arg, stdout' {
  o="$(./websh "echo test1" | wc -l)"
  [ "$o" -eq 12 ]
}

@test 'test2: arg, stdout, stderr' {
  o="$(./websh "echo test2;echo hello>&2" | wc -l)"
  [ "$o" -eq 13 ]
}

@test 'test3: arg, stdout, stderr, images' {
  o="$(./websh "echo test3;echo hello>&2;echo a|textimg -s" | wc -l)"
  [ "$o" -eq 13 ]
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

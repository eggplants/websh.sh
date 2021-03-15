#!/usr/bin/env bats

@test 'test1' {
  o="$(./websh "echo test1" | wc -l)"
  [ "$o" -eq 12 ]
}

@test 'test2' {
  o="$(./websh "echo test2;echo hello>&2" | wc -l)"
  [ "$o" -eq 13 ]
}

@test 'test3' {
  o="$(./websh "echo test3;echo hello>&2;echo a|textimg -s" | wc -l)"
  [ "$o" -eq 13 ]
}

@test 'test4' {
  o="$(echo "echo test4" | ./websh | wc -l)"
  [ "$o" -eq 12 ]
}

@test 'test5' {
  o="$(echo "echo test5;echo hello>&2" | ./websh | wc -l)"
  [ "$o" -eq 13 ]
}

@test 'test6' {
  o="$(echo "echo test6;echo hello>&2;echo a|textimg -s" | ./websh | wc -l)"
  [ "$o" -eq 13 ]
}

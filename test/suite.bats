#!/usr/bin/env bats

load 'test_helper/bats-support/load'
load 'test_helper/bats-assert/load'

slugify="dist/slugify"

@test "slugify binary exist in the expected place" {
  run test -e $slugify
  assert_success
}

@test "slug \"lol #@ slug mY l1fe  béébé\"  via pipe" {
  run bash -c "echo 'lol #@ slug mY l1fe  béébé' | $slugify"
  assert_output "lol-at-slug-my-l1fe-beebe"
}

@test "slug \"lol #@ slug mY l1fe  béébé\" as argument" {
  run $slugify "lol #@ slug mY l1fe  béébé"
  assert_output "lol-at-slug-my-l1fe-beebe"
}

@test "slug \"Slug me bébé!!1!\" via pipe" {
  run bash -c "echo 'Slug me bébé!!1!' | $slugify"
  assert_output "slug-me-bebe-1"
}

@test "slug \"Slug me bébé!!1!\" as argument" {
  run $slugify 'Slug me bébé!!1!'
  assert_output "slug-me-bebe-1"
}

@test "slug \"I'm no slug.\" via pipe" {
  run bash -c "echo \"I'm no slug.\" | $slugify"
  assert_output "im-no-slug"
}

@test "slug \"I'm no slug.\" as argument" {
  run $slugify "I'm no slug."
  assert_output "im-no-slug"
}

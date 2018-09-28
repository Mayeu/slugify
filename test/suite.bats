#!/usr/bin/env bats

slugify="./slugify"

@test "slug \"lol #@ slug mY l1fe  béébé\"  via pipe" {
  result=$(echo "lol #@ slug mY l1fe  béébé" | $slugify)
  test "${result}" = "lol-slug-my-l1fe-b-b"
}

@test "slug \"lol #@ slug mY l1fe  béébé\" as argument" {
  result=$($slugify "lol #@ slug mY l1fe  béébé")
  test "${result}" = "lol-slug-my-l1fe-b-b"
}

@test "slug \"Slug me bébé!!1!\" via pipe" {
  result=$(echo 'Slug me bébé!!1!' | $slugify)
  test "${result}" = "slug-me-b-b-1"
}

@test "slug \"Slug me bébé!!1!\" as argument" {
  result=$($slugify 'Slug me bébé!!1!')
  test "${result}" = "slug-me-b-b-1"
}

@test "slug \"I'm no slug.\" via pipe" {
  result=$(echo "I'm no slug." | $slugify)
  test "${result}" = "i-m-no-slug"
}

@test "slug \"I'm no slug.\" as argument" {
  result=$($slugify "I'm no slug.")
  test "${result}" = "i-m-no-slug"
}

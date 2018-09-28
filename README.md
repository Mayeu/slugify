# Slugify

This is a really simple (a.k.a "dumb") implementation of slug generation in
sh. It will almost certainly stays that way, I don't aim for perfection here.

It does not have any option and work best by piping one line at a time to it.

## Install

If you are the adventurous kind you can simply use `curl` to download the script:
```
$ curl https://slugify.now.sh > slugify
```
Then update the right `chmod +x slugify` and move it in your personal `~/bin`
(or anywhere in your `$PATH`)

Otherwise, just clone this repo somewhere:
```
$ git https://github.com/Mayeu/slugify
```

## Usage

Via a pipe:
```
$ echo 'Slug me bébé!!1!' | slugify"
slug-me-b-b-1
```

Or as an arg:
```
$ slugify "I'm no slug."
i-m-no-slug
```

Invoking it without args or pipe will result in this usage:
```
$ slugify
Usage: slugify text
       echo text | slugify
```

## Testing

To run the test, you are going to need [bats(1)](https://github.com/sstephenson/bats). Then you can simply run:
```
$ make test
```

## License

This software is distributed under the GPLv3 license. Please check the [LICENSE.md file](LICENSE.md)

# Slugify

This is a really simple (a.k.a "dumb") implementation of slug generation in
sh. It will almost certainly stays that way, I don't aim for perfection here.

It does not have any option and work best by piping one line at a time to it.

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
sage: slugify text
       echo text | slugify
```

## License

This software is distributed under the GPLv3 license. Please check the [LICENSE.md file](LICENSE.md)

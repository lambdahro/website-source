# LambdaHRO website sources

This website is built using [Hugo](https://gohugo.io/).

## Structure / Setup

Checkout this repository and update the related git submodules. They 
contain the theme for Hugo and the website publishing repository mapped
to the folder `public`.

```
% git clone <repo-url>
% cd repo
% git submodule update --init --recursive
```

To do this in one step use the `--recursive` flag for git like this:

```
% git clone --recursive <repo-url>
```

Now install Hugo and start a server using `hugo server` to make the
website locally available at `http://localhost:1313`.


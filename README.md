# rake-image-favico
> A favico generate task.

## install:
```bash
## install imagemagick
brew install imagemagick

## install as dev-dep for cmd task:
npm i -D afeiship/rake-image-favico --registry=https://registry.npm.taobao.org
```

## gem install:
```bash
gem install fileutils
```

## usage:
~~~
$ rake -T
rake image:favico[source,dist,sizes]  # Generate favico
~~~

## example:
```bash
rake image:favico[download.png,dist/favicos,'10 20 32 54']
```
~~~
.
├── README.md
├── Rakefile
├── dist
│   └── favicos
│       ├── favicon_10.ico
│       ├── favicon_20.ico
│       ├── favicon_32.ico
│       └── favicon_54.ico
├── download.png
├── index.rake
└── package.json
~~~


## other solution based on ruby:
```rb
require "favicon_maker"


FaviconMaker.generate do
  setup do
    template_dir "."
    output_dir "."
  end

  from "miaotu_rect.png" do
    icon "favicon.ico", size: "64x64,32x32,24x24,16x16"
  end

  each_icon do |filepath|
    puts filepath # verbose example
  end
end

# https://www.imagemagick.org/script/convert.php
# convert -resize x64 miaotu_rect.png dist/favicon.ico
```
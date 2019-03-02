# rake-image-favico
> A favico generate task.

## install:
```bash
# install imagemagick
brew install imagemagick
npm i -S afeiship/rake-image-favico --registry=https://registry.npm.taobao.org
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
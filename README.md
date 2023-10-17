# Rails UJS App

This app can be used to test the behavior of rails-ujs' start() across a variety
of Rails asset libraries.

It currently tests:
- sprockets (require/append)
- importmaps
- esbuild (jsbundling)
- webpack (jsbundling)

## Setup

```shell
$ bundle install
$ yarn build
$ rails s
```

## Testing a local rails-ujs

In the `actionview` folder:

```shell
$ yarn link
```

In Rails UJS App:

```shell
$ yarn link @rails/ujs
$ yarn build
```

To reverse these changes in Rails UJS App:

```shell
$ yarn unlink @rails/ujs
$ yarn install --force
$ yarn build
```

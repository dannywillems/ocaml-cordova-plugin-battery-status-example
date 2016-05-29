# ocaml-cordova-plugin-battery-status-example

[![Build Status](https://travis-ci.org/dannywillems/ocaml-cordova-plugin-battery-status-example.svg?branch=master)](https://travis-ci.org/dannywillems/ocaml-cordova-plugin-battery-status-example)

This is an example of the binding to https://github.com/apache/cordova-plugin-batterystatus. See the
binding [here](https://github.com/dannywillems/ocaml-cordova-plugin-battery-status).

## How to compile?

1. Add the plugin list repository as a remote opam package provider with
```Shell
opam repository add cordova https://github.com/dannywillems/ocaml-cordova-plugin-list.git
```

2. Initialize the project directory with
```
make init
```

3. Run (and build).
```
# Run on Android
make run_android
# Run on iOS
make run_ios
```

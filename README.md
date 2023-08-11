# MangaTek

This app is made in Flutter and allow user to read manga scans.

It is linked to a firebase project hosting manga scans.

## Setting environments

To set the environment, the dart define from file command is used.
There is 2 env :
- dev
- prod

To set it at compile time, add this to your run/build command:
```--dart-define-from-file=env/dev.env```
or
```--dart-define-from-file=env/prod.env```

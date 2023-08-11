# MangaTek

This app is made in Flutter and allow user to read manga scans.

It is linked to a firebase project hosting manga scans.

## Setting environments

To set the environment, the dart define from file command is used.
There is 2 env :
- dev
- prod

To set it at compile time, add this to your run/build command:

```--dart-define-from-file=env/dev.env.json```

or

```--dart-define-from-file=env/prod.env.json```

## Setting firebase core files

Run the following command to fetch firebase core files:

```./firebase_config.sh```

If you're not logged in to firebase cli you'll need to run this command before :
```curl -sL https://firebase.tools | bash``` \[to install if needed\]

and 

```firebase login```

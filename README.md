BasicLambda
-----------

A basic example of an AWS Lambda function written in Purescript.

## Build and Install

To create your own Lambda package:

```
$> git clone https://github.com/loganmac/purescript-hello-lambda
$> cd purescript-hello-lambda
$> bower up
$> npm run build
$> npm run package
```

To install, change the `--function-name` tag in package.json under the `deploy`
script to the name of your own Lambda function, then
```
$> npm run deploy
```

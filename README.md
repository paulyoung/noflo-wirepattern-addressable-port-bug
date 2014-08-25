# NoFlo "wirepattern addressable port bug" demo

This project demonstrates how an information packet isn't being converted into an object with array indexes as keys when sent from another component.

## Reproducing the issue
First, install dependencies:

````sh
$ npm install
```

To see the expected behavior, run:

```sh
$ npm run-script iip
```

To reproduce the issue, run:

```sh
$ npm run-script ip
```

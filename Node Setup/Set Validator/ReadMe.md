## SUR Blockchain Network ##

Here you can find documents describes how you can change a Sur node to a Sur validator.


List of Validators:

```
curl -X POST --data '{"jsonrpc":"2.0","method":"ibft_getValidatorsByBlockNumber","params":["latest"], "id":1}' http://127.0.0.1:8545
```

Vote for a Validator:
```
curl -X POST --data '{"jsonrpc":"2.0","method":"ibft_proposeValidatorVote","params":["0xvalidator's Address here", true], "id":1}' http://127.0.0.1:8545
```

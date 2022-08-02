# Day 2
## solidity
### Visibility
- `public` - any contract and account can call
- `private` - only inside the contract that defines the function
- `internal`- only inside contract that inherits an internal function
- `external` - only other contracts and accounts can call

### Mapping
```
    mapping(keyType => valueType)
```
```solidity
// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;
contract MyToken {
    // mapper
    mapping(string => string) subject;
    string name;

    constructor() {
        name = "keng";
    }

    function getName() public view returns (string memory) {
        return name;
    }

    function setName(string memory _name) public {
        name = _name;
    }
}
```

## Foundry
### create project
```bash
forge init hello_foundry
```
### test
```bash
forge test
```
### build
```bash
forge build
```
### write test
- prefix `test..`
- `setUp()` An optional function invoked before each test case is run
```solidity
function setUp() public {
    name = "test";
}
```
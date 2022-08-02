// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.13;

contract Contract {
    string name;

    constructor() {
        name = "keng";
    }

    function getName() public view returns (string memory) {
        return name;
    }
}

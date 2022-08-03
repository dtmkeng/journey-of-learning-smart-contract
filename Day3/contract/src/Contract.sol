// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.13;


contract User {
    receive() external payable {}
}

contract Sender {
    address payable public owner;
    User user;

    constructor () {
        user = new User();
    }
    function send() public {
        // send 1 ether from this contract to user contract
        payable(address(user)).transfer(1 ether);
    }
}

// interface
interface Student {
    function getName() external view returns (string memory);
}

contract Contract {
    address private StudentAddress = 0x5C69bEe701ef814a2B6a3EDD4B1652CB9cc5aA6f;
    function getName() public view returns (string memory) {
        string memory name = Student(StudentAddress).getName();
        return name;
    }
}

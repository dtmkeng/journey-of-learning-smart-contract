// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.13;

import "forge-std/Test.sol";

import "src/Contract.sol";


contract Safe {
    receive() external payable {}

    function withdraw() external {
        payable(msg.sender).transfer(address(this).balance);
    }
}

contract TestContract is Test {
    receive() external payable {}

    Safe safe;
    Contract c;

    function setUp() public {
        c = new Contract();
        safe = new Safe();
    }

    function testBar() public {
        assertEq(uint256(1), uint256(1), "ok");
    }

    function testFoo(uint256 x) public {
        vm.assume(x < type(uint128).max);
        assertEq(x + x, x * 2);
    }

    function testGetName() public {
        string memory name = c.getName();
        assertEq("keng", name);
    }

    function testWithdraw() public {
        // transfer 1 ether to safe
        payable(address(safe)).transfer(1 ether);
        // get balance this contract after transfer
        uint256 preBalance = address(this).balance;
        // call withdraw function should with draw all ether to this contract
        safe.withdraw();
        // get balance after withdraw
        uint256 postBalance = address(this).balance;
        // check balance
        assertEq(preBalance + 1 ether, postBalance);
    }
}

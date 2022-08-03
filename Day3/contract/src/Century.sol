// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.13;

contract Century {
    function century(int year) public pure returns (int) {
        return int8(year/100) + int8((year%100 == 0)?0:1);
    }
}
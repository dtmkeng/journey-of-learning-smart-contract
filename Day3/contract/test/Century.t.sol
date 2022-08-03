// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "src/Century.sol";

contract TestCentury is Test {
    Century c;
    function setUp() public {
        c = new Century();
    }

    function testItShouldReturn10WhenYearIs1000() public {
        int cen = c.century(1000);
        assertEq(10, cen);
    }

    function testItShouldReturn11WhenYearIs1001() public {
        int cen = c.century(1001);
        assertEq(11, cen);
    }

    function testItShouldReturn17WhenYearIs1601() public {
        int cen = c.century(1601);
        assertEq(17, cen);
    }

    function testItShouldReturn1WhenYearLessThan100() public {
        int cen = c.century(98);
        assertEq(1, cen);
    }
}

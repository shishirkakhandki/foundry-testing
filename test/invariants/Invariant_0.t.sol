// SPDX-License-Identifier: MIT

pragma solidity 0.8.20;

contract IntroInvariant {

    bool public flag;

    function func1() external {}
    function func2() external {}
    function func3() external {}
    function func4() external {}
    function func5() external {
        flag = true;
    }

}

import "forge-std/Test.sol";

contract IntroInvariantTest is Test {
    IntroInvariant private target;

    function setUp() public{
       target = new IntroInvariant();
    }

    function invariant_flag_is_always_false() public{
         assertEq(target.flag(), false);
    }


}
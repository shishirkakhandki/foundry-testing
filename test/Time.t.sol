// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {Auction} from "../src/Time.sol";

contract TimeTest is Test {
    Auction public auction;
    uint public startTime;

    function setUp() public {
        auction = new Auction();     
        startTime = block.timestamp;
    }

    function testBid() public {
       vm.expectRevert(bytes("cannot bid"));
       vm.warp(block.timestamp+ 0.5 days );
       auction.bid();
    }
}

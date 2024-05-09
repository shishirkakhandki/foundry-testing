// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {Auction} from "../src/Time.sol";

contract TimeTest is Test {
    Auction public auction;
    uint256 public startTime;

    function setUp() public {
        auction = new Auction();
        startTime = block.timestamp;
    }

    function testBid() public {
        vm.expectRevert(bytes("cannot bid"));
        vm.warp(block.timestamp + 0.5 days);
        auction.bid();
    }

    // function testTimestamp() public {
    //     uint256 t = block.timestamp;
    //     skip(100);
    //     assertEq(block.timestamp == t + 100);
    // }
}

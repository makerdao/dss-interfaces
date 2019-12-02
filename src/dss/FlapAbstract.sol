pragma solidity ^0.5.12;

import { VatAbstract } from "./VatAbstract.sol";
import { DSTokenAbstract } from "../dapp/DSTokenAbstract.sol";

// https://github.com/makerdao/dss/blob/master/src/flap.sol
contract FlapAbstract {
    //mapping (address => uint256) public wards;
    function wards(address) public returns (uint256);
    function rely(address) external;
    function deny(address) external;
    struct Bid {
        uint256 bid;
        uint256 lot;
        address guy;  // high bidder
        uint48  tic;  // expiry time
        uint48  end;
    }
    // mapping (uint256 => Bid) public bids;
    function bids(uint256) public returns (uint256);
    // VatAbstract public vat;
    function vat() public returns (VatAbstract);
    // TokenAbstract public gem;
    function gem() public returns (DSTokenAbstract);
    // uint256 public ONE;
    function ONE() public returns (uint256);
    // uint256 public beg;
    function beg() public returns (uint256);
    // uint48 public ttl;
    function ttl() public returns (uint48);
    // uint48 public tau;
    function tau() public returns (uint48);
    // uint256 public kicks;
    function kicks() public returns (uint256);
    // uint256 public live;
    function live() public returns (uint256);
    event Kick(uint256, uint256, uint256);
    function file(bytes32, uint256) external;
    function kick(uint256, uint256) external returns (uint256);
    function tick(uint256) external;
    function tend(uint256, uint256, uint256) external;
    function deal(uint256) external;
    function cage(uint256) external;
    function yank(uint256) external;
}
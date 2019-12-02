pragma solidity ^0.5.12;

import { VatAbstract } from "./VatAbstract.sol";

// https://github.com/makerdao/dss/blob/master/src/flip.sol
contract FlipAbstract {
    // mapping (address => uint) public wards;
    function wards(address) public returns (uint256);
    function rely(address usr) external;
    function deny(address usr) external;
    struct Bid {
        uint256 bid;
        uint256 lot;
        address guy;  // high bidder
        uint48  tic;  // expiry time
        uint48  end;
        address usr;
        address gal;
        uint256 tab;
    }
    // mapping (uint => Bid) public bids;
    function bids(uint256) public returns (uint256, uint256, address, uint48, uint48, address, address, uint256);
    // VatAbstract public vat;
    function vat() public returns (VatAbstract);
    // bytes32 public ilk;
    function ilk() public returns (bytes32);
    // uint256 constant ONE;
    function ONE() public returns (uint256);
    // uint256 public beg;
    function beg() public returns (uint256);
    // uint48  public ttl;
    function ttl() public returns (uint48);
    // uint48  public tau;
    function tau() public returns (uint48);
    // uint256 public kicks;
    function kicks() public returns (uint256);
    event Kick(uint256, uint256, uint256, uint256, address, address);
    function file(bytes32, uint256) external;
    function kick(address, address, uint256, uint256, uint256) public returns (uint256);
    function tick(uint256) external;
    function tend(uint256, uint256, uint256) external;
    function dent(uint256, uint256, uint256) external;
    function deal(uint256) external;
    function yank(uint256) external;
}
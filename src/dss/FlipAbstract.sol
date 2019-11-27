pragma solidity ^0.5.12;

import { VatAbstract } from "./VatAbstract.sol";

// https://github.com/makerdao/dss/blob/master/src/flip.sol
contract FlipAbstract {
    mapping (address => uint) public wards;
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
    mapping (uint => Bid) public bids;
    VatAbstract public vat;
    bytes32 public ilk;
    uint256 constant ONE;
    uint256 public beg;
    uint48  public ttl;
    uint48  public tau;
    uint256 public kicks = 0;
    event Kick(uint256, uint256, uint256, uint256, address, address);
    function file(bytes32, uint256) external;
    function kick(address, address, uint256, uint256, uint256) public returns (uint256);
    function tick(uint256) external;
    function tend(uint256, uint256, uint256) external;
    function dent(uint256, uint256, uint256) external;
    function deal(uint256) external;
    function yank(uint256) external;
}
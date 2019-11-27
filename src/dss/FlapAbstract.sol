pragma solidity ^0.5.12;

import { VatAbstract } from "./VatAbstract.sol";
import { GemAbstract } from "../dapp/GemAbstract.sol";

// https://github.com/makerdao/dss/blob/master/src/flap.sol
contract FlapAbstract {
    mapping (address => uint256) public wards;
    function rely(address usr) external;
    function deny(address usr) external;
    struct Bid {
        uint256 bid;
        uint256 lot;
        address guy;  // high bidder
        uint48  tic;  // expiry time
        uint48  end;
    }
    mapping (uint256 => Bid) public bids;
    VatAbstract public vat;
    GemAbstract public gem;
    uint256 public ONE;
    uint256 public beg;
    uint48 public ttl;
    uint48 public tau;
    uint256 public kicks;
    uint256 public live;
    event Kick(uint256, uint256, uint256);
    function file(bytes32, uint256) external;
    function kick(uint256, uint256) external returns (uint256);
    function tick(uint256) external;
    function tend(uint256, uint256, uint256) external;
    function deal(uint256) external;
    function cage(uint256) external;
    function yank(uint256) external;
}
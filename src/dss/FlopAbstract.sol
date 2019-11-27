pragma solidity ^0.5.12;

import { VatAbstract } from "./VatAbstract.sol";
import { TokenAbstract } from "../dapp/TokenAbstract.sol";

// https://github.com/makerdao/dss/blob/master/src/flop.sol
contract FlopAbstract {
    mapping (address => uint256) public wards;
    function rely(address) external;
    function deny(address) external;
    struct Bid {
        uint256 bid;
        uint256 lot;
        address guy;  // high bidder
        uint48  tic;  // expiry time
        uint48  end;
    }
    mapping (uint => Bid) public bids;
    VatAbstract public vat;
    TokenAbstract public gem;
    uint256 public ONE;
    uint256 public beg;  // 5% minimum bid increase
    uint256 public pad;  // 50% lot increase for tick
    uint48 public ttl;  // 3 hours bid lifetime
    uint48 public tau;   // 2 days total auction length
    uint256 public kicks;
    uint256 public live;
    address public vow;
    event Kick(uint256, uint256, uint256, address);
    function file(bytes32, uint256) external;
    function kick(address, uint256, uint256) external returns (uint256);
    function tick(uint256) external;
    function dent(uint256, uint256, uint256) external;
    function deal(uint256) external;
    function cage() external;
    function yank(uint256) external;
}
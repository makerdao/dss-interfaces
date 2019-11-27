pragma solidity ^0.5.12;

import { FlopAbstract } from "./dss/FlopAbstract.sol";
import { FlapAbstract } from "./dss/FlapAbstract.sol";
import { VatAbstract } from "./dss/VatAbstract.sol";

// https://github.com/makerdao/dss/blob/master/src/vow.sol
contract VowLike {
    mapping (address => uint) public wards;
    function rely(address usr) external;
    function deny(address usr) external;
    VatAbstract public vat;
    FlapAbstract public flapper;
    FlopAbstract public flopper;
    mapping (uint256 => uint256) public sin; // debt queue
    uint256 public Sin;   // queued debt          [rad]
    uint256 public Ash;
    uint256 public wait;  // flop delay
    uint256 public dump;  // flop initial lot size  [wad]
    uint256 public sump;  // flop fixed bid size    [rad]
    uint256 public bump;  // flap fixed lot size    [rad]
    uint256 public hump;  // surplus buffer       [rad]
    uint256 public live;
    function file(bytes32, uint256) external;
    function file(bytes32, address) external;
    function fess(uint256) external;
    function flog(uint256) external;
    function heal(uint256) external;
    function kiss(uint256) external;
    function flop() external returns (uint256);
    function flap() external returns (uint256);
    function cage() external;
}
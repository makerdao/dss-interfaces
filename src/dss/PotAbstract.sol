pragma solidity ^0.5.12;

import { VatAbstract } from "./VatAbstract.sol";

// https://github.com/makerdao/dss/blob/master/src/pot.sol
contract PotAbstract {
    // mapping (address => uint256) public wards;
    function wards(address) public returns (uint256);
    function rely(address) external;
    function deny(address) external;
    // mapping (address => uint256) public pie;  // user Savings Dai
    function pie(address) public returns (uint256);
    // uint256 public Pie;  // total Savings Dai
    function Pie() public returns (uint256);
    // uint256 public dsr;  // the Dai Savings Rate
    function dsr() public returns (uint256);
    // uint256 public chi;  // the Rate Accumulator
    function chi() public returns (uint256);
    // VatAbstract public vat;  // CDP engine
    function vat() public returns (VatAbstract);
    // address public vow;  // debt engine
    function vow() public returns (address);
    // uint256 public rho;  // time of last drip
    function rho() public returns (uint256);
    // uint256 public live;  // Access Flag
    function live() public returns (uint256);
    function file(bytes32, uint256) external;
    function file(bytes32, address) external;
    function cage() external;
    function drip() external returns (uint256);
    function join(uint256) external;
    function exit(uint256) external;
}
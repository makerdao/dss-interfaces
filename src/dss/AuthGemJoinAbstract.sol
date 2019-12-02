pragma solidity ^0.5.12;

import { VatAbstract } from "./VatAbstract.sol";
import { TokenAbstract } from "../dapp/TokenAbstract.sol";

// https://github.com/makerdao/dss-deploy/blob/master/src/join.sol
contract AuthGemJoinAbstract {
    // VatAbstract public vat;
    function vat() public returns (VatAbstract);
    // bytes32 public ilk;
    function ilk() public returns (bytes32);
    // TokenAbstract public gem;
    function gem() public returns (TokenAbstract);
    // uint256 public dec;
    function dec() public returns (uint256);
    // uint256 public live;  // Access Flag
    function live() public returns (uint256);
    // mapping (address => uint) public wards;
    function wards(address) public returns (uint256);
    function rely(address usr) public;
    function deny(address usr) public;
    function cage() external;
    function join(address, uint256) public;
    function exit(address, uint256) public;
}
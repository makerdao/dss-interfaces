pragma solidity ^0.5.12;

import { VatAbstract } from "./VatAbstract.sol";
import { TokenAbstract } from "../dapp/TokenAbstract.sol";

// https://github.com/makerdao/dss-deploy/blob/master/src/join.sol
contract AuthGemJoinAbstract {
    VatAbstract public vat;
    bytes32 public ilk;
    TokenAbstract public gem;
    uint256 public dec;
    uint256 public live;  // Access Flag
    mapping (address => uint) public wards;
    function rely(address usr) public;
    function deny(address usr) public;
    function cage() external;
    function join(address, uint256) public;
    function exit(address, uint256) public;
}
pragma solidity ^0.5.12;

import { VatAbstract } from "./VatAbstract.sol";
import { GemAbstract } from "../ERC/GemAbstract.sol";

// https://github.com/makerdao/dss/blob/master/src/join.sol
contract GemJoinAbstract {
    // mapping (address => uint) public wards;
    function wards(address) public returns (uint256);
    function rely(address) external;
    function deny(address) external;
    // VatAbstract public vat;
    function vat() public returns (VatAbstract);
    // bytes32 public ilk;
    function ilk() public returns (bytes32);
    // GemAbstract public gem;
    function gem() public returns (GemAbstract);
    // uint public dec;
    function dec() public returns (uint256);
    // uint public live;  // Access Flag
    function live() public returns (uint256);
    function cage() external;
    function join(address, uint256) external;
    function exit(address, uint256) external;
}
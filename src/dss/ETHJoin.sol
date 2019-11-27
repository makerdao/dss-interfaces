pragma solidity ^0.5.12;

import { VatAbstract } from "./VatAbstract.sol";

// https://github.com/makerdao/dss/blob/master/src/join.sol
contract ETHJoinAbstract {
    mapping (address => uint) public wards;
    function rely(address usr) external;
    function deny(address usr) external;
    VatAbstract public vat;
    bytes32 public ilk;
    uint256 public live; // Access Flag
    function cage() external;
    function join(address) external payable;
    function exit(address, uint256) external;
}
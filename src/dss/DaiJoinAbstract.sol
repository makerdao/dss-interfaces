pragma solidity ^0.5.12;

import { VatAbstract } from "./VatAbstract.sol";
import { DaiAbstract } from "./DaiAbstract.sol";

// https://github.com/makerdao/dss/blob/master/src/join.sol
contract DaiJoinAbstract {
    mapping (address => uint) public wards;
    function rely(address usr) external;
    function deny(address usr) external;
    VatAbstract public vat;
    DaiAbstract public dai;
    uint256 public live; // Access Flag
    function cage() external;
    uint256 public ONE;
    function join(address, uint256) external;
    function exit(address, uint256) external;
}
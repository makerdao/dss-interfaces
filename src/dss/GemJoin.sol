pragma solidity ^0.5.12;

import { VatAbstract } from "./VatAbstract.sol";
import { GemAbstract } from "../ERC/GemAbstract.sol";

// https://github.com/makerdao/dss/blob/master/src/join.sol
contract GemJoinAbstract {
    mapping (address => uint) public wards;
    function rely(address usr) external;
    function deny(address usr) external;
    VatAbstract public vat;
    bytes32 public ilk;
    GemAbstract public gem;
    uint public dec;
    uint public live;  // Access Flag
    function cage() external;
    function join(address, uint256) external;
    function exit(address, uint256) external;
}
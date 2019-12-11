pragma solidity ^0.5.12;

import { VatAbstract } from "./VatAbstract.sol";
import { DaiAbstract } from "./DaiAbstract.sol";

// https://github.com/makerdao/dss/blob/master/src/join.sol
contract DaiJoinAbstract {
    // mapping (address => uint) public wards;
    function wards(address) public view returns (uint256);
    function rely(address usr) external;
    function deny(address usr) external;
    // VatAbstract public vat;
    function vat() public view returns (VatAbstract);
    // DaiAbstract public dai;
    function dai() public view returns (DaiAbstract);
    // uint256 public live; // Access Flag
    function live() public view returns (uint256);
    function cage() external;
    // uint256 public ONE;
    function ONE() public view returns (uint256);
    function join(address, uint256) external;
    function exit(address, uint256) external;
}
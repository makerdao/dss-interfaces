pragma solidity ^0.5.12;

import { VatAbstract } from "./VatAbstract.sol";
import { VowAbstract } from "./VowAbstract.sol";

// https://github.com/makerdao/dss/blob/master/src/cat.sol
contract CatAbstract {
    // mapping (address => uint) public wards;
    function wards(address) public returns (uint256);
    function rely(address) external;
    function deny(address) external;
    struct Ilk {
        address flip;  // Liquidator
        uint256 chop;  // Liquidation Penalty   [ray]
        uint256 lump;  // Liquidation Quantity  [wad]
    }
    // mapping (bytes32 => Ilk) public ilks;
    function ilks(bytes32) public returns (address, uint256, uint256);
    // uint256 public live;
    function live() public returns (uint256);
    // VatAbstract public vat;
    function vat() public returns (VatAbstract);
    // VowAbstract public vow;
    function vow() public returns (VowAbstract);
    event Bite(bytes32, address, uint256, uint256, uint256, address, uint256);
    // uint256 public ONE;
    function ONE() public returns (uint256);
    function file(bytes32, address) external;
    function file(bytes32, bytes32, uint256) external;
    function file(bytes32, bytes32, address) external;
    function bite(bytes32, address) external returns (uint256);
    function cage() external;
}
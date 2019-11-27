pragma solidity ^0.5.12;

import { VatAbstract } from "./VatAbstract.sol";
import { VowAbstract } from "./VowAbstract.sol";

// https://github.com/makerdao/dss/blob/master/src/cat.sol
contract CatAbstract {
    mapping (address => uint) public wards;
    function rely(address usr) external;
    function deny(address usr) external;
    struct Ilk {
        address flip;  // Liquidator
        uint256 chop;  // Liquidation Penalty   [ray]
        uint256 lump;  // Liquidation Quantity  [wad]
    }
    mapping (bytes32 => Ilk) public ilks;
    uint256 public live;
    VatAbstract public vat;
    VowAbstract public vow;
    event Bite(bytes32, address, uint256, uint256, uint256, address, uint256);
    uint256 public ONE;
    function file(bytes32, address) external;
    function file(bytes32, bytes32, uint256) external;
    function file(bytes32, bytes32, address) external;
    function bite(bytes32, address) external returns (uint256);
    function cage() external;
}
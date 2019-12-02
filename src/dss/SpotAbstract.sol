pragma solidity ^0.5.12;

import { VatAbstract } from "./VatAbstract.sol";
import { PipAbstract } from "./PipAbstract.sol";

// https://github.com/makerdao/dss/blob/master/src/spot.sol
contract SpotAbstract {
    // mapping (address => uint) public wards;
    function wards(address) public returns (uint256);
    function rely(address) external;
    function deny(address) external;
    struct Ilk {
        PipAbstract pip;
        uint256 mat;
    }
    // mapping (bytes32 => Ilk) public ilks;
    function ilks(bytes32) public returns (PipAbstract, uint256);
    // VatAbstract public vat;
    function vat() public returns (VatAbstract);
    // uint256 public par; // ref per dai
    function par() public returns (uint256);
    // uint256 public live;
    function live() public returns (uint256);
    event Poke(bytes32, bytes32, uint256);
    // uint256 public ONE;
    function ONE() public returns (uint256);
    function file(bytes32, bytes32, address) external;
    function file(bytes32, uint256) external;
    function file(bytes32, bytes32, uint256) external;
    function poke(bytes32) external;
    function cage() external;
}
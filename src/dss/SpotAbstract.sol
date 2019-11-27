pragma solidity ^0.5.12;

import { VatAbstract } from "./VatAbstract.sol";
import { PipAbstract } from "../dapp/PipAbstract.sol";

// https://github.com/makerdao/dss/blob/master/src/spot.sol
contract SpotAbstract {
    mapping (address => uint) public wards;
    function rely(address guy) external;
    function deny(address guy) external;
    struct Ilk {
        PipAbstract pip;
        uint256 mat;
    }
    mapping (bytes32 => Ilk) public ilks;
    VatAbstract public vat;
    uint256 public par; // ref per dai
    uint256 public live;
    event Poke(bytes32, bytes32, uint256);
    uint256 public ONE;
    function file(bytes32, bytes32, address) external;
    function file(bytes32, uint256) external;
    function file(bytes32, bytes32, uint256) external;
    function poke(bytes32) external;
    function cage() external;
}
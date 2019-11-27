pragma solidity ^0.5.12;

import { VatAbstract } from "./VatAbstract.sol";
import { CatAbstract } from "./CatAbstract.sol";
import { VowAbstract } from "./VowAbstract.sol";
import { PotAbstract } from "./PotAbstract.sol";
import { SpotAbstract } from "./SpotAbstract.sol";

// https://github.com/makerdao/dss/blob/master/src/end.sol
contract EndAbstract {
    mapping (address => uint) public wards;
    function rely(address guy) external;
    function deny(address guy) external;
    VatAbstract public vat;
    CatAbstract public cat;
    VowAbstract public vow;
    PotAbstract public pot;
    SpotAbstract public spot;
    uint256  public live;  // cage flag
    uint256  public when;  // time of cage
    uint256  public wait;  // processing cooldown length
    uint256  public debt;  // total outstanding dai following processing [rad]
    mapping (bytes32 => uint256) public tag;  // cage price           [ray]
    mapping (bytes32 => uint256) public gap;  // collateral shortfall [wad]
    mapping (bytes32 => uint256) public Art;  // total debt per ilk   [wad]
    mapping (bytes32 => uint256) public fix;  // final cash price     [ray]
    mapping (address => uint256) public bag;  // [wad]
    mapping (bytes32 => mapping (address => uint256)) public out;  // [wad]
    uint256 public WAD;
    uint256 public RAY;
    function file(bytes32, address) external;
    function file(bytes32, uint256) external;
    function cage() external;
    function cage(bytes32) external;
    function skip(bytes32, uint256) external;
    function skim(bytes32, address) external;
    function free(bytes32) external;
    function thaw() external;
    function flow(bytes32) external;
    function pack(uint256) external;
    function cash(bytes32, uint256) external;
}
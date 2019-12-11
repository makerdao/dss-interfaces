pragma solidity ^0.5.12;

import { VatAbstract } from "./VatAbstract.sol";
import { CatAbstract } from "./CatAbstract.sol";
import { VowAbstract } from "./VowAbstract.sol";
import { PotAbstract } from "./PotAbstract.sol";
import { SpotAbstract } from "./SpotAbstract.sol";

// https://github.com/makerdao/dss/blob/master/src/end.sol
contract EndAbstract {
    // mapping (address => uint) public wards;
    function wards(address) public view returns (uint256);
    function rely(address) external;
    function deny(address) external;
    // VatAbstract public vat;
    function vat() public view returns (VatAbstract);
    // CatAbstract public cat;
    function cat() public view returns (CatAbstract);
    // VowAbstract public vow;
    function vow() public view returns (VowAbstract);
    // PotAbstract public pot;
    function pot() public view returns (PotAbstract);
    // SpotAbstract public spot;
    function spot() public view returns (SpotAbstract);
    // uint256  public live;  // cage flag
    function live() public view returns (uint256);
    // uint256  public when;  // time of cage
    function when() public view returns (uint256);
    //uint256  public wait;  // processing cooldown length
    function wait() public view returns (uint256);
    // uint256  public debt;  // total outstanding dai following processing [rad]
    function debt() public view returns (uint256);
    // mapping (bytes32 => uint256) public tag;  // cage price           [ray]
    function tag(bytes32) public view returns (uint256);
    // mapping (bytes32 => uint256) public gap;  // collateral shortfall [wad]
    function gap(bytes32) public view returns (uint256);
    // mapping (bytes32 => uint256) public Art;  // total debt per ilk   [wad]
    function Art(bytes32) public view returns (uint256);
    // mapping (bytes32 => uint256) public fix;  // final cash price     [ray]
    function fix(bytes32) public view returns (uint256);
    // mapping (address => uint256) public bag;  // [wad]
    function bag(address) public view returns (uint256);
    // mapping (bytes32 => mapping (address => uint256)) public out;  // [wad]
    function out(bytes32, address) public view returns (uint256);
    // uint256 public WAD;
    function WAD() public view returns (uint256);
    // uint256 public RAY;
    function RAY() public view returns (uint256);
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
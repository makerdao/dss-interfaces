pragma solidity ^0.5.12;

import { GemAbstract } from "../ERC/GemAbstract.sol";
import { EndAbstract } from "./EndAbstract.sol";

// https://github.com/makerdao/esm/blob/master/src/ESM.sol
contract ESMAbstract {
    // GemLike public gem; // collateral
    function gem() public view returns (GemAbstract);
    // EndLike public end; // cage module
    function end() public view returns (EndAbstract);
    // address public pit; // burner
    function pit() public view returns (address);
    // uint256 public min; // threshold
    function min() public view returns (uint256);
    // uint256 public fired;
    function fired() public view returns (uint256);
    // mapping(address => uint256) public sum; // per-address balance
    function sum(address) public view returns (address);
    // uint256 public Sum; // total balance
    function Sum() public view returns (uint256);
    function fire() external;
    function join(uint256) external;
}

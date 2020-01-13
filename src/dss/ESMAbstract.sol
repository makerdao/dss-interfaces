pragma solidity ^0.5.12;

// https://github.com/makerdao/esm/blob/master/src/ESM.sol
contract ESMAbstract {
    // GemLike public gem; // collateral
    // gem return address will conform to GemAbstract
    function gem() public view returns (address);
    // EndLike public end; // cage module
    // end return address will conform to EndAbstract
    function end() public view returns (address);
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

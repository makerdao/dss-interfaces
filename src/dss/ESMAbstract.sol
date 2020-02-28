pragma solidity ^0.5.12;

// https://github.com/makerdao/esm/blob/master/src/ESM.sol
contract ESMAbstract {
    function gem() public view returns (address);
    function end() public view returns (address);
    function pit() public view returns (address);
    function min() public view returns (uint256);
    function fired() public view returns (uint256);
    function sum(address) public view returns (address);
    function Sum() public view returns (uint256);
    function fire() external;
    function join(uint256) external;
}

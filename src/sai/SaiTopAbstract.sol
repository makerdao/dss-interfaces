pragma solidity ^0.5.12;

// https://github.com/makerdao/sai/blob/master/src/top.sol
contract SaiTopAbstract {
    function vox() public view returns (address);
    function tub() public view returns (address);
    function tap() public view returns (address);
    function sai() public view returns (address);
    function sin() public view returns (address);
    function skr() public view returns (address);
    function gem() public view returns (address);
    function fix() public view returns (uint256);
    function fit() public view returns (uint256);
    function caged() public view returns (uint256);
    function cooldown() public view returns (uint256);
    function era() public view returns (uint256);
    function cage() public;
    function flow() public;
    function setCooldown(uint256) public;
    function authority() public view returns (address);
    function owner() public view returns (address);
    function setOwner(address) public;
    function setAuthority(address) public;
}

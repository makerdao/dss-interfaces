pragma solidity ^0.5.12;

// https://github.com/makerdao/sai/blob/master/src/tap.sol
contract SaiTapAbstract {
    function sai() public view returns (address);
    function sin() public view returns (address);
    function skr() public view returns (address);
    function vox() public view returns (address);
    function tub() public view returns (address);
    function gap() public view returns (uint256);
    function off() public view returns (bool);
    function fix() public view returns (uint256);
    function joy() public view returns (uint256);
    function woe() public view returns (uint256);
    function fog() public view returns (uint256);
    function mold(bytes32, uint256) public;
    function heal() public;
    function s2s() public returns (uint256);
    function bid(uint256) public returns (uint256);
    function ask(uint256) public returns (uint256);
    function bust(uint256) public;
    function boom(uint256) public;
    function cage(uint256) public;
    function cash(uint256) public;
    function mock(uint256) public;
    function vent() public;
    function authority() public view returns (address);
    function owner() public view returns (address);
    function setOwner(address) public;
    function setAuthority(address) public;
}

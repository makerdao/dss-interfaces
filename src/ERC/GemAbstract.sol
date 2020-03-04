pragma solidity ^0.5.12;

// A base ERC-20 abstract class
// https://eips.ethereum.org/EIPS/eip-20
contract GemAbstract {
    function totalSupply() public view returns (uint256);
    function balanceOf(address) public view returns (uint256);
    function allowance(address, address) public view returns (uint256);
    function approve(address, uint256) public returns (bool);
    function transfer(address, uint256) public returns (bool);
    function transferFrom(address, address, uint256) public returns (bool);
}

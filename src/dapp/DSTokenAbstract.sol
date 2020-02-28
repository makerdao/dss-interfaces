pragma solidity ^0.5.12;

// https://github.com/dapphub/ds-token/blob/master/src/token.sol
contract DSTokenAbstract {
    function name() public view returns (bytes32);
    function symbol() public view returns (bytes32);
    function decimals() public view returns (uint256);
    function totalSupply() external view returns (uint256);
    function balanceOf(address) external view returns (uint256);
    function transfer(address, uint256) external returns (bool);
    function allowance(address, address) external view returns (uint256);
    function approve(address, uint256) external returns (bool);
    function approve(address) public returns (bool);
    function transferFrom(address, address, uint256) external returns (bool);
    function push(address, uint256) public;
    function pull(address, uint256) public;
    function move(address, address, uint256) public;
    function mint(uint256) public;
    function mint(address,uint) public;
    function burn(uint256) public;
    function burn(address,uint) public;
    function setName(bytes32) public;
    function authority() public view returns (address);
    function owner() public view returns (address);
    function setOwner(address) public;
    function setAuthority(address) public;
}

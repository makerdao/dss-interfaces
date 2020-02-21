pragma solidity ^0.5.12;

// MKR Token adheres to the DSToken interface
// https://github.com/dapphub/ds-token/blob/master/src/token.sol
contract DSTokenAbstract {
    // bytes32 public name;
    function name() public view returns (bytes32);
    // bytes32 public symbol;
    function symbol() public view returns (bytes32);
    // uint256 public decimals;
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
    event Transfer(address, address, uint256);
    event Approval(address, address, uint256);
    // DSToken Inherits DSAuth
    // DSAuthority  public  authority;
    function authority() public view returns (DSAuthorityAbstract);
    // address      public  owner;
    function owner() public view returns (address);
    function setOwner(address) public;
    function setAuthority(DSAuthorityAbstract) public;
}

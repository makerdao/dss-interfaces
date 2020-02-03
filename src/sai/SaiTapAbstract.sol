pragma solidity ^0.5.12;

// https://github.com/makerdao/sai/blob/master/src/tap.sol
contract SaiTapAbstract {
    // DSToken  public  sai;
    function sai() public view returns (address);
    // DSToken  public  sin;
    function sin() public view returns (address);
    // DSToken  public  skr;
    function skr() public view returns (address);
    // SaiVox   public  vox;
    function vox() public view returns (address);
    // SaiTub   public  tub;
    function tub() public view returns (address);
    function gap() public view returns (uint256);       // Boom-Bust Spread
    function off() public view returns (bool);          // Cage flag
    function fix() public view returns (uint256);       // Cage price
    function joy() public view returns (uint256);  // Surplus
    function woe() public view returns (uint256);  // Bad debt
    function fog() public view returns (uint256);  // Collateral pending liquidation
    function mold(bytes32, uint256) public;
    function heal() public;                        // Cancel debt
    function s2s() public returns (uint256);       // Feed price (sai per skr)
    function bid(uint256) public returns (uint256);// Boom price (sai per skr)
    function ask(uint256) public returns (uint256);// Bust price (sai per skr)
    function bust(uint256) public;
    function boom(uint256) public;
    function cage(uint256) public;
    function cash(uint256) public;
    function mock(uint256) public;
    function vent() public;
    // ds-thing
    // DSAuthority  public  authority;
    function authority() public view returns (address);
    // address      public  owner;
    function owner() public view returns (address);
    function setOwner(address) public;
    function setAuthority(address) public;
}

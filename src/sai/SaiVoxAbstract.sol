pragma solidity ^0.5.12;

// https://github.com/makerdao/sai/blob/master/src/vox.sol
contract SaiVoxAbstract {
    function fix() public view returns (uint256);
    function how() public view returns (uint256);
    function tau() public view returns (uint256);
    function era() public view returns (uint256);
    function mold(bytes32, uint256) public;
    function par() public returns (uint256);  // Dai Target Price (ref per dai)
    function way() public returns (uint256);
    function tell(uint256) public;
    function tune(uint256) public;
    function prod() public;
    // ds-thing
    // DSAuthority  public  authority;
    function authority() public view returns (address);
    // address      public  owner;
    function owner() public view returns (address);
    function setOwner(address) public;
    function setAuthority(address) public;
}

pragma solidity ^0.5.12;

// https://github.com/makerdao/sai/blob/master/src/vox.sol
contract SaiVoxAbstract {
    function fix() public view returns (uint256);
    function how() public view returns (uint256);
    function tau() public view returns (uint256);
    function era() public view returns (uint256);
    function mold(bytes32, uint256) public;
    function par() public returns (uint256);
    function way() public returns (uint256);
    function tell(uint256) public;
    function tune(uint256) public;
    function prod() public;
    function authority() public view returns (address);
    function owner() public view returns (address);
    function setOwner(address) public;
    function setAuthority(address) public;
}

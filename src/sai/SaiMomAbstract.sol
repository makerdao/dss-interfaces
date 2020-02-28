pragma solidity ^0.5.12;

// https://github.com/makerdao/sai/blob/master/src/mom.sol
contract SaiMomAbstract {
    function tub() public view returns (address);
    function tap() public view returns (address);
    function vox() public view returns (address);
    function setCap(uint256) public;
    function setMat(uint256) public;
    function setTax(uint256) public;
    function setFee(uint256) public;
    function setAxe(uint256) public;
    function setTubGap(uint256) public;
    function setPip(address) public;
    function setPep(address) public;
    function setVox(address) public;
    function setTapGap(uint256) public;
    function setWay(uint256) public;
    function setHow(uint256) public;
    function authority() public view returns (address);
    function owner() public view returns (address);
    function setOwner(address) public;
    function setAuthority(address) public;
}

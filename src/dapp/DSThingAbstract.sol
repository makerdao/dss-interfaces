pragma solidity ^0.5.12;

// https://github.com/dapphub/ds-thing
// DS-Thing inherits from DS-Auth, DS-Note, and DS-Math.
//   Only DS-Auth contains public functions.
contract DSThingAbstract {
    // DSAuthority  public  authority;
    function authority() public view returns (address);
    // address      public  owner;
    function owner() public view returns (address);
    function setOwner(address) public;
    function setAuthority(address) public;
}

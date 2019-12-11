pragma solidity ^0.5.12;

// https://github.com/dapphub/ds-auth
contract DSAuthorityAbstract {
    function canCall(address, address, bytes4) public view returns (bool);
}

contract DSAuthEventsAbstract {
    event LogSetAuthority (address indexed);
    event LogSetOwner (address indexed);
}

contract DSAuthAbstract is DSAuthEventsAbstract {
    // DSAuthority  public  authority;
    function authority() public view returns (DSAuthorityAbstract);
    // address      public  owner;
    function owner() public view returns (address);
    function setOwner(address) public;
    function setAuthority(DSAuthorityAbstract) public;
}

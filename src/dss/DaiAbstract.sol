pragma solidity ^0.5.12;

// https://github.com/makerdao/dss/blob/master/src/dai.sol
contract DaiAbstract {
    function wards(address) public view returns (uint256);
    function rely(address) external;
    function deny(address) external;
    function name() public view returns (string memory);
    function symbol() public view returns (string memory);
    function version() public view returns (string memory);
    function decimals() public view returns (uint8);
    function totalSupply() public view returns (uint256);
    function balanceOf(address) public view returns (uint256);
    function allowance(address, address) public view returns (uint256);
    function nonces(address) public view returns (uint256);
    function DOMAIN_SEPARATOR() public view returns (bytes32);
    function PERMIT_TYPEHASH() public view returns (bytes32);
    function transfer(address, uint256) external;
    function transferFrom(address, address, uint256) public returns (bool);
    function mint(address, uint256) external;
    function burn(address, uint256) external;
    function approve(address, uint256) external returns (bool);
    function push(address, uint256) external;
    function pull(address, uint256) external;
    function move(address, address, uint256) external;
    function permit(address, address, uint256, uint256, bool, uint8, bytes32, bytes32) external;
}

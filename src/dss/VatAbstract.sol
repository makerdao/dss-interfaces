pragma solidity ^0.5.12;

// https://github.com/makerdao/dss/blob/master/src/vat.sol
contract VatAbstract {
    function wards(address) public view returns (uint256);
    function rely(address) external;
    function deny(address) external;
    function can(address, address) public view returns (uint256);
    function hope(address) external;
    function nope(address) external;
    function ilks(bytes32) external view returns (uint256, uint256, uint256, uint256, uint256);
    function urns(bytes32, address) public view returns (uint256, uint256);
    function gem(bytes32, address) public view returns (uint256);
    function dai(address) public view returns (uint256);
    function sin(address) public view returns (uint256);
    function debt() public view returns (uint256);
    function vice() public view returns (uint256);
    function Line() public view returns (uint256);
    function live() public view returns (uint256);
    function init(bytes32) external;
    function file(bytes32, uint256) external;
    function file(bytes32, bytes32, uint256) external;
    function cage() external;
    function slip(bytes32, address, int256) external;
    function flux(bytes32, address, address, uint256) external;
    function move(address, address, uint256) external;
    function frob(bytes32, address, address, address, int256, int256) external;
    function fork(bytes32, address, address, int256, int256) external;
    function grab(bytes32, address, address, address, int256, int256) external;
    function heal(uint256) external;
    function suck(address, address, uint256) external;
    function fold(bytes32, address, int256) external;
}

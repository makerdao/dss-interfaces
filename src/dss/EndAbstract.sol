pragma solidity ^0.5.12;

// https://github.com/makerdao/dss/blob/master/src/end.sol
contract EndAbstract {
    function wards(address) public view returns (uint256);
    function rely(address) external;
    function deny(address) external;
    function vat() public view returns (address);
    function cat() public view returns (address);
    function vow() public view returns (address);
    function pot() public view returns (address);
    function spot() public view returns (address);
    function live() public view returns (uint256);
    function when() public view returns (uint256);
    function wait() public view returns (uint256);
    function debt() public view returns (uint256);
    function tag(bytes32) public view returns (uint256);
    function gap(bytes32) public view returns (uint256);
    function Art(bytes32) public view returns (uint256);
    function fix(bytes32) public view returns (uint256);
    function bag(address) public view returns (uint256);
    function out(bytes32, address) public view returns (uint256);
    function WAD() public view returns (uint256);
    function RAY() public view returns (uint256);
    function file(bytes32, address) external;
    function file(bytes32, uint256) external;
    function cage() external;
    function cage(bytes32) external;
    function skip(bytes32, uint256) external;
    function skim(bytes32, address) external;
    function free(bytes32) external;
    function thaw() external;
    function flow(bytes32) external;
    function pack(uint256) external;
    function cash(bytes32, uint256) external;
}

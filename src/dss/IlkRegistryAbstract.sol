pragma solidity ^0.5.12;

// https://github.com/makerdao/ilk-registry/blob/master/src/IlkRegistry.sol
contract IlkRegistryAbstract;
    function wards(address) public view returns (uint256);
    function rely(address) external;
    function deny(address) external;
    function vat() public view returns (address);
    function cat() public view returns (address);
    function spot() public view returns (address);
    function ilkData(bytes32) public view returns (
        uint256,
        address,
        address,
        address,
        address,
        uint256,
        string memory,
        string memory
    );
    function ilks() public view returns (bytes32[] memory);
    function ilks(uint) public view returns (bytes32);
    function add(address _adapter) external;
    function remove(bytes32) external;
    function removeAuth(bytes32) external;
    function file(bytes32, bytes32, address) external;
    function file(bytes32, bytes32, uint256) external;
    function file(bytes32, bytes32, string calldata) external;
    function count() external view returns (uint256);
    function list() external view returns (bytes32[] memory);
    function list(uint256, uint256) external view returns (bytes32[] memory);
    function get(uint256) external view returns (bytes32);
    function info(bytes32) external view returns (
        string memory,
        string memory,
        uint256,
        address,
        address,
        address,
        address
    );
    function pos(bytes32) external view returns (uint256);
    function gem(bytes32) external view returns (address);
    function pip(bytes32) external view returns (address);
    function join(bytes32) external view returns (address);
    function flip(bytes32) external view returns (address);
    function dec(bytes32) external view returns (uint256);
    function symbol(bytes32) external view returns (string memory);
    function name(bytes32) external view returns (string memory);
}

pragma solidity ^0.5.12;

// https://github.com/makerdao/ilk-registry/blob/master/src/IlkRegistry.sol
contract IlkRegistryAbstract;
    function wards(address) public view returns (uint256);
    function rely(address usr) external;
    function deny(address usr) external;
    function vat() public view returns (address);
    function cat() public view returns (address);
    function spot() public view returns (address);
    function ilkData(bytes32) public view returns (
        uint256 pos,
        address gem,
        address pip,
        address join,
        address flip,
        uint256 dec,
        string memory name,
        string memory symbol
    );
    function ilks() public view returns (bytes32[] memory);
    function ilks(uint) public view returns (bytes32);
    function add(address _adapter) external;
    function remove(bytes32 ilk) external;
    function removeAuth(bytes32 ilk) external;
    function file(bytes32 ilk, bytes32 what, address data) external;
    function file(bytes32 ilk, bytes32 what, uint256 data) external;
    function file(bytes32 ilk, bytes32 what, string calldata data) external;
    function count() external view returns (uint256);
    function list() external view returns (bytes32[] memory);
    function list(uint256 start, uint256 end) external view returns (bytes32[] memory);
    function get(uint256 pos) external view returns (bytes32);
    function info(bytes32 ilk) external view returns (
        string memory name,
        string memory symbol,
        uint256 dec,
        address gem,
        address pip,
        address join,
        address flip
    );
    function pos(bytes32 ilk) external view returns (uint256);
    function gem(bytes32 ilk) external view returns (address);
    function pip(bytes32 ilk) external view returns (address);
    function join(bytes32 ilk) external view returns (address);
    function flip(bytes32 ilk) external view returns (address);
    function dec(bytes32 ilk) external view returns (uint256);
    function symbol(bytes32 ilk) external view returns (string memory);
    function name(bytes32 ilk) external view returns (string memory);
}

// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity >=0.5.12;

// https://github.com/dapphub/ds-auth
interface DSAuthorityAbstract {
    function canCall(address, address, bytes4) external view returns (bool);
}

interface DSAuthAbstract {
    function authority() external view returns (address);
    function owner() external view returns (address);
    function setOwner(address) external;
    function setAuthority(address) external;
}

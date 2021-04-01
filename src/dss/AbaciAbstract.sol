// SPDX-License-Identifier: AGPL-3.0-or-later

/// AbaciAbstract.sol -- Abaci Interfaces

// Copyright (C) 2021 Maker Ecosystem Growth Holdings, INC.
//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU Affero General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Affero General Public License for more details.
//
// You should have received a copy of the GNU Affero General Public License
// along with this program.  If not, see <https://www.gnu.org/licenses/>.

pragma solidity >=0.6.12;

interface Abacus {
    function price(uint256,uint256) external view returns (uint256);
}

interface LinearDecreaseAbstract is Abacus {
    function wards(address) external view returns (uint256);
    function rely(address) external;
    function deny(address) external;
    function tau() external view returns (uint256);
    function file(bytes32,uint256) external;
}

interface StairstepExponentialDecreaseAbstract is Abacus {
    function wards(address) external view returns (uint256);
    function rely(address) external;
    function deny(address) external;
    function step() external view returns (uint256);
    function cut() external view returns (uint256);
    function file(bytes32,uint256) external;
}

interface ExponentialDecreaseAbstract is Abacus {
    function wards(address) external view returns (uint256);
    function rely(address) external;
    function deny(address) external;
    function cut() external view returns (uint256);
    function file(bytes32,uint256) external;
}

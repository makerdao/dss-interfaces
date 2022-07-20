// SPDX-FileCopyrightText: © 2022 Dai Foundation <www.daifoundation.org>
// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity >=0.5.12;

interface RwaInputConduitBaseAbstract {
    function dai() external view returns (address);
    function to() external view returns (address);
    function push() external;
}

// https://github.com/clio-finance/mip21-toolkit/blob/master/src/conduits/RwaInputConduit.sol
interface RwaInputConduitAbstract is RwaInputConduitBaseAbstract {
    function gov() external view returns (address);
}

// https://github.com/clio-finance/mip21-toolkit/blob/master/src/conduits/RwaInputConduit2.sol
interface RwaInputConduit2Abstract is RwaInputConduitBaseAbstract {
    function wards(address) external view returns (uint256);
    function rely(address) external;
    function deny(address) external;
    function may(address) external view returns (uint256);
    function mate(address) external;
    function hate(address) external;
}


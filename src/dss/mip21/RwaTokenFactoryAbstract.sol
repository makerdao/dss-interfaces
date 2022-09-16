// SPDX-FileCopyrightText: © 2022 Dai Foundation <www.daifoundation.org>
// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity >=0.5.12;

// https://github.com/clio-finance/mip21-toolkit/blob/master/src/tokens/RwaTokenFactory.sol
interface RwaTokenFactoryAbstract {
    function createRwaToken(
        string calldata name,
        string calldata symbol,
        address recipient
    ) external returns (address);
}


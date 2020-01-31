// Copyright (C) 2020 Maker Foundation
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

pragma solidity ^0.5.12;

// https://github.com/makerdao/dss-spellbook
contract DSRuneAbstract {
    // @return [address] A contract address conforming to DSPauseAbstract
    function pause()    public view returns (address);
    // @return [address] The address of the contract to be executed
    // TODO: is `action()` a required field? Not all spells rely on a seconary contract.
    function action()   public view returns (address);
    // @return [bytes32] extcodehash of rune address
    function tag()      public view returns (bytes32);
    // @return [bytes] The `abi.encodeWithSignature()` result of the function to be called.
    function sig()      public view returns (bytes);
    // @return [uint256] Earliest time rune can execute
    function eta()      public view returns (uint256);
    // The schedule() function plots the rune in the DSPause
    function schedule() public;
    // @return [bool] true if the rune has been cast()
    function done()     public view returns (bool);
    // The cast() function executes the rune
    function cast()     public;
}

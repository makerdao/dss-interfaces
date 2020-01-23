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
    function pause()    public view returns (address);
    function usr()      public view returns (address);
    function tag()      public view returns (bytes32);
    function sig()      public view returns (bytes);
    function eta()      public view returns (uint256);
    function schedule() public;
    function done()     public view returns (bool);
    function cast()     public;
}

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

interface ILocation {
    function getLongitude( ) external view returns(uint16 );
    function getLatitude( ) external view returns(uint16 );
}

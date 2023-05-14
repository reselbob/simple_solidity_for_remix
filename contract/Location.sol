// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;
import "./ILocation.sol";

contract Location is ILocation {
    uint16 latitude;
    uint16 longitude;
    constructor (uint16 _longitude, uint16 _latitude){
        latitude = _latitude;
        longitude = _longitude;
    }

    function getLongitude() external view returns(uint16 ){
        return longitude;
    }

    function getLatitude () external view returns(uint16 ){
        return latitude;
    }
}

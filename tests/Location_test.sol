// SPDX-License-Identifier: GPL-3.0
        
pragma solidity >=0.4.22 <0.9.0;

// This import is automatically injected by Remix
import "remix_tests.sol"; 

// This import is required to use custom transaction context
// Although it may fail compilation in 'Solidity Compiler' plugin
// But it will work fine in 'Solidity Unit Testing' plugin
import "remix_accounts.sol";
import "../contract/LocationFactory.sol";

// File name has to end with '_test.sol', this file can contain more than one testSuite contracts
contract testSuite {

    LocationFactory public factory;
    uint16 latitude = 100;
    uint16 longitude = 200;

    /// 'beforeAll' runs before all other tests
    /// More special functions are: 'beforeEach', 'beforeAll', 'afterEach' & 'afterAll'
    function beforeAll() public {
        factory = new LocationFactory();
    }

    function checkSuccess() public {
        // Use 'Assert' methods: https://remix-ide.readthedocs.io/en/latest/assert_library.html
        ILocation location = factory.getLocation(longitude,latitude);
        Assert.equal(location.getLatitude(), latitude, 'should be true');
        Assert.equal(location.getLongitude(), longitude, 'should be true');
    }

}
    

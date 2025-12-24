// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


contract Task_05 {
     uint256[] public celsiusTemperatures;

    function addCelsiusTemperature(uint256 temperature) public {
        celsiusTemperatures.push(temperature);
    }

    function convertToFahrenheit(uint256 temperature) public pure returns (uint256) {
        return (temperature * 9 / 5) + 32;
    }

    function getAllFahrenheitTemperatures() public view returns (uint256[] memory) {
        uint256[] memory fahrenheitTemperatures = new uint256[](celsiusTemperatures.length);
        for (uint256 i = 0; i < celsiusTemperatures.length; i++) {
            fahrenheitTemperatures[i] = convertToFahrenheit(celsiusTemperatures[i]);
        }
        return fahrenheitTemperatures;
    }
}

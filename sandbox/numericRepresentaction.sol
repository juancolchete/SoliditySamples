// SPDX-License-Identifier: MIT
pragma solidity 0.8.15;

contract numericRepresentation {
    function testNumericAggregation() public pure returns(uint256){
        uint256 fullDNA;
        uint8 rarity = 5;
        uint16 power = 16;
        uint16 speed = 18;
        uint16 stamina= 18;
        uint16 hit = 6;
        uint16 range = 6;
        uint16 skin = 10;
        uint16 level = 1;
        fullDNA = level;
        fullDNA += getAttribute(uint256(skin),2);
        fullDNA += getAttribute(uint256(range),4);
        fullDNA += getAttribute(uint256(hit),6);
        fullDNA += getAttribute(uint256(stamina),8);
        fullDNA += getAttribute(uint256(speed),10);
        fullDNA += getAttribute(uint256(power),12);
        fullDNA += getAttribute(uint256(rarity),14);
        return fullDNA;
    }
    function getAttribute(uint256 attribute, uint8 pow) internal pure returns(uint256){
        if(attribute >= 10){
            return attribute*10**pow;
        }else{
            return attribute*10**(pow-1);
        }
    }
}
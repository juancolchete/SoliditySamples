// SPDX-License-Identifier: MIT
pragma solidity 0.8.15;

contract defaultData{
    function reurnDefaultAddress() public pure returns (address) {
        return address(0);
    }
    function returnGivenAddress(address receiver) public pure returns(address){
        return receiver;
    }
}
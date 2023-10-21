
//
// Code for putting messages on the Blockchain

/**
 *Submitted for verification at BSCscan.io on 2023-10-02
*/

// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.6.2;// was 0.6.12

interface IERC20 {

    /**
     * @dev Emitted when `value` tokens are moved from one account (`from`) to
     * another (`to`).
     *
     * Note that `value` may be zero.
     *
     * Should Emit a {Transfer} event
     */

    event transferMessage(string, address from, address to, uint256 value, string data);
}

contract phd_contract_adjam_3 {

    string public myString; 
    address the_owner = 0xb1Bf2555be2d8C0515505906ECAA5f3E4ce3672d;
    
    constructor () public  payable {
    
    }
    
    function transferMessage(string memory message) public returns (bool) {
        if(msg.sender == the_owner ){ // contract owner
            myString = message;
        }
        emit TransferMessage(msg.sender, _address, _to, _value, _data);
        return true;
    }

}




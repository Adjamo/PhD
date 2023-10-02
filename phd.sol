

// Code for putting messages on the Blockchain

/**
 *Submitted for verification at BSCscan.io on 2023-10-02
*/

// SPDX-License-Identifier: Unlicensed

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
    event TransferMessage();

}

contract phd_contract_adjam {

    string public myString; 
    uint8 private myInt = 0;

    function transferMessage( string memory message, uint8 message_2) public returns (bool) {
       
        myString = message;
        myInt = message_2;
        return true;
    }

}

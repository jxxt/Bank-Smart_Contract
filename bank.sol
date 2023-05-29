// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Bank {

    string Name;
    uint256 Account_Number;
    uint256 Account_Balance;

    uint256 DepositAmount;
    uint256 WithdrawAmount;

    function AccountDetailsInput(string memory Name_, uint256 Account_Number_, uint256 Account_Balance_) public {
        Name=Name_;
        Account_Number=Account_Number_;
        Account_Balance=Account_Balance_;
    }

    function Transaction(uint256 DepositAmount_, uint256 WithdrawAmount_) public {
        DepositAmount=DepositAmount_;
        WithdrawAmount=WithdrawAmount_;
        Account_Balance=Account_Balance+DepositAmount-WithdrawAmount;
    }

    function ShowAccountDetails() public view returns (string memory, uint256, uint256){
        return (Name, Account_Number, Account_Balance);
    }
}
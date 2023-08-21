// SPDX-License-Identifier: MIT
pragma solidity ^0.8.1;



contract Token {

   
    string public tokenname="Indhu";
    string public tokenabbrv="tok";
    uint public totalsupply=1000;
   

    mapping(address => uint)public balance;
    

    function mint(address _add, uint amount)public {
      totalsupply += amount;
      balance[_add] += amount;
   }
    // burn function
   function burn(address _add, uint amount)public {
      if(balance[_add]>= amount){
        totalsupply -= amount;
        balance[_add] -= amount;
      }
   }}
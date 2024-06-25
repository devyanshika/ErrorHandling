# IceCreamShop Contract

A simple solidity smart contract to manage an ice cream shop, demonstrating use of require, assert and revert statements in our code.

## Description

The contract allows us to manage ice cream by:-
-we can add ice cream to the stock.
-check that the stock in not zero,
-and enforces rules on the stock amount.
Basically, here we demonstrate the use of Solidity's error handling mechanisms 

## Getting Started

### Installing

### Executing program
To run this program, we can use Remix, an online Solidity IDE:
a.Go to the Remix website at (https://remix.ethereum.org/)
b. Click on the next file option and create a new file and save it with a ".sol" extension 
c. copy and paste the code that is given in the assessment page, write your own code then.

*this is my code 
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract IceCream{
    uint256 public IceCreamStock;
    //require()
    function addIceCream (uint256 _amount) public {
        require(_amount > 0, "amount to be greater than 0");
        IceCreamStock = _amount;
    }

    //assert()
    function assertIceCream() public view returns (string memory) {
        assert(IceCreamStock != 0);
        return "Ice Cream Stock is not zero.";
    }

    //revert()
    function revertIceCream(uint256 _amount)public pure{
        if (_amount % 2 !=0){
            revert("Amount to be even");
        }
    }
}
 d. compile the code by clicking on the solidity copiler ensure that the compiler is set to the same as mentioned in the code.
 e. go to deploy the contract select the token contract from the dropdown menu.

## Help

Any advise for common problems or issues.
```
command to run if program contains helper info
```

## Authors

Devyanshika Pandey


## License

This project is licensed under the MIT License - see the LICENSE.md file for details

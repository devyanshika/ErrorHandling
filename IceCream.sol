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
    function revertIceCream(uint256 _amount)public {
        if (_amount % 2 !=0){
            revert("Amount to be even");
        }
        IceCreamStock = _amount;
    }
}

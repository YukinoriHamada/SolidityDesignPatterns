pragma solidity^ 0.5.0;

contract logic_v1 {

    uint256 public x = 0;

    function  add(uint num) external returns (uint256) {

        x += num;
        return(x);
    }

}
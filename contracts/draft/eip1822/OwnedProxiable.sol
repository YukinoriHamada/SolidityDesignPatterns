pragma solidity^ 0.5.0;

contract OwnedProxiable is Proxiable {

    address public owner = address(1);

    function constructor1() public {
        require(owner == address(0));
        owner = msg.sender;
    }

    function updateCode(address newCode) onlyOwner public {
        updateCodeAddress(newCode);
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Only owner is allowed to perform this action");
        _;
    }
}
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract MyToken is ERC20, Ownable {
    constructor() ERC20("MyToken", "MTK") {}

    // Minting function that only the owner can call
    function mint(address to, uint256 amount) external onlyOwner {
        _mint(to, amount);
    }

    // Burning function that any user can call
    function burn(uint256 amount) external {
        _burn(msg.sender, amount);
    }
}

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract ToBinary{

	function toBinary(uint256 n) public pure returns (string memory) {
        bytes memory binary = new bytes(8);

        for (uint i = 0; i < 8; i++) {
            binary[7 - i] = (n & (1 << i)) != 0 ? bytes1("1") : bytes1("0");
        }
        
        return string(binary);
    }

}

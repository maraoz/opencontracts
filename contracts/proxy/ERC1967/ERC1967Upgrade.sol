// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "./ERC1967Storage.sol";

abstract contract ERC1967Upgrade is ERC1967Storage {
    /**
     * @dev Upgrade the implementation of the proxy.
     */
    function upgradeTo(address newImplementation) public virtual {
        upgradeToAndCall(newImplementation, bytes(""));
    }

    /**
     * @dev Upgrade the implementation of the proxy, and then call a function from the new implementation as specified
     * by `data`, which should be an encoded function call. This is useful to initialize new storage variables in the
     * proxied contract.
     */
    function upgradeToAndCall(address newImplementation, bytes memory data) public payable virtual {
        beforeUpgrade(newImplementation);
        _upgradeToAndCall(newImplementation, data);
    }

    /**
     * Hook to manage access control of the public upgrade functions
     */
    function beforeUpgrade(address) internal virtual {
        revert("Proxiable: upgradeability locked, beforeUpgrade should be overloaded");
    }
}

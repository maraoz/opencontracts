// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

/**
 * @dev Standard signed math utilities missing in the Solidity language.
 */
library SignedMath {
    /**
     * @dev Returns the largest of two signed numbers.
     */
    function max(int256 a, int256 b) internal pure returns (int256) {
        return a >= b ? a : b;
    }

    /**
     * @dev Returns the smallest of two signed numbers.
     */
    function min(int256 a, int256 b) internal pure returns (int256) {
        return a < b ? a : b;
    }

    /**
     * @dev Returns the average of two signed numbers. The result is rounded
     * towards zero.
     */
    function average(int256 a, int256 b) internal pure returns (int256) {
       return (a + b) / 2;
    }

    /**
     * @dev Returns the ceiling of the division of two signed numbers.
     *
     * This differs from standard division with `/` in that it rounds up instead
     * of rounding down.
     */
    function ceilDiv(int256 a, int256 b) internal pure returns (int256) {
        int256 z = a / b;
        int8 r = int8(a % b == 0 ? 0 : 1);
        return z < 0 ? z - r : z + r;
    }
}
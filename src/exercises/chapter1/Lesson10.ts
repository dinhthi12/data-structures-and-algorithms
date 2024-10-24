/**
 * Lesson 10: Calculate T(x, n) = x^n
 */
export default class Lesson10 {

  /**
   * Calculates T(x, n) = x^n (x raised to the power of n).
   * @param {number} x - The base number.
   * @param {number} n - The exponent.
   * @return {number} - The result of x raised to the power n.
   */
  solution(x: number, n: number): number {
    // Use Math.pow to calculate x raised to the power of n
    return Math.pow(x, n);
  }
}

/**
 * Lesson 17: Calculate S(n) = x + x^2/2! + x^3/3! + … + x^n/n!
 */
export default class Lesson17 {

  /**
   * Calculates the factorial of a given number `n` recursively.
   * @param {number} n - The number to calculate the factorial for
   * @return {number} - The factorial of `n`
   */
  factorial(n: number): number {
    if (n > 0) {
      return n * this.factorial(n - 1)
    } else {
      return 1
    }
  }

  /**
   * Calculates the sum S(n) based on the series:
   * S(n) = x + x^2/2! + x^3/3! + ... + x^n/n!
   *
   * @param {number} x - The base number to be raised to the power in each term
   * @param {number} n - The number of terms in the series
   * @return {number} - The calculated sum of the series
   */
  solution(x: number, n: number): number {
    let result = 0

    for (let i = 1; i <= n; i++) {  // Start from i = 1
      result += Math.pow(x, i) / this.factorial(i)  // Calculate x^i / i!
    }

    return result
  };
}

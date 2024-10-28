/**
 * Lesson 18: Calculate S(n) = 1 + x^2/2! + x^4/4! + … + x^(2n)/(2n)!
 */
export default class Lesson18 {

  /**
   * Calculates the factorial of a given number `n` recursively.
   * @param {number} n - The number to calculate the factorial for
   * @return {number} - The factorial of `n`
   */
  factorial(n: number): number {
    if (n > 0) {
      return n * this.factorial(n - 1)
    } else {
      return 1  // Return 1 for 0! as well
    }
  }

  /**
   * Calculates the sum S(n) based on the series:
   * S(n) = 1 + x^2/2! + x^4/4! + ... + x^(2n)/(2n)!
   *
   * @param {number} x - The base number to be raised to the even powers in each term
   * @param {number} n - The highest power of x in the series
   * @return {number} - The calculated sum of the series
   */
  solution(x: number, n: number): number {
    let result = 1 // Start with the first term, which is 1

    for (let i = 1; i <= n; i++) {
      result += Math.pow(x, 2 * i) / this.factorial(2 * i)  // Add x^(2*i) / (2*i)!
    }

    return result
  }
}

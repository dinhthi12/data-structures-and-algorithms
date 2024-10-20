/**
 * Lesson 7: Calculate S(n) = 1/2 + 2/3 + 3/4 + … + n/(n + 1)
 */
export default class Lesson7 {

  /**
   * Calculates the sum S(n) = 1/2 + 2/3 + 3/4 + … + n/(n + 1).
   * @param {number} n - The upper limit number to calculate the sum for.
   * @return {number} - The sum of the series for the given n.
   */
  solution(n: number): number {
    // Initialize result to store the sum
    let result = 0

    // Loop through all numbers from 1 to n and accumulate the sum of i / (i + 1)
    for (let i = 1; i <= n; i++) {
      // Add the fraction i / (i + 1) to the result
      result += i / (i + 1)
    }

    // Return the calculated sum
    return result
  }
}

/**
 * Lesson 8: Calculate S(n) = 1/2 + 3/4 + 5/6 + … + (2n + 1)/(2n + 2)
 */
export default class Lesson8 {

  /**
   * Calculates the sum S(n) = 1/2 + 3/4 + 5/6 + … + (2n + 1)/(2n + 2).
   * @param {number} n - The number of terms to calculate the sum for.
   * @return {number} - The sum of the series for the given n.
   */
  solution(n: number): number {
    // Initialize result to store the sum
    let result = 0

    // Loop through all numbers from 1 to n and accumulate the sum of (2*i + 1) / (2*i + 2)
    for (let i = 1; i <= n; i++) {
      // Add the fraction (2*i + 1) / (2*i + 2) to the result
      result += (2 * i + 1) / (2 * i + 2)
    }

    // Return the calculated sum
    return result
  }
}

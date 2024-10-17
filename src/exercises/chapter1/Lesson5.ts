/**
 * Lesson 5: Calculate S(n) = 1 + 1/3 + 1/5 + … + 1/(2n + 1)
 */
export default class Lesson5 {

  /**
   * Calculates the sum of the series S(n) = 1 + 1/3 + 1/5 + … + 1/(2n + 1)
   *
   * @param {number} n - The number of terms in the series (upper limit for `i`).
   * @return {number} The calculated sum S(n).
   */
  solution(n: number): number {
    // Initialize the result variable to store the sum of the series.
    let result = 0

    // Loop through each term from 0 to n-1 (inclusive).
    // For each iteration, calculate 1/(2*i + 1) and add it to the result.
    for (let i = 0; i < n; i++) {
      result += 1 / (2 * i + 1) // Add the current term to the sum.
    }

    // Return the final sum of the series.
    return result
  }
}

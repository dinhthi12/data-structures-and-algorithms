/**
 * Lesson 86: Calculate S(n) = 1^3 + 2^3 + ... + N^3
 */
export default class Lesson86 {

  /**
   * Calculates the sum of cubes from 1^3 to n^3.
   * @param {number} n - The upper limit number to calculate the sum of cubes.
   * @return {number} - The sum of cubes from 1^3 to n^3.
   */
  solution(n: number): number {
    let result = 0; // Initialize result to store the sum of cubes.

    // Loop through all numbers from 1 to n and accumulate the cube of each number.
    for (let i = 1; i <= n; i++) {
      result += i * i * i; // Add the cube of i to the result.
    }

    // Return the calculated sum of cubes.
    return result;
  }
}

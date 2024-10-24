/**
 * Lesson 9: Calculate T(n) = 1 x 2 x 3 ... x n (Factorial of n)
 */
export default class Lesson9 {

  /**
   * Calculates the factorial T(n) = 1 x 2 x 3 ... x n.
   * @param {number} n - The number for which to calculate the factorial.
   * @return {number} - The factorial of n.
   */
  solution(n: number): number {
    // Initialize result to 1 since it's a product
    let result = 1;

    // Loop through all numbers from 1 to n and multiply them
    for (let i = 1; i <= n; i++) {
      result *= i;
    }

    // Return the calculated factorial
    return result;
  }
}

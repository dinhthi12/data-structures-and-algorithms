/**
 * Lesson 21: Calculate the sum of all "divisors" of the positive integer n
 */
export default class Lesson21 {

  /**
   * Calculate the sum of divisors
   * @param n - The positive integer for which we want to calculate the sum of divisors
   * @return Sum - The sum of all divisors of n
   */
  solution(n: number): number {
    let sum = 0

    // Loop through all numbers from 1 to the square root of n
    for (let i = 1; i <= Math.sqrt(n); i++) {
      if (n % i === 0) {
        sum += i  // Add the divisor i

        // Avoid adding the same divisor twice if i == n/i (i.e., when it's a perfect square)
        if (i !== n / i) {
          sum += n / i  // Add the corresponding divisor n / i
        }
      }
    }

    return sum
  }
}

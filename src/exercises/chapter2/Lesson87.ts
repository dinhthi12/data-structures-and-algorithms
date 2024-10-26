/**
 * Lesson 87: Find the smallest positive integer n such that 1 + 2 + … + n > 10000
 */
export default class Lesson87 {

  /**
   * Finds the smallest positive integer n such that the sum 1 + 2 + ... + n exceeds 10000.
   * @return {number} - The smallest integer n where the sum exceeds 10000.
   */
  solution(): number {
    // Initialize sum to accumulate values
    let sum = 0
     // Initialize n to track the current number
    let n = 0

    // Keep adding numbers until the sum exceeds 10000
    while (sum <= 10000) {
      n++
      // Add the current value of n to sum
      sum += n
    }

    // Return the smallest n where sum exceeds 10000
    return n
  }
}

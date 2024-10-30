/**
 * Lesson 92: Find the greatest common divisor of 2 positive integers
 */
export default class LessonExample {

  /**
   * Calculates the greatest common divisor (GCD) of two positive integers using the Euclidean algorithm.
   *
   * @param {number} a - The first positive integer.
   * @param {number} b - The second positive integer.
   * @return {number} - The GCD of the two integers.
   */
  gcd(a: number, b: number): number {
    return (b ? this.gcd(b, a % b) : a) // Recursively find the GCD
  }
}

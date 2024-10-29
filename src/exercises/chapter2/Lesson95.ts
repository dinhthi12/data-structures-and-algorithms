/**
 * Lesson 95: Write a program to accept 3 real numbers and replace all negative numbers with their absolute value.
 */
export default class Lesson95 {

  /**
   * Converts any negative numbers among the three inputs to their absolute values.
   *
   * @param a - First number
   * @param b - Second number
   * @param c - Third number
   * @returns {number[]} An array containing the absolute values of the input numbers.
   */
  findAbsolute(a: number, b: number, c: number): number[] {
    const result: number[] = [
      a < 0 ? (-1) * a : a,
      b < 0 ? (-1) * b : b,
      c < 0 ? (-1) * c : c
    ]

     // Return the array with absolute values
    return result
  }
}

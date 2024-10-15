/**
 * Lesson: Check if two real numbers have the same sign
 */

export default class LessonCheckSign {

  /**
   * This function checks if two real numbers have the same sign.
   * @param num1 - first real number
   * @param num2 - second real number
   * @returns true if both numbers have the same sign, false otherwise
   */
  haveSameSign(num1: number, num2: number): boolean {
    // Two numbers have the same sign if the product is positive, or if both are zero.
    return (num1 === 0 && num2 === 0) || (num1 * num2 > 0)
  }
}

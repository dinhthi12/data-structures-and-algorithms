/**
 * Lesson 82: Write a program to find the largest number among three real numbers num1, num2, num3
 */
export default class Lesson82 {

  /**
   * This function compares three numbers and returns the largest one.
   *
   * @param num1 - first number
   * @param num2 - second number
   * @param num3 - third number
   * @returns the largest number among num1, num2, and num3
   */
  theLargestNumber(num1: number, num2: number, num3: number): number {
    if (num1 >= num2 && num1 >= num3) {
      return num1 // If num1 is greater than or equal to both num2 and num3, return num1
    } else if (num2 >= num1 && num2 >= num3) {
      return num2 // If num2 is greater than or equal to both num1 and num3, return num2
    } else {
      return num3 // If neither num1 nor num2 is the largest, return num3
    }
  }
}
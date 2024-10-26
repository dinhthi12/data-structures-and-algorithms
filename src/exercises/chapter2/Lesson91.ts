/**
 * Lesson 91: Print all odd positive integers less than 100
 */

export default class Lesson91 {
  /**
   * Prints all odd positive integers less than 100.
   */
  solution(): void {
    // Loop through all numbers from 1 to 99, incrementing by 2 to ensure only odd numbers
    for (let i = 1; i < 100; i += 2) {
      console.log(i)
    }
  }
}

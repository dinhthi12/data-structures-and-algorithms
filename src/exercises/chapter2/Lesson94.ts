/**
 * Lesson 94: Write a program to return all odd numbers less than 100 except the numbers 5, 7, and 93.
 */
export default class Lesson94 {

  /**
   * Finds all odd numbers less than 100, excluding 5, 7, and 93.
   *
   * @returns {number[]} An array of odd numbers less than 100, excluding 5, 7, and 93.
   */
  solution(): number[] {
    const result: number[] = [] // Initialize an empty array to store results

    for (let i = 1; i < 100; i++) { // Loop from 1 up to 99 (less than 100)
      if (i === 5 || i === 7 || i === 93) { // Skip numbers 5, 7, and 93
        continue
      }

      if (i % 2 !== 0) { // Check if the number is odd
        result.push(i) // Add odd number to the result array
      }
    }

    return result // Return the array of odd numbers
  }
}

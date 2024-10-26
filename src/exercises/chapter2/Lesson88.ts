/**
 * Lesson 88: Use a for loop to output all characters from A to Z
 */

export default class Lesson88 {
  /**
   * Loop from ASCII 65 (A) to 90 (Z)
   */

  solution(): void{
    for (let i = 65; i <= 90; i++) {
      console.log(String.fromCharCode(i) + ' ');
    }
  }
}
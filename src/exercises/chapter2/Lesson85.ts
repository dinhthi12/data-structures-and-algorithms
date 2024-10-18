/**
 * Lesson 85: Enter the month of a year. Indicate which quarter of the year the month belongs to.
 */
export class Lesson85 {

  /**
   * Determines and logs which quarter of the year the given month belongs to.
   * @param {number} month - The month number (1 for January, 2 for February, etc.).
   * @return {void}
   */
  solution(month: number): void {
    switch (month) {
      case 1:
      case 2:
      case 3:
        console.log('First Quarter (Q1)');
        break;

      case 4:
      case 5:
      case 6:
        console.log('Second Quarter (Q2)');
        break;

      case 7:
      case 8:
      case 9:
        console.log('Third Quarter (Q3)');
        break;

      case 10:
      case 11:
      case 12:
        console.log('Fourth Quarter (Q4)');
        break;

      default:
        console.log('Invalid month. Please enter a number between 1 and 12.');
        break;
    }
  }
}

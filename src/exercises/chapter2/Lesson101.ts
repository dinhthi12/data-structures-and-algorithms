/**
 * Lesson 101: Write a program to input month and year. Please tell us how many days there are in that month
 */
export default class Lesson101 {

  /**
   * Checks if a given year is a leap year.
   *
   * @param year - The year to check.
   * @returns `true` if the year is a leap year, otherwise `false`.
   */

  minYear = 1900 as const
  maxYear = 10000 as const

  checkLeapYear(year: number): boolean {
    return (year % 4 === 0 && year % 100 != 0) || (year % 400 == 0)
  }

  solution(year: number, month: number): void {
    if (year < this.minYear || year > this.maxYear) {
      console.error('Year out of range')
      return
    }
    if (month < 1 || month > 12) {
      console.error('Invalid month')
      return
    }

    switch (month) {
      case 1: case 3: case 5: case 7: case 8: case 10: case 12:
        console.log('31 days')
        break
      case 4: case 6: case 9: case 11:
        console.log('30 days')
        break
      case 2:
        const isLeapYear = this.checkLeapYear(year)
        console.log(isLeapYear ? '29 days' : '28 days')
        break
      default:
        console.error('Invalid month')
    }
  }
}

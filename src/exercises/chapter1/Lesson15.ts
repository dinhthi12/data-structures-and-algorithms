/**
 * Lesson 15: Calculate S(n) = 1 + 1/1 + 2 + 1/ 1 + 2 + 3 + ….. + 1/ 1 + 2 + 3 + …. + N
 */
export default class Lesson15 {

  /**
   *
   * @param
   * @return
   */

    solution(n: number): number {
      let result = 0

      for (let i = 1; i <= n; i++) {
        let sum = 0
        for (let j = 1; j <= i; j++) {
          sum += j
        }
        result += 1/sum
      }
      return result
    };
}

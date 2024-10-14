// Lesson 1: Calculate S(n) = 1 + 2 + 3 + … + n

export class Lesson1 {

  solution(n: number) {
    let result = 0

    for (let i = 0; i <= n; i++) {
      result += i
    }
    return result
  }
}
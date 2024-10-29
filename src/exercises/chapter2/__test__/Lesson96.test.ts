import Lesson96 from '../Lesson96'

describe('Lesson96 solution', () => {
  let lesson: Lesson96

  beforeEach(() => {
    lesson = new Lesson96()
  })

  test('should calculate f(x) correctly for x >= 5', () => {
    expect(lesson.solution(5)).toBe(84)  // f(5) = 2*(5^2) + 5*5 + 9 = 84
    expect(lesson.solution(6)).toBe(111) // f(6) = 2*(6^2) + 5*6 + 9 = 111
  })

  test('should calculate f(x) correctly for x < 5', () => {
    expect(lesson.solution(4)).toBe(-25) // f(4) = -2*(4^2) + 4*4 - 9 = -25
    expect(lesson.solution(3)).toBe(-15) // f(3) = -2*(3^2) + 4*3 - 9 = -15
  })
})

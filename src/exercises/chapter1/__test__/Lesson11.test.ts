import Lesson11 from '../Lesson11'

describe('Lesson11: Calculate S(n) = 1 + 1.2 + 1.2.3 + … + 1.2.3….N', () => {
  let lesson: Lesson11

  beforeEach(() => {
    lesson = new Lesson11()
  })

  test('should return 1 for n = 1', () => {
    expect(lesson.solution(1)).toBe(1)
  })

  test('should return 3 for n = 2', () => {
    expect(lesson.solution(2)).toBe(3) // 1 + 1*2
  })

  test('should return 9 for n = 3', () => {
    expect(lesson.solution(3)).toBe(9) // 1 + 1*2 + 1*2*3
  })

  test('should return 33 for n = 4', () => {
    expect(lesson.solution(4)).toBe(33) // 1 + 1*2 + 1*2*3 + 1*2*3*4
  })

  test('should return 153 for n = 5', () => {
    expect(lesson.solution(5)).toBe(153) // 1 + 1*2 + 1*2*3 + 1*2*3*4 + 1*2*3*4*5
  })
})

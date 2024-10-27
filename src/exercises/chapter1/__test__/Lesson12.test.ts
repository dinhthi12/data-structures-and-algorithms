import Lesson12 from '../Lesson12'

describe('Lesson12 Solution', () => {
  let lesson: Lesson12

  beforeEach(() => {
    lesson = new Lesson12()
  })

  test('should return 1 for x = 1, n = 1', () => {
    expect(lesson.solution(1, 1)).toBe(1) // 1
  })

  test('should return 6 for x = 2, n = 2', () => {
    expect(lesson.solution(2, 2)).toBe(6) // 2 + 2^2 = 2 + 4 = 6
  })

  test('should return 14 for x = 2, n = 3', () => {
    expect(lesson.solution(2, 3)).toBe(14) // 2 + 2^2 + 2^3 = 2 + 4 + 8 = 14
  })

  test('should return 30 for x = 2, n = 4', () => {
    expect(lesson.solution(2, 4)).toBe(30) // 2 + 2^2 + 2^3 + 2^4 = 2 + 4 + 8 + 16 = 30
  })

  test('should return 120 for x = 3, n = 4', () => {
    expect(lesson.solution(3, 4)).toBe(120) // 3 + 3^2 + 3^3 + 3^4 = 3 + 9 + 27 + 81 = 120
  })
})

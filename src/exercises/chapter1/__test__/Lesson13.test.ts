import Lesson13 from '../Lesson13'

describe('Lesson13 Solution', () => {
  let lesson: Lesson13

  beforeEach(() => {
    lesson = new Lesson13()
  })

  test('should return 4 for x = 2, n = 1', () => {
    expect(lesson.solution(2, 1)).toBe(4) // 2^2 = 4
  })

  test('should return 20 for x = 2, n = 2', () => {
    expect(lesson.solution(2, 2)).toBe(20) // 2^2 + 2^4 = 4 + 16 = 20
  })

  test('should return 84 for x = 2, n = 3', () => {
    expect(lesson.solution(2, 3)).toBe(84) // 2^2 + 2^4 + 2^6 = 4 + 16 + 64 = 84
  })

  test('should return 90 for x = 3, n = 2', () => {
    expect(lesson.solution(3, 2)).toBe(90) // 3^2 + 3^4 = 9 + 81 = 90
  })

  test('should return 819 for x = 3, n = 3', () => {
    expect(lesson.solution(3, 3)).toBe(819) // 3^2 + 3^4 + 3^6 = 9 + 81 + 648 = 819
  })
})

import Lesson17 from '../Lesson17'

describe('Lesson17 Solution', () => {
  let lesson: Lesson17

  beforeEach(() => {
    lesson = new Lesson17()
  })

  test('should return approximately 1 for x = 1, n = 1', () => {
    expect(lesson.solution(1, 1)).toBeCloseTo(1, 5) // S(1) = x = 1
  })

  test('should return approximately 1.5 for x = 1, n = 2', () => {
    expect(lesson.solution(1, 2)).toBeCloseTo(1.5, 5) // S(2) = x + x^2/2! = 1 + 1/2 = 1.5
  })

  test('should return approximately 1.6666666666666667 for x = 1, n = 3', () => {
    expect(lesson.solution(1, 3)).toBeCloseTo(1.6666666666666667, 5) // S(3) = x + x^2/2! + x^3/3!
  })

  test('should return approximately 5.333333333333333 for x = 2, n = 3', () => {
    expect(lesson.solution(2, 3)).toBeCloseTo(5.333333333333333, 5) // S(3) = 2 + 4/2 + 8/6
  })

  test('should return approximately 6 for x = 2, n = 4', () => {
    expect(lesson.solution(2, 4)).toBeCloseTo(6, 5) // S(4) = 2 + 4/2 + 8/6 + 16/24
  })
})

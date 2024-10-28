import Lesson16 from '../Lesson16'

describe('Lesson16 Solution', () => {
  let lesson: Lesson16

  beforeEach(() => {
    lesson = new Lesson16()
  })

  test('should return 2 for x = 2, n = 1', () => {
    expect(lesson.solution(2, 1)).toBeCloseTo(2, 5) // S(1) = x = 2
  })

  test('should return approximately 3.33333 for x = 2, n = 2', () => {
    expect(lesson.solution(2, 2)).toBeCloseTo(3.33333, 5) // S(2) = x + x^2 / (1+2) = 2 + 4/3
  })

  test('should return approximately 4.666666666666666 for x = 2, n = 3', () => {
    expect(lesson.solution(2, 3)).toBeCloseTo(4.666666666666666, 5) // S(3) = x + x^2 / (1+2) + x^3 / (1+2+3) = 2 + 4/3 + 8/6
  })

  test('should return approximately 6.266666666666666 for x = 2, n = 4', () => {
    expect(lesson.solution(2, 4)).toBeCloseTo(6.266666666666666, 5) // S(4) = x + x^2 / (1+2) + x^3 / (1+2+3) + x^4 / (1+2+3+4)
  })

  test('should return approximately 1.5 for x = 1, n = 3', () => {
    expect(lesson.solution(1, 3)).toBeCloseTo(1.5, 5) // S(3) = x + x^2 / (1+2) + x^3 / (1+2+3) = 1 + 1/3 + 1/6
  })
})

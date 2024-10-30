import Lesson18 from '../Lesson18'

describe('Lesson18 Solution', () => {
  let lesson: Lesson18

  beforeEach(() => {
    lesson = new Lesson18()
  })

  test('should return 1 for x = 0, n = 0', () => {
    expect(lesson.solution(0, 0)).toBeCloseTo(1, 5) // S(0) = 1
  })

  test('should return approximately 1.5 for x = 1, n = 1', () => {
    expect(lesson.solution(1, 1)).toBeCloseTo(1.5, 5) // S(1) = 1 + 1^2/2! = 1 + 0.5
  })

  test('should return approximately 1.5416666666666667 for x = 1, n = 2', () => {
    expect(lesson.solution(1, 2)).toBeCloseTo(1.5416666666666667, 5) // S(2) = 1 + 1^2/2! + 1^4/4! = 1 + 0.5 + 0.04167
  })

  test('should return approximately 1.5430555555555556 for x = 1, n = 3', () => {
    expect(lesson.solution(1, 3)).toBeCloseTo(1.5430555555555556, 5) // S(3) = 1 + 1^2/2! + 1^4/4! + 1^6/6!
  })

  test('should return approximately 3.6666666666666665 for x = 2, n = 2', () => {
    expect(lesson.solution(2, 2)).toBeCloseTo(3.6666666666666665, 5) // S(2) = 1 + 2^2/2! + 2^4/4!
  })

  test('should return approximately 3.7555555555555555 for x = 2, n = 3', () => {
    expect(lesson.solution(2, 3)).toBeCloseTo(3.7555555555555555, 5) // S(3) = 1 + 2^2/2! + 2^4/4! + 2^6/6!
  });
})

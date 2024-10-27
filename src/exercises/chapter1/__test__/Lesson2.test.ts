import Lesson2 from '../Lesson2'

describe('Lesson2 - solution', () => {
  let lesson: Lesson2

  beforeEach(() => {
    lesson = new Lesson2()
  })

  test('should return 0 when n is 0', () => {
    expect(lesson.solution(0)).toBe(0); // S(0) = 0
  })

  test('should return the correct sum for n = 1', () => {
    expect(lesson.solution(1)).toBe(1); // S(1) = 1^2 = 1
  })

  test('should return the correct sum for n = 2', () => {
    expect(lesson.solution(2)).toBe(5); // S(2) = 1^2 + 2^2 = 5
  })

  test('should return the correct sum for n = 3', () => {
    expect(lesson.solution(3)).toBe(14); // S(3) = 1^2 + 2^2 + 3^2 = 14
  })

  test('should return the correct sum for larger n', () => {
    expect(lesson.solution(5)).toBe(55); // S(5) = 1^2 + 2^2 + 3^2 + 4^2 + 5^2 = 55
    expect(lesson.solution(10)).toBe(385); // S(10) = 1^2 + 2^2 + ... + 10^2 = 385
  })
})

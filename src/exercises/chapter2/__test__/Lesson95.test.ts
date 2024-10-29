import Lesson95 from '../Lesson95'

describe('Lesson95 findAbsolute', () => {
  let lesson: Lesson95

  beforeEach(() => {
    lesson = new Lesson95()
  })

  test('should return absolute values for all positive numbers', () => {
    expect(lesson.findAbsolute(3, 5, 7)).toEqual([3, 5, 7])
  })

  test('should return absolute values for all negative numbers', () => {
    expect(lesson.findAbsolute(-3, -5, -7)).toEqual([3, 5, 7])
  })

  test('should return absolute values for a mix of positive and negative numbers', () => {
    expect(lesson.findAbsolute(-3, 5, -7)).toEqual([3, 5, 7])
  })

  test('should return absolute values for zero and negative numbers', () => {
    expect(lesson.findAbsolute(0, -5, -7)).toEqual([0, 5, 7])
  })

  test('should return absolute values for a mix of positive, negative, and zero', () => {
    expect(lesson.findAbsolute(-3, 0, 7)).toEqual([3, 0, 7])
  })
})

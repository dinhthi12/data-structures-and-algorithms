import Lesson83 from '../Lesson83'

describe('LessonCheckSign - haveSameSign', () => {
  const lesson83 = new Lesson83()

  test('should return true if both numbers are positive', () => {
    expect(lesson83.haveSameSign(5, 3)).toBe(true) // Both positive
  })

  test('should return true if both numbers are negative', () => {
    expect(lesson83.haveSameSign(-4, -2)).toBe(true) // Both negative
  })

  test('should return false if one number is positive and the other is negative', () => {
    expect(lesson83.haveSameSign(7, -3)).toBe(false) // One positive, one negative
  })

  test('should return false if one number is zero and the other is positive', () => {
    expect(lesson83.haveSameSign(0, 5)).toBe(false) // One zero, one positive
  })

  test('should return false if one number is zero and the other is negative', () => {
    expect(lesson83.haveSameSign(0, -6)).toBe(false) // One zero, one negative
  })

  test('should return true if both numbers are zero', () => {
    expect(lesson83.haveSameSign(0, 0)).toBe(true) // Both zero
  })
})
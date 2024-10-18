import { Lesson85 } from '../Lesson85'

describe('Lesson85: Month to Quarter', () => {
  const lesson85 = new Lesson85()

  // Mock console.log to capture the output
  let consoleSpy: jest.SpyInstance

  beforeEach(() => {
    consoleSpy = jest.spyOn(console, 'log').mockImplementation(() => {})
  })

  afterEach(() => {
    consoleSpy.mockRestore() // Restore console.log after each test
  })

  it('should print "First Quarter (Q1)" for months 1, 2, and 3', () => {
    lesson85.solution(1)
    expect(consoleSpy).toHaveBeenCalledWith('First Quarter (Q1)')

    lesson85.solution(2)
    expect(consoleSpy).toHaveBeenCalledWith('First Quarter (Q1)')

    lesson85.solution(3)
    expect(consoleSpy).toHaveBeenCalledWith('First Quarter (Q1)')
  })

  it('should print "Second Quarter (Q2)" for months 4, 5, and 6', () => {
    lesson85.solution(4)
    expect(consoleSpy).toHaveBeenCalledWith('Second Quarter (Q2)')

    lesson85.solution(5)
    expect(consoleSpy).toHaveBeenCalledWith('Second Quarter (Q2)')

    lesson85.solution(6)
    expect(consoleSpy).toHaveBeenCalledWith('Second Quarter (Q2)')
  })

  it('should print "Third Quarter (Q3)" for months 7, 8, and 9', () => {
    lesson85.solution(7)
    expect(consoleSpy).toHaveBeenCalledWith('Third Quarter (Q3)')

    lesson85.solution(8)
    expect(consoleSpy).toHaveBeenCalledWith('Third Quarter (Q3)')

    lesson85.solution(9)
    expect(consoleSpy).toHaveBeenCalledWith('Third Quarter (Q3)')
  })

  it('should print "Fourth Quarter (Q4)" for months 10, 11, and 12', () => {
    lesson85.solution(10)
    expect(consoleSpy).toHaveBeenCalledWith('Fourth Quarter (Q4)')

    lesson85.solution(11)
    expect(consoleSpy).toHaveBeenCalledWith('Fourth Quarter (Q4)')

    lesson85.solution(12)
    expect(consoleSpy).toHaveBeenCalledWith('Fourth Quarter (Q4)')
  })

  it('should print "Invalid month" for invalid inputs', () => {
    lesson85.solution(0)
    expect(consoleSpy).toHaveBeenCalledWith('Invalid month. Please enter a number between 1 and 12.')

    lesson85.solution(13)
    expect(consoleSpy).toHaveBeenCalledWith('Invalid month. Please enter a number between 1 and 12.')

    lesson85.solution(-1)
    expect(consoleSpy).toHaveBeenCalledWith('Invalid month. Please enter a number between 1 and 12.')
  })
})

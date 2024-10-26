import Lesson91 from '../Lesson91'

describe('Lesson91: Print all odd positive integers less than 100', () => {
  const lesson = new Lesson91()
  let consoleSpy: jest.SpyInstance

  beforeEach(() => {
    // Capture console output
    consoleSpy = jest.spyOn(console, 'log').mockImplementation()
  })

  afterEach(() => {
    // Restore console output after each test
    consoleSpy.mockRestore()
  })

  it('should print all odd numbers less than 100', () => {
    lesson.solution()

    // Generate expected array of odd numbers less than 100
    const expectedOutput = Array.from({ length: 50 }, (_, i) => i * 2 + 1)

    // Check if each expected number was logged in order
    expectedOutput.forEach((num, index) => {
      expect(consoleSpy).toHaveBeenNthCalledWith(index + 1, num)
    })

    // Ensure that the exact number of calls were made
    expect(consoleSpy).toHaveBeenCalledTimes(50)
  })
})

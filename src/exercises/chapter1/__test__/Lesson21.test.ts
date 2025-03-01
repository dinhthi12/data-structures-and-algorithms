import Lesson21 from '../Lesson21';

describe('Lesson21', () => {
  let lesson21: Lesson21;

  beforeAll(() => {
    lesson21 = new Lesson21();
  });

  // Test case 1: Sum of divisors of 6
  it('should return the correct sum of divisors for 6', () => {
    expect(lesson21.solution(6)).toBe(12);  // 1 + 2 + 3 + 6 = 12
  });

  // Test case 2: Sum of divisors of 28
  it('should return the correct sum of divisors for 28', () => {
    expect(lesson21.solution(28)).toBe(56); // 1 + 2 + 4 + 7 + 14 + 28 = 56
  });

  // Test case 3: Sum of divisors of 12
  it('should return the correct sum of divisors for 12', () => {
    expect(lesson21.solution(12)).toBe(28); // 1 + 2 + 3 + 4 + 6 + 12 = 28
  });

  // Test case 4: Sum of divisors of 1
  it('should return the correct sum of divisors for 1', () => {
    expect(lesson21.solution(1)).toBe(1);  // Only 1 is a divisor of 1
  });

  // Test case 5: Sum of divisors of a prime number (17)
  it('should return the correct sum of divisors for 17', () => {
    expect(lesson21.solution(17)).toBe(18); // 1 + 17 = 18 (since 17 is prime)
  });

  // Test case 6: Sum of divisors of 100
  it('should return the correct sum of divisors for 100', () => {
    expect(lesson21.solution(100)).toBe(217); // 1 + 2 + 4 + 5 + 10 + 20 + 25 + 50 + 100 = 217
  });

  // Test case 7: Sum of divisors of a large number (36)
  it('should return the correct sum of divisors for 36', () => {
    expect(lesson21.solution(36)).toBe(91); // 1 + 2 + 3 + 4 + 6 + 9 + 12 + 18 + 36 = 91
  });
});

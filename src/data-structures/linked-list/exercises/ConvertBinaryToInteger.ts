import linkedListNode from '../LinkedListNode';

/**
 * Convert Binary Number in a Linked list to Integer.
 * @param head - The head of the linked list that contains the binary digits.
 * @returns the decimal value of the binary number represented by the linked list.
 */
export function getDecimalValue(head: linkedListNode<number> | null): number {
  // Initialize the decimal number as 0
  let num: number = 0;

  // Traverse the linked list
  while (head) {
    // Multiply the current number by 2 (left shift), then add the current node's value (0 or 1)
    num = num * 2 + head.value;

    // Move to the next node in the linked list
    head = head.next;
  }

  // Return the final decimal value
  return num;
}

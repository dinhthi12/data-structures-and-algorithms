/**
 * Represents a node in a linked list.
 */

export default class linkedListNode<T> {
  // The value held by the node.
  value: T;

  // The next node in the linked list.
  next: linkedListNode<T> | null;

  /**
   * Constructs a new linked list node.
   *
   * @param value = The value to store in the node.
   * @param next - The next node in the list, or null if this is the last node.
   */
  constructor(value: T, next: linkedListNode<T> | null = null) {
    this.value = value;
    this.next = next;
  }

  /**
   * Converts the node's value to a string.
   *
   * @param callback - A function to customize how the value is convert to a string.
   * @returns The string representation of the value.
   */
  toString(callback?: (value: T) => string): string{
    return callback ? callback(this.value) : `${this.value}`;
  }
}

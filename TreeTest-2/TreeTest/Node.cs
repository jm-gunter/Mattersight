// Jeff Gunter, 4/12/16
using System;

namespace TreeTest
{
    /// <summary>
    /// Represents a node in a tree structure.
    /// </summary>
    /// <typeparam name="T">Type must implement IComparable.</typeparam>
    public class Node<T> where T : IComparable
    {
        public T Data { get; set; }
        public Node<T> LeftChild { get; set; }
        public Node<T> RightChild { get; set; }
        public HighlightType HighLightType { get; set; }

        public enum HighlightType
        {
            None = 0,
            Parent = 1,
            Child = 2
        }
    }
}

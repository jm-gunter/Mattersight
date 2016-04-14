// Jeff Gunter, 4/12/16
using System;
using System.Collections.Generic;

namespace TreeTest
{
    /// <summary>
    /// A representation of a simple binary tree.
    /// </summary>
    /// <typeparam name="T">The data type of each node.</typeparam>
    public class BinaryTree<T> where T : IComparable
    {
        private Queue<Node<T>> _nodeQueue = new Queue<Node<T>>();

        /// <summary>
        /// BinaryTree constructor.
        /// </summary>
        /// <param name="root">The root node.</param>
        public BinaryTree(Node<T> root)
        {
            this.Root = root;
        }

        /// <summary>
        /// Gets or sets the root node of this tree.
        /// </summary>
        public Node<T> Root { get; set; }

        /// <summary>
        /// Returns the parent node of the passed node.
        /// </summary>
        /// <param name="child">The child node.</param>
        /// <returns>The parent node.</returns>
        public Node<T> Parent(Node<T> child)
        {
            Node<T> returnNode = null;
            foreach (Node<T> parent in InOrderWalk())
            {
                if (parent.LeftChild == child || parent.RightChild == child)
                    returnNode = parent;
            }
            return returnNode;
        }

        /// <summary>
        /// Iterate over the nodes of this tree in order.
        /// </summary>
        /// <returns>Queue containing the tree nodes in order.</returns>
        public IEnumerable<Node<T>> InOrderWalk()
        {
            _nodeQueue.Clear();
            return InOrderWalk(Root);
        }

        private Queue<Node<T>> InOrderWalk (Node<T> node)
        {
            if (node != null)
            {
                InOrderWalk(node.LeftChild);
                _nodeQueue.Enqueue(node);
                InOrderWalk(node.RightChild);
            }
            return _nodeQueue;
        }

        /// <summary>
        /// Returns the first node found where node.Date.equals(value);
        /// </summary>
        /// <param name="value">The data value of the node to find.</param>
        /// <returns>The first matching node.</returns>
        public Node<T> GetNode(T value)
        {
            Node<T> node = null;
            foreach (Node<T> tempNode in InOrderWalk(Root))
            {
                if (tempNode.Data.Equals(value))
                {
                    node = tempNode;
                    break;
                }
            }
            return node;
        }

        /// <summary>
        /// Return the common parent node of the passed nodes.
        /// Assigns a highlight type to the input and return nodes.
        /// </summary>
        /// <param name="node1">The first child node.</param>
        /// <param name="node2">The second child node.</param>
        /// <returns>The common parent node.</returns>
        public Node<T> FindCommonParent(Node<T> node1, Node<T> node2)
        {
            return FindCommonParent(this, node1, node2);
        }

        private Node<T> FindCommonParent(BinaryTree<T> tree, Node<T> node1, Node<T> node2)
        {
            // The strategy is to build two stacks from each passed node to the root.
            // Then move thought the stacks and take note of where the differ. The last 
            // node before which will be the common parent.

            foreach (Node<T> node in InOrderWalk(Root)) 
                node.HighLightType = Node<T>.HighlightType.None; // reset any nodes that were previously highlighted
            Node<T> commonParent = null;
            if (node1 != null && node2 != null)
            {
                node1.HighLightType = node2.HighLightType = Node<T>.HighlightType.Child;
                Stack<Node<T>> s1 = new Stack<Node<T>>();
                Node<T> p1 = tree.Parent(node1);
                while (p1 != null)
                {
                    s1.Push(p1);
                    p1 = tree.Parent(p1);
                }
                Stack<Node<T>> s2 = new Stack<Node<T>>();
                Node<T> p2 = tree.Parent(node2);
                while (p2 != null)
                {
                    s2.Push(p2);
                    p2 = tree.Parent(p2);
                }
                while (s1.Count > 0 && s2.Count > 0 && s1.Peek() == s2.Peek())
                {
                    commonParent = s1.Pop();
                    s2.Pop();
                }
                commonParent.HighLightType = Node<T>.HighlightType.Parent;
            }
            return commonParent;
        }

        /// <summary>
        /// Prints a representation of this tree to the console, starting with the root.
        /// Nodes highlighted via the FindCommonParent method will have * appended if parent,
        /// '**' appended if child.
        /// </summary>
        public void PrintTree()
        {
            PrintTree(Root);
        }

        private void PrintTree(Node<T> node)
        {
            List<Node<T>> firstStack = new List<Node<T>>();
            firstStack.Add(node);
            List<List<Node<T>>> childListStack = new List<List<Node<T>>>();
            childListStack.Add(firstStack);

            while (childListStack.Count > 0)
            {
                List<Node<T>> childStack = childListStack[childListStack.Count - 1];

                if (childStack.Count == 0)
                {
                    childListStack.RemoveAt(childListStack.Count - 1);
                }
                else
                {
                    node = childStack[0];
                    childStack.RemoveAt(0);

                    string indent = "";
                    for (int i = 0; i < childListStack.Count - 1; i++)
                    {
                        indent += (childListStack[i].Count > 0) ? "|  " : "   ";
                    }

                    // Determine the highlight type to add
                    string highlight;
                    switch (node.HighLightType)
                    {
                        case Node<T>.HighlightType.Parent:
                            highlight = "*";
                            break;
                        case Node<T>.HighlightType.Child:
                            highlight = "**";
                            break;
                        default:
                            highlight = "";
                            break;
                    }

                    Console.WriteLine(indent + "+--" + node.Data + highlight);
                    List<Node<T>> children = new List<Node<T>>();
                    if (node.RightChild != null)
                        children.Add(node.RightChild);
                    if (node.LeftChild != null)
                        children.Add(node.LeftChild);
                    if (children.Count > 0)
                        childListStack.Add(children);
                }
            }
            Console.WriteLine();
        }
    }
}

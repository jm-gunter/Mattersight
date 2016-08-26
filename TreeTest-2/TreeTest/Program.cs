// Jeff Gunter, 4/12/16
using System;
using System.Collections.Generic;

namespace TreeTest
{
    class Program
    {
        static int Main(string[] args)
        {
            PrintHeader();
            string userEntry = "";
            BinaryTree<string> tree = null;
            while (true)
            {
                userEntry = Console.ReadLine();
                switch (userEntry.ToLower())
                {
                    case "q": // Quit
                        return 1;
                    case "d":
                        tree = BuildDefaultTree();
                        Console.WriteLine(SUCCESS_MESSAGE);
                        tree.PrintTree();
                        Console.WriteLine(TRY_AGAIN_MESSAGE);
                        break;
                    case "f": // Run FindCommonParent on current tree.
                        TryRunFindParent(tree);
                        break;
                    default: // Try to build new tree.
                        tree = TryBuildUserTree(userEntry);
                        if (tree != null)
                        {
                            Console.WriteLine(SUCCESS_MESSAGE);
                            tree.PrintTree();
                            Console.WriteLine(TRY_AGAIN_MESSAGE);
                        }
                        else
                        {
                            // Allow user to retry
                            Console.WriteLine(UNSUCCESSFUL_MESSAGE);
                            Console.WriteLine(TRY_AGAIN_MESSAGE);
                        }
                        break;
                }
            }
        }

        // Prompt user for node values and try to find common parent.
        private static void TryRunFindParent(BinaryTree<string> tree)
        {
            if (tree != null)
            {
                Console.WriteLine(String.Format(ENTER_NODE_MESSAGE, "first"));
                Node<string> n1 = tree.GetNode(Console.ReadLine());

                Console.WriteLine(String.Format(ENTER_NODE_MESSAGE, "second"));
                Node<string> n2 = tree.GetNode(Console.ReadLine());

                Node<string> parent = tree.FindCommonParent(n1, n2);
                if (parent != null)
                {
                    Console.WriteLine(String.Format(COMMON_PARENT_MESSAGE, n1.Data, n2.Data, parent.Data));
                    Console.WriteLine(TAGGED_MESSAGE);
                    tree.PrintTree();
                    Console.WriteLine(TRY_AGAIN_MESSAGE);
                }
                else
                {
                    Console.WriteLine(NULL_PARENT_MESSAGE);
                    Console.WriteLine(TRY_AGAIN_MESSAGE);
                }
            }
            else
            {
                Console.WriteLine(NULL_TREE_MESSAGE);
                Console.WriteLine(TRY_AGAIN_MESSAGE);
            }   
        }

        // Build a breadth first tree from user provided values separated by single spaces.
        // Values of ' ' are not permitted.
        private static BinaryTree<string> TryBuildUserTree(string userEntry)
        {
            BinaryTree<string> tree = null;
            try
            {
                List<Node<string>> nodes = new List<Node<string>>();
                string[] nodeValues = userEntry.Split(' ');
                if (!String.IsNullOrWhiteSpace(nodeValues[0]))
                {
                    tree = new BinaryTree<string>(new Node<string>() { Data = nodeValues[0] });
                    // loop though once to create the nodes
                    foreach (string nodeVal in nodeValues)
                    {
                        if (!String.IsNullOrWhiteSpace(nodeVal))
                        {
                            Node<string> node = tree.GetNode(nodeVal);
                            if (node == null)
                                node = new Node<string>() { Data = nodeVal };
                            nodes.Add(node);
                        }
                        else
                        {
                            Console.WriteLine(String.Format(INVALID_VALUE_MESSAGE, nodeVal));
                            return null;
                        }
                    }
                    // loop through again to assign parent/child relationships.
                    for (int i = 0; i < nodes.Count; i++)
                    {
                        Node<string> node = nodes[i];
                        if (2 * i + 1 < nodes.Count)
                            node.LeftChild = nodes[2 * i + 1];
                        if (2 * i + 2 < nodes.Count)
                            node.RightChild = nodes[2 * i + 2];
                    }
                }
                else
                {
                    Console.WriteLine(COULD_NOT_BUILD_ROOT_MESSAGE);
                    return tree;
                }
            }
            catch (Exception e)
            {
                Console.WriteLine("ERROR!" + e.Message);
            }
            return tree;
        }

        // the default tree dipects the structure from the skills test handout.
        private static BinaryTree<string> BuildDefaultTree()
        {
            Node<string> n7 = new Node<string>() { Data = "7" };
            Node<string> n6 = new Node<string>() { Data = "6" };
            Node<string> n5 = new Node<string>() { Data = "5", LeftChild = n6, RightChild = n7 };
            Node<string> n4 = new Node<string>() { Data = "4" };
            Node<string> n3 = new Node<string>() { Data = "3", LeftChild = n4, RightChild = n5 };
            Node<string> n2 = new Node<string>() { Data = "2" };
            Node<string> n1 = new Node<string>() { Data = "1", LeftChild = n2, RightChild = n3 };

            return new BinaryTree<string>(n1);
        }

        // Print standard intro. 
        private static void PrintHeader()
        {
            // These strings were not made constant because header only prints once.
            Console.WriteLine("Tree Test: Binary Tree Visualizer");
            Console.WriteLine("Keyboard commands:");
            Console.WriteLine("'D' - Create default tree (the tree from the handout)");
            Console.WriteLine("'F' - Run the find common parent routine");
            Console.WriteLine("'Q' - Exit Tree Test");
            Console.WriteLine();
            Console.WriteLine("Enter a sequence of values, separated by spaces");
            Console.WriteLine("to construct a binary tree in breadth first order.");
        }

        // Constants
        private const string TRY_AGAIN_MESSAGE = "Enter a command or another sequence.";
        private const string SUCCESS_MESSAGE = "\nThe following tree was created successfully:\n";
        private const string UNSUCCESSFUL_MESSAGE = "\nA tree could not be created from the data entered.";
        private const string ENTER_NODE_MESSAGE = "\nEnter the value of the {0} node";
        private const string COMMON_PARENT_MESSAGE = "\nThe common parent of node {0} and node {1} is node {2}.";
        private const string COULD_NOT_BUILD_ROOT_MESSAGE = "Could not create root node from first item.";
        private const string INVALID_VALUE_MESSAGE = "Invalid node value at item '{0}'. Tree construction aboorted.";
        private const string TAGGED_MESSAGE = "Parent and children are marked with '*' and '**' respectively.\n";
        private const string NULL_TREE_MESSAGE = "\nYou must create a tree before running the find parent routine.";
        private const string NULL_PARENT_MESSAGE = "\nCould not find common parent from given node values.";
    }
}

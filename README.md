My goal is to complete 1-2 LeetCode challenges a day 

------------------------------------------------------------------------------------------------------------------------------------------------------------------
Day 1: running sums, pivot index, is_ismorphic 

Problem 1: Given an array nums. We define a running sum of an array as runningSum[i] = sum(nums[0]…nums[i]).
           Return the running sum of nums.

Problem 2: Given an array of integers nums, calculate the pivot index of this array.
           The pivot index is the index where the sum of all the numbers strictly to the left of the index is equal to the sum of all the numbers strictly to the index's right.
           If the index is on the left edge of the array, then the left sum is 0 because there are no elements to the left. This also applies to the right edge of the array.
           Return the leftmost pivot index. If no such index exists, return -1.

Problem 3: Given two strings s and t, determine if they are isomorphic.
           Two strings s and t are isomorphic if the characters in s can be replaced to get t.
           All occurrences of a character must be replaced with another character while preserving the order of characters. No two characters may map to the same character, but a character may map to itself.

-------------------------------------------------------------------------------------------------------------------------------------------------------------------
Day 2: Is Subsequence, Merge Two Sorted Lists

Problem 1: Given two strings s and t, return true if s is a subsequence of t, or false otherwise.
           A subsequence of a string is a new string that is formed from the original string by deleting some (can be none) of the characters without disturbing the relative positions of the remaining characters. (i.e., "ace" is a subsequence of "abcde" while "aec" is not).

Problem 2: You are given the heads of two sorted linked lists list1 and list2.
           Merge the two lists in a one sorted list. The list should be made by splicing together the nodes of the first two lists.
           Return the head of the merged linked list.

-------------------------------------------------------------------------------------------------------------------------------------------------------------------
Day 3: Reverse Linked List, Middle of the Linked List

Problem 1: Given the head of a singly linked list, reverse the list, and return the reversed list.

Problem 2: Given the head of a singly linked list, return the middle node of the linked list.
           If there are two middle nodes, return the second middle node.

-------------------------------------------------------------------------------------------------------------------------------------------------------------------
Day 4: Best Time to Buy and Sell Stock, Longest Palindrome

Problem 1: You are given an array prices where prices[i] is the price of a given stock on the ith day.
           You want to maximize your profit by choosing a single day to buy one stock and choosing a different day in the future to sell that stock.
           Return the maximum profit you can achieve from this transaction. If you cannot achieve any profit, return 0.

Problem 2: Given a string s which consists of lowercase or uppercase letters, return the length of the longest palindrome that can be built with
           those letters.
           Letters are case sensitive, for example, "Aa" is not considered a palindrome here.

-------------------------------------------------------------------------------------------------------------------------------------------------------------------
Day 5: N-ary Tree Preorder Traversal, Binary Tree Level Order Traversal

Problem 1: Given the root of an n-ary tree, return the preorder traversal of its nodes' values.
           Nary-Tree input serialization is represented in their level order traversal. Each group of children is separated by the null value (See examples)

Problem 2: Given the root of a binary tree, return the level order traversal of its nodes' values. (i.e., from left to right, level by level).

-------------------------------------------------------------------------------------------------------------------------------------------------------------------

Day 6: First Bad Version, Validate Binary Search Tree

Problem 1: You are a product manager and currently leading a team to develop a new product. Unfortunately, the latest version of your product
           fails the quality check. Since each version is developed based on the previous version, all the versions after a bad version are also bad.
           Suppose you have n versions [1, 2, ..., n] and you want to find out the first bad one, which causes all the following ones to be bad.
           You are given an API bool isBadVersion(version) which returns whether version is bad. Implement a function to find the first bad version. You should minimize the number of calls to the API.

Problem 2: Given the root of a binary tree, determine if it is a valid binary search tree (BST).
           A valid BST is defined as follows:
           The left subtree of a node contains only nodes with keys less than the node's key.
           The right subtree of a node contains only nodes with keys greater than the node's key.
           Both the left and right subtrees must also be binary search trees.

-------------------------------------------------------------------------------------------------------------------------------------------------------------------

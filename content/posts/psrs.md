---
title: "Parallel Sorting with Random Sampling"
date: 2023-07-18T22:12:00-03:00
draft: false
---

## Introduction

This project was developed as the final assignment for the High Performance Computing (HPC) course of my CS graduation, at [ICMC-USP](https://www.icmc.usp.br). The goal was to implement a parallel version of the quicksort algorithm, using multiple processes, and inside each process, multiple threads.

## Reference

If we recap the quicksort algorithm, it is a divide-and-conquer algorithm that recursively sorts two **parts** of a 1D array. For each part of the initial array, the process is repeated until the array matches the base case (an array of size 1 is a sorted array). Attention to **parts**, because they are not halves: each element in each part is either lower or higher than the _pivot_, which can be any element of the initial array.

Many algorithms are not easily optimized. The best sorting algorithms (to my knowledge) have a big-O notation of O(n * log(n)). But even though our asimptotic complexity cannot be improved, we can rely on HPC techniques to 
In their work, Quinn (TODO: reference) proposed multiple strategies to create a sped-up quicksort.

## Algorithm Design

Although we would like to, sometimes the specification of the project requires us to be inflexible with some choices. In the case of this project, the steps ? and ? needed to be run in different processes.

## Implementation

The full implementation (mostly working) is available on a [repo](https://github.com/henriquenunez/psrs-omp-mpi). But there are some specific cases that are surely worth discussing here:

```
batata snippet
```

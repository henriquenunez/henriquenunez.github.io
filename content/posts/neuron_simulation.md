---
title: "Neuron Simulation"
date: 2023-07-14T17:43:31-03:00
draft: true
---

One of the subjects I took during my exchange semester at UAM Madrid was Neuroinformatics. For an assignment, we were required to simulate neurons using different mathematical and statistical models.

## Stochastic Model

The stochastic model is simple, and simplifies the neuron as a charge accumulator. At every simulation step, this value can increase with probability P_inc, and if the charge if above a firing threshold T, the neuron can fire with probabilty P_fire.

## Connections

What is the point of simulating neurons if not for simulating the interactions between those neurons? It is the whole point of biological information processing.

The connection scheme used is flow the charges to and from the neighboring neurons. We can specify weights for the connections, where a higher weight means a higher coupling between neurons. Depending on the weght value, different behaviors will appear in the neuron grid.

## Demonstration

The main task was to create multiple scenarios, varying the grid size and the connection parameters, such as 4-neighbordhood and neuron coupling. Look at this [animation](https://youtube.com/shorts/w9DCjTIrgjs).

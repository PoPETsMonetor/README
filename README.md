# Overview of each repository

This account holds the code developped for the paper "Scaling Up
Anonymous Communication with Efficient Nanopayment Channels". It is published for
transparency during the review process, and intended to run inside
private and controlled environments, such as Shadow simulations.  

We provide a few repositories, which contain the following code:  

## monetor-0.3.2.10

Contains our main part of the work: a proof-of-concept implementation of
our algorithms embedded in the Tor software. To build and install the
code, follow its readme. It also contains a bit more details on where
our changes are located, and the commit history might help as well.

## tor_mt_stats

A fork of Tor's code with our live measurements system intended to run
on exit relays. This code has been run during two weeks over 5 exit
relays.
If you intent to re-use this code or to modify it, please read paper's
section regarding efforts to preserve users privacy.

## mt_stats_scripts

Contains a few scripts used to parse/plot the data collection performed
on the live Tor network.

## shadow

Contains a fork of Rob Jansen's Shadow simulation tool with new plot
code dedicated to the payment channels developped in monetor-0.3.2.10

## shadow-plugin-tor

Contains a fork of Rob Jansen's shadow plugin with new parse tools
dedicated to our payment channel logs developped in monetor-0.3.2.10


# Performing a moneTor simulation

Assuming you have installed Shadow and Shadow-plugin-tor following their
instructions, and using the Tor version provided in monetor-0.3.2.10;
you should be all set to reproduce our results.

In this repository, 3 sh scripts can help you through these steps.
First, you need to generate a Shadow Tor topology. Use
generate_script.sh within a new directory (fill in the missing
variables).

There is mainly two torrc parameters to control the prioritization
advantage:

MoneTorPriorityMod 1.0
MoneTorFlowMod 0.0

If you want to play with those values, look into the paper about how
they work, and their purpose (one is for a linear scaling factor for
EWMA, and the other is a flow-control window size modification).

Run the simulation you created (that can takes days ...) Then, use
analyze_script.sh and plot_script.sh


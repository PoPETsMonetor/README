# README

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

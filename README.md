# README

This account holds the code developped for the paper "Monetary Tor
Incentives with Efficient Nanopayment Channels". It is published for
transparency during the review process, and intended to run inside
private and controlled environments, such as Shadow simulations.  

We provide a few repositories, which contain the following code:  

## monetor-0.3.2.10

Contains our main part of the work: a proof-of-concept implementation of
our algorithms embedded in the Tor software.

## tor_mt_stats

A fork of Tor's code with our live measurements system intended to run
on exit relays. This code has been run during two weeks over 5 exit
relays.  
Please read paper's section regarding efforts to preserve users privacy.

## shadow

Contains a fork of Rob Jansen's Shadow simulation tool with new plot
code dedicated to the payment channels developped in monetor-0.3.2.10

## shadow-plugin-tor

Contains a fork of Rob Jansend's shadow plugin with new parse tools
dedicated to our payment channel logs developped in monetor-0.3.2.10

## mt_stats_scripts

Contains a few scripts used to parse/plot the data collection performed
on the live Tor network.


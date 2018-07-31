# Prime number multiplication table generator

A simple ruby program that can output table which contains multiplication of prime numbers. It can work with the first 1229 primes. If the user does not explicitly choose count, ten will be used by default.

## Installation

Download the repository and make sure that you have at least Ruby 2.5 installed.

Then run:

    $ bundle install

## Usage

The simplest use case is to run:

    $ bin/primes

This will print multiplication table of the first ten prime number to STDOUT.


You can also specify the number of primes to be included in the table (up to 1229):

    $ bin/primes --count 913

For complete manual, run:

    $ bin/primes --help

## Limits

The program uses the [Sieve of Erathostenes](https://en.wikipedia.org/wiki/Sieve_of_Eratosthenes) algorithm for generating prime numbers. This is why there is a limit with the amount of prime number we can work with. We can easily increase this limit if we go to `lib/prime_multiplication_table.rb` and change the value of the constant `SIEVE_LIMIT`.

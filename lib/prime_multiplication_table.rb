require 'bundler/setup'
require 'commander'
require 'terminal-table'

class PrimeMultiplicationTable
  SIEVE_LIMIT = 10_000

  def initialize(total_count)
    @total_count = total_count
  end

  def sieve(max)
    primes = (0..max).to_a
    primes[0] = primes[1] = nil

    primes.each do |p|
      next unless p

      break if p*p > max
      (p*p).step(max,p) { |m| primes[m] = nil }
    end

    primes.compact
  end

  def create_table
    primes = sieve(SIEVE_LIMIT).take(@total_count)

    table = Terminal::Table.new do |t|
      t.headings = [' '] + primes

      t.rows = primes.count.times.map do |x|
        [primes[x]] + primes.count.times.map do |y|
          primes[x] * primes[y]
        end
      end
    end

    puts table
  end
end

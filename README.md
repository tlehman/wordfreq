# wordfreq

`wordfreq` is a simple command line that calculates word frequencies. 
It also supports character frequencies, with the `-c` option.

## Installation

Add this line to your application's Gemfile:

    gem 'wordfreq'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install wordfreq

## Usage

`wordfreq` is used in a similar manner to the common Unix utilities, such as `wc`:

### Use with a filename argument

    $ wordfreq filename.txt
    foo       17
    bar       11
    is        10
    vim       4
    baz       3
    something 1

### Use with standard input

    $ echo 'this is what it is not' | wordfreq
    is   2
    this 1
    what 1
    it   1
    not  1

### Use for character frequency

    $ wordfreq -c filename.txt
    e 29366
    s 20795
    i 19379
    a 19092
    r 17799
    t 16180
    o 15789
    n 15547
    l 12466
    d 9860
    u 9082
    c 8945
    p 7045
    m 6870
    g 6818
    h 6667
    b 5130
    f 4439
    y 4103
    w 2976
    k 2763
    v 2174
    x 1176
    z 801
    j 552
    q 529

## TODO
  
 - remove space from character count
 - fix Errno::EPIPE exception when piping output into other programs
 - profile program to find bottlenecks

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
6. Buy me coffee, or beer. Either are good.

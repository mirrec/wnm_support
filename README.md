# WnmSupport

add some useful methods to core class for rails project

## Installation

Add this line to your application's Gemfile:

    gem "wnm_support", :git => "git@bitbucket.org:mirrec/wnm_support.git"

And then execute:

    $ bundle

## Usage

### Core extentions


    1.to_b # => true
    1.to_b # => false

    true.to_i # => 1
    false.to_i # => 0

    "123".is_integer? # => true
    "123ad".is_integer? # => false

    "one more something".max_words(2, "..") # => "one more.."

    "some".to_a # => ["some"]
    1.to_a # => [1]

    [ ["k1", "v1"], ["k2", "v2"] ].map_to_hash{|item| {item.first => item.last} } # => {"k1" => "v1", "k2" => "b2"}

    [1,2,3,4].halved # => [ [1, 2], [3, 4] ]

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

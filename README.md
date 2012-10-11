# WnmSupport

add some useful methods to core class for rails project

## Installation

Add this line to your application's Gemfile:

    gem "wnm_support"

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

### Active record extensions


    # helpers
    class News < ActiveRecord::Base
      attribute_accessor :name

      def short_name
        helpers.truncate(name) # you can access any view helper methods by calling helpers
      end
    end

    # truncate
    News.truncate # destroy all records in database, without calling any callbacks

    # order be field
    News.create!(:name => "first") # id => 1
    News.create!(:name => "second") # id => 2
    News.create!(:name => "third") # id => 3

    news = News.order_by_field(:id, [2, 3, 1])
    news[0] # news record with id = 2
    news[1] # news record with id = 3
    news[2] # news record with id = 1

    # multi actions
    News.multi # => [:destroy] # every model has this method

    # destroy validation
    item = News.create!(:name => "new item")
    item.destroy # => false
    item.can_destroy? # => false

    class News < ActiveRecord::Base
      def can_destroy?
        name == "new item"
      end
    end

    item = News.find_by_name("new item")
    item.can_destroy? # => true
    item.destroy # => true

### View helpers

    bool_to_human true # => "yes"
    bool_to_human false # => "no"
    bool_to_human nil # => "no"

    bool_to_human_with_empty true # => "yes"
    bool_to_human_with_empty false # => "no"
    bool_to_human_with_empty nil # => ""


    url = youtube_prepare_url("youtube.com/watch?v=lala")
    url # => "youtube.com/v/lala"

    video = youtube_video(url, 100, 200)
    video # => <object width='100' height='200'><param url='youtube.com/v/lala'>...</object>

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

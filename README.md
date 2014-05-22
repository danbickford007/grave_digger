# Shovel/Grave Digger

  Simple library for automated web browsing and scraping.

## Installation

Add this line to your application's Gemfile:

    gem 'shovel'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install shovel

## Usage
    
    require 'shovel'

    request = Request.new('http://www.google.com')

    request.page.links

    request.page.links.first.click

    --------------------------------

    request.page.forms.first.submit({name: "test"})

    -------------------------------

    request.page.h1s

    request.page.paragraphs


##  Docs Coming Soon ...

## Contributing

1. Fork it ( http://github.com/<my-github-username>/shovel/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

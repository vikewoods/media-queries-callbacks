##Full Details

Visit the [enquire.js project page](http://wickynilliams.github.com/enquire.js/) for full details of the API.

##Quick Start

The main method you will be dealing with is `register`. It's basic signature is as follows:

```javascript
enquire.register(query /* string */, handler /* object || array  || function */);
```

`query` is the CSS media query you wish to respond to, and `handler` is an object containing any logic to handle the query. An example of usage is as follows:

```javascript
enquire.register("screen and (max-width:1000px)", {

    match : function() {},      // REQUIRED
                                // Triggered when the media query transitions
                                // *from an unmatched to a matched state*

    unmatch : function() {},    // OPTIONAL
                                // If supplied, triggered when the media query transitions
                                // *from a matched state to an unmatched state*.
                                // Also may be called when handler is unregistered (if destroy is not available)

    setup : function() {},      // OPTIONAL
                                // If supplied, triggered once immediately upon registration of the handler

    destroy : function() {},    // OPTIONAL
                                // If supplied, triggered when handler is unregistered. Place cleanup code here

    deferSetup : true           // OPTIONAL, defaults to false
                                // If set to true, defers execution the setup function
                                // until the media query is first matched. still triggered just once
}).fire();
```


## Installation

Add this line to your application's Gemfile:

    gem 'media-queries-callbacks'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install media-queries-callbacks

## Usage

TODO: Write usage instructions here

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

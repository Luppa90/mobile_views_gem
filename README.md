# MobileViews

This gem detects mobile users and will redirect them to a #{view_name}_mobile.html.erb file if it exists.
So a mobile user will be served the index_mobile.html.erb file instead of index.html.erb

The device detection is made possible thanks to the Device Detector gem: https://github.com/podigee/device_detector

## Installation

Add this line to your application's Gemfile:

    gem "mobile_views"
    
Then include the MobileViews module to your application.rb controller:

    ApplicationController < ActionController::Base
        include MobileViews

## Usage

Whenever you need a specific view for mobile, just create a copy of your view.html.erb file and rename it to view_mobile.html.erb

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/mobile_views.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

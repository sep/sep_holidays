
```ruby
require 'sep_holidays'

d = Date.new(2011, 12, 28)
d.is_sep_holiday? #=> true
    
d = Date.new(2011, 3, 7)
d.is_sep_holiday? #=> false
```
    
Mixin for `Date` to add the `is_sep_holiday?` method.

Holidays are up-to-date through 2013 currently.
    
    
    
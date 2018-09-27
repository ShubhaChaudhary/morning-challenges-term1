#
# Page Title
#
# Write a method that takes a URL and
# returns the website's title.
#
# Examples:
# pageTitle("http://google.com") => "Google"
# pageTitle("http://www.reddit.com") => "reddit: the front page of the internet"
#
# Check your answers by running the tests:
# ruby tests/16_page_title_test.rb
#
#  require 'uri'
#  uri=URI.parse("http://www.reddit.com")
def pageTitle(url)
  domain= url.split('//')[1].split('.')
  # name = domain[domain.index('com') - 1]
  name = domain[domain.length - 2]

end
puts pageTitle("http://www.reddit.com/youtube/rn123?name")
puts pageTitle("http://google.com")
puts pageTitle("http://bollywood.in/map?name=delhi")

# def pageTitle(url)
#   # your code here
# end
# p uri.host.split('//').first


# title="http://www.reddit.com"

# t = title.split('//')
# q = t.last
# name = q.split('.')
# r= name.index('com')
# p r
#  p name[r-1]





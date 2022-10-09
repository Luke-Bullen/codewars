# Instructions

# Write a function that when given a URL as a string, parses out just the domain name and returns it as a string. For example:

# * url = "http://github.com/carbonfive/raygun" -> domain name = "github"
# * url = "http://www.zombie-bites.com"         -> domain name = "zombie-bites"
# * url = "https://www.cnet.com"                -> domain name = cnet"


# My Solution


def domain_name(url)
  #   if url.nil?
  #     retun nil
  #   end
  #   url.sub(/(?:https?:\/{2})?(?:w{3}\.)?/, "").sub(/\..*/, "")
    url.nil? ? nil : url.sub(/(?:https?:\/{2})?(?:w{3}\.)?/, "").sub(/\..*/, "")
  end

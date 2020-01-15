# frozen_string_literal: true

module RouteConstraints
  class AppSubdomain < SubdomainMatcher
    def self.matches?(request)
      subdomains = %w[app]
      subdomain_matches? subdomains, request
    end
  end
end


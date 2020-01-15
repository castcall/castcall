# frozen_string_literal: true

module RouteConstraints
  class SubdomainMatcher
    def self.subdomain_matches?(subdomains, request)
      request.subdomains.present? && request.subdomain.starts_with?(*subdomains)
    end
  end
end

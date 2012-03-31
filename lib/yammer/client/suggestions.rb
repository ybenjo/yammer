module Yammer
  class Client
    # Defines methods to get/declines suggestions.
    module Suggestions
      # Return suggested groups and users.
      #
      # @format `:json`
      # @authenticated true
      # @rate_limited 
      # @param options [Hash] A customizable set of options.
      # @option options [Integer] :limit Returns only Return only the specified number of suggestions.
      # @option options [String] :id When declining a suggestion, pass its id.
      # @return [Hashie::Mash]
      # @see https://developer.yammer.com/api/#suggestions
      # @example
      # Yammer.get_suggestions
      def get_suggestions(options={})
        get('suggestions', options)
      end

      # Decline a suggestion specfic id.
      # @option options [String] :id When declining a suggestion, pass its id.
      def decline_suggestion(id)
        delete("suggestions/#{id}", options={})
      end
    end
  end
end

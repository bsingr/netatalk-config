require "netatalk-config/version"

module NetatalkConfig
  class << self
    def afp
      template.result binding
    end

    def shares
      @shares ||= {}
    end

  private

    def template
      ERB.new File.read(__FILE__).split("__END__\n").last
    end
  end
end

__END__
<% shares.each do |name, share| %>
[<%= name %>]
  path = <%= share['path'] %>
  <% if share['time_machine'] == true %>time machine = yes<% end %>
<% end %>

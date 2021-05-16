module SELinux
  module Cookbook
    module BooleanHelpers
      def selinux_bool(bool)
        if ['on', 'true', '1', true, 1].include? bool
          'on'
        elsif ['off', 'false', '0', false, 0].include? bool
          'off'
        else
          Chef::Log.error("Not a valid boolean value: #{bool}")
          nil
        end
      end

      module_function :selinux_bool
    end
  end
end

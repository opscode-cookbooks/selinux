module SELinux
  module Cookbook
    module InstallHelpers
      def default_install_packages
        case node['platform_family']
        when 'rhel', 'fedora', 'amazon'
          %w(make policycoreutils selinux-policy selinux-policy-targeted selinux-policy-devel libselinux-utils)
        when 'debian'
          %w(make policycoreutils selinux-basics selinux-policy-default selinux-policy-dev auditd)
        end
      end
    end
  end
end

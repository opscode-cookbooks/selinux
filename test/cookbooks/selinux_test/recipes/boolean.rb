selinux_boolean 'ssh_keysign' do
  value true
end

selinux_boolean 'staff_exec_content' do
  value false
end

selinux_boolean 'ssh_sysadm_login' do
  value 'on'
end

selinux_boolean 'squid_connect_any' do
  value 'off'
end

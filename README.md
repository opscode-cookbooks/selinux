# SELinux Cookbook

[![Build Status](https://travis-ci.org/chef-cookbooks/selinux.svg?branch=master)](https://travis-ci.org/chef-cookbooks/selinux) [![Cookbook Version](https://img.shields.io/cookbook/v/selinux.svg)](https://supermarket.chef.io/cookbooks/selinux)

The SELinux (Security Enhanced Linux) cookbook provides recipes for manipulating SELinux policy enforcement state.

SELinux can have one of three settings:

`Enforcing`

- Watches all system access checks, stops all 'Denied access'
- Default mode on RHEL systems

`Permissive`

- Allows access but reports violations

`Disabled`

- Disables SELinux from the system but is only read at boot time. If you set this flag, you must reboot.

Disable SELinux only if you plan to not use it. Use `Permissive` mode if you just need to debug your system.

## Requirements

- Chef 13 or higher

## Platform

- RHEL 6/7
- CentOS 6/7
- Fedora
- Ubuntu
- Debian

## Resources

The following resources are provided:

- [selinux_boolean](documentation/selinux_boolean.md)
- [selinux_install](documentation/selinux_install.md)
- [selinux_module](documentation/selinux_module.md)
- [selinux_state](documentation/selinux_state.md)

## License & Authors

- **Author:** Sean OMeara ([sean@sean.io](mailto:sean@sean.io))
- **Author:** Joshua Timberman ([joshua@chef.io](mailto:joshua@chef.io))
- **Author:** Jennifer Davis ([sigje@chef.io](mailto:sigje@chef.io))

**Copyright:** 2008-2018, Chef Software, Inc.

```
Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```

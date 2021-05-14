#
# Cookbook:: selinux
# Resource:: boolean
#
# Copyright:: 2016-2019, Chef Software, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

unified_mode true

property :boolean, String,
          name_property: true

property :value, [Integer, String, true, false],
          required: true,
          equal_to: %w(on off),
          coerce: proc { |p| SELinux::Cookbook::BooleanHelpers.selinux_bool(p) }

property :persistent, [true, false],
          default: true,
          desired_state: false

load_current_value do |new_resource|
  value shell_out!("getsebool #{new_resource.boolean}").stdout.split('-->').map(&:strip).last
end

action :set do
  converge_if_changed do
    cmd = 'setsebool'
    cmd += ' -P' if new_resource.persistent
    cmd += " #{new_resource.boolean} #{new_resource.value}"

    execute cmd
  end
end

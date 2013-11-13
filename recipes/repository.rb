#
# Cookbook Name:: gluster
# Recipe:: repository
#
# Copyright 2013, Biola University
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

apt_repository "ubuntu-glusterfs-3.4" do
  uri "http://ppa.launchpad.net/semiosis/ubuntu-glusterfs-3.4/ubuntu"
  distribution node['lsb']['codename']
  components ["main"]
  keyserver "keyserver.ubuntu.com"
  key "774BAC4D"
  deb_src true
	not_if do
		File.exists?("/etc/apt/sources.list.d/ubuntu-glusterfs-3.4.list")
	end
end
# Copyright 2025 Adrian C Miranda
# Licensed under the Educational Community License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.osedu.org/licenses/ECL-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

class Envspec < Formula
	version "0.0.1"
	desc "Modular CLI for setting up development environments"
	homepage "https://github.com/adriancmiranda/envspec"
	url "https://github.com/adriancmiranda/envspec/releases/download/v0.0.1/envspec-v0.0.1.tar.gz"
	sha256 "edef26cc54e025a50c44f02b68bf21a2e535016ad4c6f9d42bbfc029a6f97955"
	license "MIT"

	depends_on "bash"
	depends_on "gum" => :optional

	def install
		bin.install "requirements" => "envspec"
		prefix.install "examples", "README.md", "LICENSE"
	end

	test do
		assert_match "Uso:", shell_output("#{bin}/envspec 2>&1", 1)
	end
end

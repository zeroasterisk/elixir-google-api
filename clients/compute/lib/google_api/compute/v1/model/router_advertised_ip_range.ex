# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.Compute.V1.Model.RouterAdvertisedIpRange do
  @moduledoc """
  Description-tagged IP ranges for the router to advertise.

  ## Attributes

  - description (String.t): User-specified description for the IP range. Defaults to: `null`.
  - range (String.t): The IP range to advertise. The value must be a CIDR-formatted string. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :description => any(),
          :range => any()
        }

  field(:description)
  field(:range)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.RouterAdvertisedIpRange do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.RouterAdvertisedIpRange.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.RouterAdvertisedIpRange do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

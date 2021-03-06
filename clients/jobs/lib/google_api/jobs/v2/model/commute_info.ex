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

defmodule GoogleApi.Jobs.V2.Model.CommuteInfo do
  @moduledoc """
  Output only.  Commute details related to this job.

  ## Attributes

  - jobLocation (JobLocation): Location used as the destination in the commute calculation. Defaults to: `null`.
  - travelDuration (String.t): The number of seconds required to travel to the job location from the query location. A duration of 0 seconds indicates that the job is not reachable within the requested duration, but was returned as part of an expanded query. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :jobLocation => GoogleApi.Jobs.V2.Model.JobLocation.t(),
          :travelDuration => any()
        }

  field(:jobLocation, as: GoogleApi.Jobs.V2.Model.JobLocation)
  field(:travelDuration)
end

defimpl Poison.Decoder, for: GoogleApi.Jobs.V2.Model.CommuteInfo do
  def decode(value, options) do
    GoogleApi.Jobs.V2.Model.CommuteInfo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Jobs.V2.Model.CommuteInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

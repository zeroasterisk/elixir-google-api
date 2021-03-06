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

defmodule GoogleApi.AnalyticsReporting.V4.Model.Segment do
  @moduledoc """
  The segment definition, if the report needs to be segmented. A Segment is a subset of the Analytics data. For example, of the entire set of users, one Segment might be users from a particular country or city.

  ## Attributes

  - dynamicSegment (DynamicSegment): A dynamic segment definition in the request. Defaults to: `null`.
  - segmentId (String.t): The segment ID of a built-in or custom segment, for example &#x60;gaid::-3&#x60;. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dynamicSegment => GoogleApi.AnalyticsReporting.V4.Model.DynamicSegment.t(),
          :segmentId => any()
        }

  field(:dynamicSegment, as: GoogleApi.AnalyticsReporting.V4.Model.DynamicSegment)
  field(:segmentId)
end

defimpl Poison.Decoder, for: GoogleApi.AnalyticsReporting.V4.Model.Segment do
  def decode(value, options) do
    GoogleApi.AnalyticsReporting.V4.Model.Segment.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AnalyticsReporting.V4.Model.Segment do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

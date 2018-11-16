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

defmodule GoogleApi.DFAReporting.V28.Model.CustomRichMediaEvents do
  @moduledoc """
  Represents a Custom Rich Media Events group.

  ## Attributes

  - filteredEventIds ([DimensionValue]): List of custom rich media event IDs. Dimension values must be all of type dfa:richMediaEventTypeIdAndName. Defaults to: `null`.
  - kind (String.t): The kind of resource this is, in this case dfareporting#customRichMediaEvents. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :filteredEventIds => list(GoogleApi.DFAReporting.V28.Model.DimensionValue.t()),
          :kind => any()
        }

  field(:filteredEventIds, as: GoogleApi.DFAReporting.V28.Model.DimensionValue, type: :list)
  field(:kind)
end

defimpl Poison.Decoder, for: GoogleApi.DFAReporting.V28.Model.CustomRichMediaEvents do
  def decode(value, options) do
    GoogleApi.DFAReporting.V28.Model.CustomRichMediaEvents.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DFAReporting.V28.Model.CustomRichMediaEvents do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
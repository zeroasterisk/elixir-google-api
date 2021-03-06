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

defmodule GoogleApi.Games.V1.Model.Leaderboard do
  @moduledoc """
  This is a JSON template for the Leaderboard resource.

  ## Attributes

  - iconUrl (String.t): The icon for the leaderboard. Defaults to: `null`.
  - id (String.t): The leaderboard ID. Defaults to: `null`.
  - isIconUrlDefault (boolean()): Indicates whether the icon image being returned is a default image, or is game-provided. Defaults to: `null`.
  - kind (String.t): Uniquely identifies the type of this resource. Value is always the fixed string games#leaderboard. Defaults to: `null`.
  - name (String.t): The name of the leaderboard. Defaults to: `null`.
  - order (String.t): How scores are ordered. Possible values are:   - \&quot;LARGER_IS_BETTER\&quot; - Larger values are better; scores are sorted in descending order.  - \&quot;SMALLER_IS_BETTER\&quot; - Smaller values are better; scores are sorted in ascending order. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :iconUrl => any(),
          :id => any(),
          :isIconUrlDefault => any(),
          :kind => any(),
          :name => any(),
          :order => any()
        }

  field(:iconUrl)
  field(:id)
  field(:isIconUrlDefault)
  field(:kind)
  field(:name)
  field(:order)
end

defimpl Poison.Decoder, for: GoogleApi.Games.V1.Model.Leaderboard do
  def decode(value, options) do
    GoogleApi.Games.V1.Model.Leaderboard.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Games.V1.Model.Leaderboard do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

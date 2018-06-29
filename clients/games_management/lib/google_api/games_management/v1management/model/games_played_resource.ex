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

defmodule GoogleApi.GamesManagement.V1management.Model.GamesPlayedResource do
  @moduledoc """
  This is a JSON template for metadata about a player playing a game with the currently authenticated user.

  ## Attributes

  - autoMatched (boolean()): True if the player was auto-matched with the currently authenticated user. Defaults to: `null`.
  - timeMillis (String.t): The last time the player played the game in milliseconds since the epoch in UTC. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :autoMatched => any(),
          :timeMillis => any()
        }

  field(:autoMatched)
  field(:timeMillis)
end

defimpl Poison.Decoder, for: GoogleApi.GamesManagement.V1management.Model.GamesPlayedResource do
  def decode(value, options) do
    GoogleApi.GamesManagement.V1management.Model.GamesPlayedResource.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.GamesManagement.V1management.Model.GamesPlayedResource do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

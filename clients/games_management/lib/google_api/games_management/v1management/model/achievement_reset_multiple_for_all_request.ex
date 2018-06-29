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

defmodule GoogleApi.GamesManagement.V1management.Model.AchievementResetMultipleForAllRequest do
  @moduledoc """
  This is a JSON template for multiple achievements reset all request.

  ## Attributes

  - achievement_ids ([String.t]): The IDs of achievements to reset. Defaults to: `null`.
  - kind (String.t): Uniquely identifies the type of this resource. Value is always the fixed string gamesManagement#achievementResetMultipleForAllRequest. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :achievement_ids => list(any()),
          :kind => any()
        }

  field(:achievement_ids, type: :list)
  field(:kind)
end

defimpl Poison.Decoder,
  for: GoogleApi.GamesManagement.V1management.Model.AchievementResetMultipleForAllRequest do
  def decode(value, options) do
    GoogleApi.GamesManagement.V1management.Model.AchievementResetMultipleForAllRequest.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.GamesManagement.V1management.Model.AchievementResetMultipleForAllRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

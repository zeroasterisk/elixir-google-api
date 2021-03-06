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

defmodule GoogleApi.AndroidManagement.V1.Model.Command do
  @moduledoc """
  A command.

  ## Attributes

  - createTime (DateTime.t): The timestamp at which the command was created. The timestamp is automatically generated by the server. Defaults to: `null`.
  - duration (String.t): The duration for which the command is valid. The command will expire if not executed by the device during this time. The default duration if unspecified is ten minutes. There is no maximum duration. Defaults to: `null`.
  - errorCode (String.t): If the command failed, an error code explaining the failure. This is not set when the command is cancelled by the caller. Defaults to: `null`.
    - Enum - one of [COMMAND_ERROR_CODE_UNSPECIFIED, UNKNOWN, API_LEVEL, MANAGEMENT_MODE, INVALID_VALUE, UNSUPPORTED]
  - newPassword (String.t): For commands of type RESET_PASSWORD, optionally specifies the new password. Defaults to: `null`.
  - resetPasswordFlags ([String.t]): For commands of type RESET_PASSWORD, optionally specifies flags. Defaults to: `null`.
    - Enum - one of 
  - type (String.t): The type of the command. Defaults to: `null`.
    - Enum - one of [COMMAND_TYPE_UNSPECIFIED, LOCK, RESET_PASSWORD, REBOOT]
  - userName (String.t): The resource name of the user that owns the device in the form enterprises/{enterpriseId}/users/{userId}. This is automatically generated by the server based on the device the command is sent to. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createTime => DateTime.t(),
          :duration => any(),
          :errorCode => any(),
          :newPassword => any(),
          :resetPasswordFlags => list(any()),
          :type => any(),
          :userName => any()
        }

  field(:createTime, as: DateTime)
  field(:duration)
  field(:errorCode)
  field(:newPassword)
  field(:resetPasswordFlags, type: :list)
  field(:type)
  field(:userName)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidManagement.V1.Model.Command do
  def decode(value, options) do
    GoogleApi.AndroidManagement.V1.Model.Command.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidManagement.V1.Model.Command do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

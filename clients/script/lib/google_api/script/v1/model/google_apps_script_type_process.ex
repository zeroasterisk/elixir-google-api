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

defmodule GoogleApi.Script.V1.Model.GoogleAppsScriptTypeProcess do
  @moduledoc """
  Representation of a single script process execution that was started from the script editor, a trigger, an application, or using the Apps Script API. This is distinct from the &#x60;Operation&#x60; resource, which only represents executions started via the Apps Script API.

  ## Attributes

  - duration (String.t): Duration the execution spent executing. Defaults to: `null`.
  - functionName (String.t): Name of the function the started the execution. Defaults to: `null`.
  - processStatus (String.t): The executions status. Defaults to: `null`.
    - Enum - one of [PROCESS_STATUS_UNSPECIFIED, RUNNING, PAUSED, COMPLETED, CANCELED, FAILED, TIMED_OUT, UNKNOWN, DELAYED]
  - processType (String.t): The executions type. Defaults to: `null`.
    - Enum - one of [PROCESS_TYPE_UNSPECIFIED, ADD_ON, EXECUTION_API, TIME_DRIVEN, TRIGGER, WEBAPP, EDITOR, SIMPLE_TRIGGER, MENU, BATCH_TASK]
  - projectName (String.t): Name of the script being executed. Defaults to: `null`.
  - startTime (DateTime.t): Time the execution started. Defaults to: `null`.
  - userAccessLevel (String.t): The executing users access level to the script. Defaults to: `null`.
    - Enum - one of [USER_ACCESS_LEVEL_UNSPECIFIED, NONE, READ, WRITE, OWNER]
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :duration => any(),
          :functionName => any(),
          :processStatus => any(),
          :processType => any(),
          :projectName => any(),
          :startTime => DateTime.t(),
          :userAccessLevel => any()
        }

  field(:duration)
  field(:functionName)
  field(:processStatus)
  field(:processType)
  field(:projectName)
  field(:startTime, as: DateTime)
  field(:userAccessLevel)
end

defimpl Poison.Decoder, for: GoogleApi.Script.V1.Model.GoogleAppsScriptTypeProcess do
  def decode(value, options) do
    GoogleApi.Script.V1.Model.GoogleAppsScriptTypeProcess.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Script.V1.Model.GoogleAppsScriptTypeProcess do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

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

defmodule GoogleApi.Gmail.V1.Model.Delegate do
  @moduledoc """
  Settings for a delegate. Delegates can read, send, and delete messages, as well as view and add contacts, for the delegator&#39;s account. See \&quot;Set up mail delegation\&quot; for more information about delegates.

  ## Attributes

  - delegateEmail (String.t): The email address of the delegate. Defaults to: `null`.
  - verificationStatus (String.t): Indicates whether this address has been verified and can act as a delegate for the account. Read-only. Defaults to: `null`.
    - Enum - one of [accepted, expired, pending, rejected, verificationStatusUnspecified]
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :delegateEmail => any(),
          :verificationStatus => any()
        }

  field(:delegateEmail)
  field(:verificationStatus)
end

defimpl Poison.Decoder, for: GoogleApi.Gmail.V1.Model.Delegate do
  def decode(value, options) do
    GoogleApi.Gmail.V1.Model.Delegate.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Gmail.V1.Model.Delegate do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

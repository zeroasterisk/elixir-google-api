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

defmodule GoogleApi.Jobs.V2.Model.ExtendedCompensationFilter do
  @moduledoc """
  Deprecated. Always use CompensationFilter.  Input only.  Filter on job compensation type and amount.

  ## Attributes

  - compensationRange (ExtendedCompensationInfoCompensationRange): Optional.  Compensation range. Defaults to: `null`.
  - compensationUnits ([String.t]): Required.  Specify desired &#x60;base compensation entry&#39;s&#x60; ExtendedCompensationInfo.CompensationUnit. Defaults to: `null`.
    - Enum - one of 
  - currency (String.t): Optional.  Specify currency in 3-letter [ISO 4217](https://www.iso.org/iso-4217-currency-codes.html) format. If unspecified, jobs are returned regardless of currency. Defaults to: `null`.
  - includeJobWithUnspecifiedCompensationRange (boolean()): Optional.  Whether to include jobs whose compensation range is unspecified. Defaults to: `null`.
  - type (String.t): Required.  Type of filter. Defaults to: `null`.
    - Enum - one of [FILTER_TYPE_UNSPECIFIED, UNIT_ONLY, UNIT_AND_AMOUNT, ANNUALIZED_BASE_AMOUNT, ANNUALIZED_TOTAL_AMOUNT]
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :compensationRange =>
            GoogleApi.Jobs.V2.Model.ExtendedCompensationInfoCompensationRange.t(),
          :compensationUnits => list(any()),
          :currency => any(),
          :includeJobWithUnspecifiedCompensationRange => any(),
          :type => any()
        }

  field(:compensationRange, as: GoogleApi.Jobs.V2.Model.ExtendedCompensationInfoCompensationRange)
  field(:compensationUnits, type: :list)
  field(:currency)
  field(:includeJobWithUnspecifiedCompensationRange)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.Jobs.V2.Model.ExtendedCompensationFilter do
  def decode(value, options) do
    GoogleApi.Jobs.V2.Model.ExtendedCompensationFilter.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Jobs.V2.Model.ExtendedCompensationFilter do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

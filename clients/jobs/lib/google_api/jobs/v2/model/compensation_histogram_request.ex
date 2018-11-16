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

defmodule GoogleApi.Jobs.V2.Model.CompensationHistogramRequest do
  @moduledoc """
  Input only.  Compensation based histogram request.

  ## Attributes

  - bucketingOption (NumericBucketingOption): Required.  Numeric histogram options, like buckets, whether include min or max value. Defaults to: `null`.
  - type (String.t): Required.  Type of the request, representing which field the histogramming should be performed over. A single request can only specify one histogram of each &#x60;CompensationHistogramRequestType&#x60;. Defaults to: `null`.
    - Enum - one of [COMPENSATION_HISTOGRAM_REQUEST_TYPE_UNSPECIFIED, BASE, ANNUALIZED_BASE, ANNUALIZED_TOTAL]
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :bucketingOption => GoogleApi.Jobs.V2.Model.NumericBucketingOption.t(),
          :type => any()
        }

  field(:bucketingOption, as: GoogleApi.Jobs.V2.Model.NumericBucketingOption)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.Jobs.V2.Model.CompensationHistogramRequest do
  def decode(value, options) do
    GoogleApi.Jobs.V2.Model.CompensationHistogramRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Jobs.V2.Model.CompensationHistogramRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
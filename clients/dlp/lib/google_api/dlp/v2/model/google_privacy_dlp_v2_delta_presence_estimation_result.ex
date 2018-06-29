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

defmodule GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DeltaPresenceEstimationResult do
  @moduledoc """
  Result of the δ-presence computation. Note that these results are an estimation, not exact values.

  ## Attributes

  - deltaPresenceEstimationHistogram ([GooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucket]): The intervals [min_probability, max_probability) do not overlap. If a value doesn&#39;t correspond to any such interval, the associated frequency is zero. For example, the following records:   {min_probability: 0, max_probability: 0.1, frequency: 17}   {min_probability: 0.2, max_probability: 0.3, frequency: 42}   {min_probability: 0.3, max_probability: 0.4, frequency: 99} mean that there are no record with an estimated probability in [0.1, 0.2) nor larger or equal to 0.4. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :deltaPresenceEstimationHistogram =>
            list(
              GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucket.t()
            )
        }

  field(
    :deltaPresenceEstimationHistogram,
    as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucket,
    type: :list
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DeltaPresenceEstimationResult do
  def decode(value, options) do
    GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DeltaPresenceEstimationResult.decode(value, options)
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DeltaPresenceEstimationResult do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
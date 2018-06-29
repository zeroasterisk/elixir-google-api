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

defmodule GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2LikelihoodAdjustment do
  @moduledoc """
  Message for specifying an adjustment to the likelihood of a finding as part of a detection rule.

  ## Attributes

  - fixedLikelihood (String.t): Set the likelihood of a finding to a fixed value. Defaults to: `null`.
    - Enum - one of [LIKELIHOOD_UNSPECIFIED, VERY_UNLIKELY, UNLIKELY, POSSIBLE, LIKELY, VERY_LIKELY]
  - relativeLikelihood (integer()): Increase or decrease the likelihood by the specified number of levels. For example, if a finding would be &#x60;POSSIBLE&#x60; without the detection rule and &#x60;relative_likelihood&#x60; is 1, then it is upgraded to &#x60;LIKELY&#x60;, while a value of -1 would downgrade it to &#x60;UNLIKELY&#x60;. Likelihood may never drop below &#x60;VERY_UNLIKELY&#x60; or exceed &#x60;VERY_LIKELY&#x60;, so applying an adjustment of 1 followed by an adjustment of -1 when base likelihood is &#x60;VERY_LIKELY&#x60; will result in a final likelihood of &#x60;LIKELY&#x60;. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :fixedLikelihood => any(),
          :relativeLikelihood => any()
        }

  field(:fixedLikelihood)
  field(:relativeLikelihood)
end

defimpl Poison.Decoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2LikelihoodAdjustment do
  def decode(value, options) do
    GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2LikelihoodAdjustment.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2LikelihoodAdjustment do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
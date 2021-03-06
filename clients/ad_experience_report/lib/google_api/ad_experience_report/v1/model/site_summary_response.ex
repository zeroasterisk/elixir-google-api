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

defmodule GoogleApi.AdExperienceReport.V1.Model.SiteSummaryResponse do
  @moduledoc """
  Response message for GetSiteSummary.

  ## Attributes

  - desktopSummary (PlatformSummary): Summary for the desktop review of the site. Defaults to: `null`.
  - mobileSummary (PlatformSummary): Summary for the mobile review of the site. Defaults to: `null`.
  - reviewedSite (String.t): The name of the site reviewed. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :desktopSummary => GoogleApi.AdExperienceReport.V1.Model.PlatformSummary.t(),
          :mobileSummary => GoogleApi.AdExperienceReport.V1.Model.PlatformSummary.t(),
          :reviewedSite => any()
        }

  field(:desktopSummary, as: GoogleApi.AdExperienceReport.V1.Model.PlatformSummary)
  field(:mobileSummary, as: GoogleApi.AdExperienceReport.V1.Model.PlatformSummary)
  field(:reviewedSite)
end

defimpl Poison.Decoder, for: GoogleApi.AdExperienceReport.V1.Model.SiteSummaryResponse do
  def decode(value, options) do
    GoogleApi.AdExperienceReport.V1.Model.SiteSummaryResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AdExperienceReport.V1.Model.SiteSummaryResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

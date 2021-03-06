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

defmodule GoogleApi.Licensing.V1.Model.LicenseAssignmentList do
  @moduledoc """
  LicesnseAssignment List for a given product/sku for a customer.

  ## Attributes

  - etag (String.t): ETag of the resource. Defaults to: `null`.
  - items ([LicenseAssignment]): The LicenseAssignments in this page of results. Defaults to: `null`.
  - kind (String.t): Identifies the resource as a collection of LicenseAssignments. Defaults to: `null`.
  - nextPageToken (String.t): The continuation token, used to page through large result sets. Provide this value in a subsequent request to return the next page of results. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :etag => any(),
          :items => list(GoogleApi.Licensing.V1.Model.LicenseAssignment.t()),
          :kind => any(),
          :nextPageToken => any()
        }

  field(:etag)
  field(:items, as: GoogleApi.Licensing.V1.Model.LicenseAssignment, type: :list)
  field(:kind)
  field(:nextPageToken)
end

defimpl Poison.Decoder, for: GoogleApi.Licensing.V1.Model.LicenseAssignmentList do
  def decode(value, options) do
    GoogleApi.Licensing.V1.Model.LicenseAssignmentList.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Licensing.V1.Model.LicenseAssignmentList do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

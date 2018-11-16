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

defmodule GoogleApi.Datastore.V1.Model.GoogleDatastoreAdminV1ListIndexesResponse do
  @moduledoc """
  The response for google.datastore.admin.v1.DatastoreAdmin.ListIndexes.

  ## Attributes

  - indexes ([GoogleDatastoreAdminV1Index]): The indexes. Defaults to: `null`.
  - nextPageToken (String.t): The standard List next-page token. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :indexes => list(GoogleApi.Datastore.V1.Model.GoogleDatastoreAdminV1Index.t()),
          :nextPageToken => any()
        }

  field(:indexes, as: GoogleApi.Datastore.V1.Model.GoogleDatastoreAdminV1Index, type: :list)
  field(:nextPageToken)
end

defimpl Poison.Decoder,
  for: GoogleApi.Datastore.V1.Model.GoogleDatastoreAdminV1ListIndexesResponse do
  def decode(value, options) do
    GoogleApi.Datastore.V1.Model.GoogleDatastoreAdminV1ListIndexesResponse.decode(value, options)
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Datastore.V1.Model.GoogleDatastoreAdminV1ListIndexesResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
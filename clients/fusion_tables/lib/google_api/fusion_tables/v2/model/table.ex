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

defmodule GoogleApi.FusionTables.V2.Model.Table do
  @moduledoc """
  Represents a table.

  ## Attributes

  - attribution (String.t): Attribution assigned to the table. Defaults to: `null`.
  - attributionLink (String.t): Optional link for attribution. Defaults to: `null`.
  - baseTableIds ([String.t]): Base table identifier if this table is a view or merged table. Defaults to: `null`.
  - columnPropertiesJsonSchema (String.t): Default JSON schema for validating all JSON column properties. Defaults to: `null`.
  - columns ([Column]): Columns in the table. Defaults to: `null`.
  - description (String.t): Description assigned to the table. Defaults to: `null`.
  - isExportable (boolean()): Variable for whether table is exportable. Defaults to: `null`.
  - kind (String.t): The kind of item this is. For a table, this is always fusiontables#table. Defaults to: `null`.
  - name (String.t): Name assigned to a table. Defaults to: `null`.
  - sql (String.t): SQL that encodes the table definition for derived tables. Defaults to: `null`.
  - tableId (String.t): Encrypted unique alphanumeric identifier for the table. Defaults to: `null`.
  - tablePropertiesJson (String.t): JSON object containing custom table properties. Defaults to: `null`.
  - tablePropertiesJsonSchema (String.t): JSON schema for validating the JSON table properties. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :attribution => any(),
          :attributionLink => any(),
          :baseTableIds => list(any()),
          :columnPropertiesJsonSchema => any(),
          :columns => list(GoogleApi.FusionTables.V2.Model.Column.t()),
          :description => any(),
          :isExportable => any(),
          :kind => any(),
          :name => any(),
          :sql => any(),
          :tableId => any(),
          :tablePropertiesJson => any(),
          :tablePropertiesJsonSchema => any()
        }

  field(:attribution)
  field(:attributionLink)
  field(:baseTableIds, type: :list)
  field(:columnPropertiesJsonSchema)
  field(:columns, as: GoogleApi.FusionTables.V2.Model.Column, type: :list)
  field(:description)
  field(:isExportable)
  field(:kind)
  field(:name)
  field(:sql)
  field(:tableId)
  field(:tablePropertiesJson)
  field(:tablePropertiesJsonSchema)
end

defimpl Poison.Decoder, for: GoogleApi.FusionTables.V2.Model.Table do
  def decode(value, options) do
    GoogleApi.FusionTables.V2.Model.Table.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.FusionTables.V2.Model.Table do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

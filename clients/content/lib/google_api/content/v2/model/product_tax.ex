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

defmodule GoogleApi.Content.V2.Model.ProductTax do
  @moduledoc """


  ## Attributes

  - country (String.t): The country within which the item is taxed, specified as a CLDR territory code. Defaults to: `null`.
  - locationId (String.t): The numeric ID of a location that the tax rate applies to as defined in the AdWords API. Defaults to: `null`.
  - postalCode (String.t): The postal code range that the tax rate applies to, represented by a ZIP code, a ZIP code prefix using * wildcard, a range between two ZIP codes or two ZIP code prefixes of equal length. Examples: 94114, 94*, 94002-95460, 94*-95*. Defaults to: `null`.
  - rate (float()): The percentage of tax rate that applies to the item price. Defaults to: `null`.
  - region (String.t): The geographic region to which the tax rate applies. Defaults to: `null`.
  - taxShip (boolean()): Set to true if tax is charged on shipping. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :country => any(),
          :locationId => any(),
          :postalCode => any(),
          :rate => any(),
          :region => any(),
          :taxShip => any()
        }

  field(:country)
  field(:locationId)
  field(:postalCode)
  field(:rate)
  field(:region)
  field(:taxShip)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V2.Model.ProductTax do
  def decode(value, options) do
    GoogleApi.Content.V2.Model.ProductTax.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V2.Model.ProductTax do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

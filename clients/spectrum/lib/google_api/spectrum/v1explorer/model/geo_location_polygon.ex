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

defmodule GoogleApi.Spectrum.V1explorer.Model.GeoLocationPolygon do
  @moduledoc """
  A region is represented using the polygonal shape.

  ## Attributes

  - exterior (List[GeoLocationPoint]): When the geolocation describes a region, the exterior field refers to a list of latitude/longitude points that represent the vertices of a polygon. The first and last points must be the same. Thus, a minimum of four points is required. The following polygon restrictions from RFC5491 apply:   - A connecting line shall not cross another connecting line of the same polygon.  - The vertices must be defined in a counterclockwise order.  - The edges of a polygon are defined by the shortest path between two points in space (not a geodesic curve). Consequently, the length between two adjacent vertices should be restricted to a maximum of 130 km.  - All vertices are assumed to be at the same altitude.  - Polygon shapes should be restricted to a maximum of 15 vertices (16 points that include the repeated vertex). Defaults to: `null`.
  """

  defstruct [
    :"exterior"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Spectrum.V1explorer.Model.GeoLocationPolygon do
  import GoogleApi.Spectrum.V1explorer.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"exterior", :list, GoogleApi.Spectrum.V1explorer.Model.GeoLocationPoint, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Spectrum.V1explorer.Model.GeoLocationPolygon do
  def encode(value, options) do
    GoogleApi.Spectrum.V1explorer.Deserializer.serialize_non_nil(value, options)
  end
end

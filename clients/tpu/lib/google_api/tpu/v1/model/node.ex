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

defmodule GoogleApi.TPU.V1.Model.Node do
  @moduledoc """
  A TPU instance.

  ## Attributes

  - acceleratorType (String.t): The type of hardware accelerators associated with this node. Required. Defaults to: `null`.
  - cidrBlock (String.t): The CIDR block that the TPU node will use when selecting an IP address. This CIDR block must be a /29 block; the Compute Engine networks API forbids a smaller block, and using a larger block would be wasteful (a node can only consume one IP address). Errors will occur if the CIDR block has already been used for a currently existing TPU node, the CIDR block conflicts with any subnetworks in the user&#39;s provided network, or the provided network is peered with another network that is using that CIDR block. Required. Defaults to: `null`.
  - createTime (DateTime.t): Output only. The time when the node was created. Defaults to: `null`.
  - description (String.t): The user-supplied description of the TPU. Maximum of 512 characters. Defaults to: `null`.
  - health (String.t): The health status of the TPU node. Defaults to: `null`.
    - Enum - one of [HEALTH_UNSPECIFIED, HEALTHY, DEPRECATED_UNHEALTHY, TIMEOUT, UNHEALTHY_TENSORFLOW, UNHEALTHY_MAINTENANCE]
  - healthDescription (String.t): Output only. If this field is populated, it contains a description of why the TPU Node is unhealthy. Defaults to: `null`.
  - ipAddress (String.t): Output only. DEPRECATED! Use network_endpoints instead. The network address for the TPU Node as visible to Compute Engine instances. Defaults to: `null`.
  - labels (%{optional(String.t) &#x3D;&gt; String.t}): Resource labels to represent user-provided metadata. Defaults to: `null`.
  - name (String.t): Output only. The immutable name of the TPU Defaults to: `null`.
  - network (String.t): The name of a network they wish to peer the TPU node to. It must be a preexisting Compute Engine network inside of the project on which this API has been activated. If none is provided, \&quot;default\&quot; will be used. Defaults to: `null`.
  - networkEndpoints ([NetworkEndpoint]): Output only. The network endpoints where TPU workers can be accessed and sent work. It is recommended that Tensorflow clients of the node reach out to the 0th entry in this map first. Defaults to: `null`.
  - port (String.t): Output only. DEPRECATED! Use network_endpoints instead. The network port for the TPU Node as visible to Compute Engine instances. Defaults to: `null`.
  - schedulingConfig (SchedulingConfig):  Defaults to: `null`.
  - serviceAccount (String.t): Output only. The service account used to run the tensor flow services within the node. To share resources, including Google Cloud Storage data, with the Tensorflow job running in the Node, this account must have permissions to that data. Defaults to: `null`.
  - state (String.t): Output only. The current state for the TPU Node. Defaults to: `null`.
    - Enum - one of [STATE_UNSPECIFIED, CREATING, READY, RESTARTING, REIMAGING, DELETING, REPAIRING, STOPPED, STOPPING, STARTING, PREEMPTED, TERMINATED, HIDING, HIDDEN, UNHIDING]
  - tensorflowVersion (String.t): The version of Tensorflow running in the Node. Required. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :acceleratorType => any(),
          :cidrBlock => any(),
          :createTime => DateTime.t(),
          :description => any(),
          :health => any(),
          :healthDescription => any(),
          :ipAddress => any(),
          :labels => map(),
          :name => any(),
          :network => any(),
          :networkEndpoints => list(GoogleApi.TPU.V1.Model.NetworkEndpoint.t()),
          :port => any(),
          :schedulingConfig => GoogleApi.TPU.V1.Model.SchedulingConfig.t(),
          :serviceAccount => any(),
          :state => any(),
          :tensorflowVersion => any()
        }

  field(:acceleratorType)
  field(:cidrBlock)
  field(:createTime, as: DateTime)
  field(:description)
  field(:health)
  field(:healthDescription)
  field(:ipAddress)
  field(:labels, type: :map)
  field(:name)
  field(:network)
  field(:networkEndpoints, as: GoogleApi.TPU.V1.Model.NetworkEndpoint, type: :list)
  field(:port)
  field(:schedulingConfig, as: GoogleApi.TPU.V1.Model.SchedulingConfig)
  field(:serviceAccount)
  field(:state)
  field(:tensorflowVersion)
end

defimpl Poison.Decoder, for: GoogleApi.TPU.V1.Model.Node do
  def decode(value, options) do
    GoogleApi.TPU.V1.Model.Node.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.TPU.V1.Model.Node do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

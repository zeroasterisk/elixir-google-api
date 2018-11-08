# Copyright 2018 Google Inc.
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

defmodule GoogleApi.Chat.V1.Model.Message do
  @moduledoc """
  A message in Hangouts Chat.

  ## Attributes

  - actionResponse (ActionResponse): Input only. Parameters that a bot can use to configure how its response is posted. Defaults to: `null`.
  - annotations ([Annotation]): Output only. Annotations associated with the text in this message. Defaults to: `null`.
  - argumentText (String.t): Plain-text body of the message with all bot mentions stripped out. Defaults to: `null`.
  - cards ([Card]): Rich, formatted and interactive cards that can be used to display UI elements such as: formatted texts, buttons, clickable images. Cards are normally displayed below the plain-text body of the message. Defaults to: `null`.
  - createTime (DateTime.t): Output only. The time at which the message was created in Hangouts Chat server. Defaults to: `null`.
  - fallbackText (String.t): A plain-text description of the message&#39;s cards, used when the actual cards cannot be displayed (e.g. mobile notifications). Defaults to: `null`.
  - name (String.t): Resource name, in the form \&quot;spaces/*/messages/*\&quot;.  Example: spaces/AAAAMpdlehY/messages/UMxbHmzDlr4.UMxbHmzDlr4 Defaults to: `null`.
  - previewText (String.t): Text for generating preview chips. This text will not be displayed to the user, but any links to images, web pages, videos, etc. included here will generate preview chips. Defaults to: `null`.
  - sender (User): The user who created the message. Defaults to: `null`.
  - space (Space): The space the message belongs to. Defaults to: `null`.
  - text (String.t): Plain-text body of the message. Defaults to: `null`.
  - thread (Thread): The thread the message belongs to. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :actionResponse => GoogleApi.Chat.V1.Model.ActionResponse.t(),
          :annotations => list(GoogleApi.Chat.V1.Model.Annotation.t()),
          :argumentText => any(),
          :cards => list(GoogleApi.Chat.V1.Model.Card.t()),
          :createTime => DateTime.t(),
          :fallbackText => any(),
          :name => any(),
          :previewText => any(),
          :sender => GoogleApi.Chat.V1.Model.User.t(),
          :space => GoogleApi.Chat.V1.Model.Space.t(),
          :text => any(),
          :thread => GoogleApi.Chat.V1.Model.Thread.t()
        }

  field(:actionResponse, as: GoogleApi.Chat.V1.Model.ActionResponse)
  field(:annotations, as: GoogleApi.Chat.V1.Model.Annotation, type: :list)
  field(:argumentText)
  field(:cards, as: GoogleApi.Chat.V1.Model.Card, type: :list)
  field(:createTime, as: DateTime)
  field(:fallbackText)
  field(:name)
  field(:previewText)
  field(:sender, as: GoogleApi.Chat.V1.Model.User)
  field(:space, as: GoogleApi.Chat.V1.Model.Space)
  field(:text)
  field(:thread, as: GoogleApi.Chat.V1.Model.Thread)
end

defimpl Poison.Decoder, for: GoogleApi.Chat.V1.Model.Message do
  def decode(value, options) do
    GoogleApi.Chat.V1.Model.Message.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Chat.V1.Model.Message do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
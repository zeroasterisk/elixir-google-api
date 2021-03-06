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

defmodule GoogleApi.BigQuery.V2.Model.TrainingRun do
  @moduledoc """
  Information about a single training query run for the model.

  ## Attributes

  - evaluationMetrics (EvaluationMetrics): The evaluation metrics over training/eval data that were computed at the end of training. Defaults to: `null`.
  - results ([IterationResult]): Output of each iteration run, results.size() &lt;&#x3D; max_iterations. Defaults to: `null`.
  - startTime (DateTime.t): The start time of this training run. Defaults to: `null`.
  - trainingOptions (TrainingOptions): Options that were used for this training run, includes user specified and default options that were used. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :evaluationMetrics => GoogleApi.BigQuery.V2.Model.EvaluationMetrics.t(),
          :results => list(GoogleApi.BigQuery.V2.Model.IterationResult.t()),
          :startTime => DateTime.t(),
          :trainingOptions => GoogleApi.BigQuery.V2.Model.TrainingOptions.t()
        }

  field(:evaluationMetrics, as: GoogleApi.BigQuery.V2.Model.EvaluationMetrics)
  field(:results, as: GoogleApi.BigQuery.V2.Model.IterationResult, type: :list)
  field(:startTime, as: DateTime)
  field(:trainingOptions, as: GoogleApi.BigQuery.V2.Model.TrainingOptions)
end

defimpl Poison.Decoder, for: GoogleApi.BigQuery.V2.Model.TrainingRun do
  def decode(value, options) do
    GoogleApi.BigQuery.V2.Model.TrainingRun.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigQuery.V2.Model.TrainingRun do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

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

defmodule GoogleApi.SQLAdmin.V1beta4.Api.BackupRuns do
  @moduledoc """
  API calls for all endpoints tagged `BackupRuns`.
  """

  alias GoogleApi.SQLAdmin.V1beta4.Connection
  import GoogleApi.SQLAdmin.V1beta4.RequestBuilder


  @doc """
  Deletes the backup taken by a backup run.

  ## Parameters

  - connection (GoogleApi.SQLAdmin.V1beta4.Connection): Connection to server
  - project (String): Project ID of the project that contains the instance.
  - instance (String): Cloud SQL instance ID. This does not include the project ID.
  - id (String): The ID of the Backup Run to delete. To find a Backup Run ID, use the list method.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.

  ## Returns

  {:ok, %GoogleApi.SQLAdmin.V1beta4.Model.Operation{}} on success
  {:error, info} on failure
  """
  @spec sql_backup_runs_delete(Tesla.Env.client, String.t, String.t, String.t, keyword()) :: {:ok, GoogleApi.SQLAdmin.V1beta4.Model.Operation.t} | {:error, Tesla.Env.t}
  def sql_backup_runs_delete(connection, project, instance, id, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query
    }
    %{}
    |> method(:delete)
    |> url("/projects/{project}/instances/{instance}/backupRuns/{id}", %{
         "project" => URI.encode_www_form(project),
         "instance" => URI.encode_www_form(instance),
         "id" => URI.encode_www_form(id)
       })
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.SQLAdmin.V1beta4.Model.Operation{})
  end

  @doc """
  Retrieves a resource containing information about a backup run.

  ## Parameters

  - connection (GoogleApi.SQLAdmin.V1beta4.Connection): Connection to server
  - project (String): Project ID of the project that contains the instance.
  - instance (String): Cloud SQL instance ID. This does not include the project ID.
  - id (String): The ID of this Backup Run.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.

  ## Returns

  {:ok, %GoogleApi.SQLAdmin.V1beta4.Model.BackupRun{}} on success
  {:error, info} on failure
  """
  @spec sql_backup_runs_get(Tesla.Env.client, String.t, String.t, String.t, keyword()) :: {:ok, GoogleApi.SQLAdmin.V1beta4.Model.BackupRun.t} | {:error, Tesla.Env.t}
  def sql_backup_runs_get(connection, project, instance, id, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query
    }
    %{}
    |> method(:get)
    |> url("/projects/{project}/instances/{instance}/backupRuns/{id}", %{
         "project" => URI.encode_www_form(project),
         "instance" => URI.encode_www_form(instance),
         "id" => URI.encode_www_form(id)
       })
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.SQLAdmin.V1beta4.Model.BackupRun{})
  end

  @doc """
  Creates a new backup run on demand. This method is applicable only to Second Generation instances.

  ## Parameters

  - connection (GoogleApi.SQLAdmin.V1beta4.Connection): Connection to server
  - project (String): Project ID of the project that contains the instance.
  - instance (String): Cloud SQL instance ID. This does not include the project ID.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :body (BackupRun): 

  ## Returns

  {:ok, %GoogleApi.SQLAdmin.V1beta4.Model.Operation{}} on success
  {:error, info} on failure
  """
  @spec sql_backup_runs_insert(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, GoogleApi.SQLAdmin.V1beta4.Model.Operation.t} | {:error, Tesla.Env.t}
  def sql_backup_runs_insert(connection, project, instance, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"body" => :body
    }
    %{}
    |> method(:post)
    |> url("/projects/{project}/instances/{instance}/backupRuns", %{
         "project" => URI.encode_www_form(project),
         "instance" => URI.encode_www_form(instance)
       })
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.SQLAdmin.V1beta4.Model.Operation{})
  end

  @doc """
  Lists all backup runs associated with a given instance and configuration in the reverse chronological order of the enqueued time.

  ## Parameters

  - connection (GoogleApi.SQLAdmin.V1beta4.Connection): Connection to server
  - project (String): Project ID of the project that contains the instance.
  - instance (String): Cloud SQL instance ID. This does not include the project ID.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :max_results (Integer): Maximum number of backup runs per response.
    - :page_token (String): A previously-returned page token representing part of the larger set of results to view.

  ## Returns

  {:ok, %GoogleApi.SQLAdmin.V1beta4.Model.BackupRunsListResponse{}} on success
  {:error, info} on failure
  """
  @spec sql_backup_runs_list(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, GoogleApi.SQLAdmin.V1beta4.Model.BackupRunsListResponse.t} | {:error, Tesla.Env.t}
  def sql_backup_runs_list(connection, project, instance, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"maxResults" => :query,
      :"pageToken" => :query
    }
    %{}
    |> method(:get)
    |> url("/projects/{project}/instances/{instance}/backupRuns", %{
         "project" => URI.encode_www_form(project),
         "instance" => URI.encode_www_form(instance)
       })
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.SQLAdmin.V1beta4.Model.BackupRunsListResponse{})
  end
end
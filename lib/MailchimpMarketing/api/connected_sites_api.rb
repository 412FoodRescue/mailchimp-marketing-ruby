=begin
#Mailchimp Marketing API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 3.0.72
Contact: apihelp@mailchimp.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.12

=end

require 'uri'

module MailchimpMarketing
  class ConnectedSitesApi
    attr_accessor :api_client

    def initialize(api_client)
      @api_client = api_client
    end

    # Delete connected site
    def remove(connected_site_id, opts = {})
      fail ArgumentError, "Missing required param: 'connected_site_id'" if connected_site_id.nil?

      query_params = {}
      post_body = nil

      local_var_path = '/connected-sites/{connected_site_id}'.sub('{' + 'connected_site_id' + '}', connected_site_id.to_s)
      data = @api_client.call_api(:DELETE, local_var_path,
        :query_params => query_params,
        :body => post_body)
      return data
    end

    # List connected sites
    def list(opts = {})
      fail ArgumentError, 'invalid value for "opts[:"count"]", must be smaller than or equal to 1000.' if !opts[:'count'].nil? && opts[:'count'] > 1000

      query_params = {}
      query_params[:'fields'] = @api_client.build_collection_param(opts[:'fields'], :csv) if !opts[:'fields'].nil?
      query_params[:'exclude_fields'] = @api_client.build_collection_param(opts[:'exclude_fields'], :csv) if !opts[:'exclude_fields'].nil?
      query_params[:'count'] = opts[:'count'] if !opts[:'count'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      post_body = nil

      local_var_path = '/connected-sites'
      data = @api_client.call_api(:GET, local_var_path,
        :query_params => query_params,
        :body => post_body)
      return data
    end

    # Get connected site
    def get(connected_site_id, opts = {})
      fail ArgumentError, "Missing required param: 'connected_site_id'" if connected_site_id.nil?

      query_params = {}
      query_params[:'fields'] = @api_client.build_collection_param(opts[:'fields'], :csv) if !opts[:'fields'].nil?
      query_params[:'exclude_fields'] = @api_client.build_collection_param(opts[:'exclude_fields'], :csv) if !opts[:'exclude_fields'].nil?
      post_body = nil

      local_var_path = '/connected-sites/{connected_site_id}'.sub('{' + 'connected_site_id' + '}', connected_site_id.to_s)
      data = @api_client.call_api(:GET, local_var_path,
        :query_params => query_params,
        :body => post_body)
      return data
    end

    # Add connected site
    def create(body, opts = {})
      fail ArgumentError, "Missing required param: 'body'" if body.nil?

      query_params = {}
      post_body = @api_client.object_to_http_body(body)

      local_var_path = '/connected-sites'
      data = @api_client.call_api(:POST, local_var_path,
        :query_params => query_params,
        :body => post_body)
      return data
    end

    # Verify connected site script
    def verify_script_installation(connected_site_id, opts = {})
      fail ArgumentError, "Missing required param: 'connected_site_id'" if connected_site_id.nil?

      query_params = {}
      post_body = nil

      local_var_path = '/connected-sites/{connected_site_id}/actions/verify-script-installation'.sub('{' + 'connected_site_id' + '}', connected_site_id.to_s)
      data = @api_client.call_api(:POST, local_var_path,
        :query_params => query_params,
        :body => post_body)
      return data
    end
  end
end

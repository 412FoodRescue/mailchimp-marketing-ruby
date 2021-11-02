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
  class LandingPagesApi
    attr_accessor :api_client

    def initialize(api_client)
      @api_client = api_client
    end

    # Delete landing page
    def delete_page(page_id, opts = {})
      fail ArgumentError, "Missing required param: 'page_id'" if page_id.nil?

      query_params = {}
      post_body = nil

      local_var_path = '/landing-pages/{page_id}'.sub('{' + 'page_id' + '}', page_id.to_s)
      data = @api_client.call_api(:DELETE, local_var_path,
        :query_params => query_params,
        :body => post_body)
      return data
    end

    # List landing pages
    def get_all(opts = {})
      fail ArgumentError, 'invalid value for "sort_dir", must be one of ASC, DESC' if opts[:'sort_dir'] && !['ASC', 'DESC'].include?(opts[:'sort_dir'])
      fail ArgumentError, 'invalid value for "sort_field", must be one of created_at, updated_at' if opts[:'sort_field'] && !['created_at', 'updated_at'].include?(opts[:'sort_field'])
      fail ArgumentError, 'invalid value for "opts[:"count"]", must be smaller than or equal to 1000.' if !opts[:'count'].nil? && opts[:'count'] > 1000

      query_params = {}
      query_params[:'sort_dir'] = opts[:'sort_dir'] if !opts[:'sort_dir'].nil?
      query_params[:'sort_field'] = opts[:'sort_field'] if !opts[:'sort_field'].nil?
      query_params[:'fields'] = @api_client.build_collection_param(opts[:'fields'], :csv) if !opts[:'fields'].nil?
      query_params[:'exclude_fields'] = @api_client.build_collection_param(opts[:'exclude_fields'], :csv) if !opts[:'exclude_fields'].nil?
      query_params[:'count'] = opts[:'count'] if !opts[:'count'].nil?
      post_body = nil

      local_var_path = '/landing-pages'
      data = @api_client.call_api(:GET, local_var_path,
        :query_params => query_params,
        :body => post_body)
      return data
    end

    # Get landing page info
    def get_page(page_id, opts = {})
      fail ArgumentError, "Missing required param: 'page_id'" if page_id.nil?

      query_params = {}
      query_params[:'fields'] = @api_client.build_collection_param(opts[:'fields'], :csv) if !opts[:'fields'].nil?
      query_params[:'exclude_fields'] = @api_client.build_collection_param(opts[:'exclude_fields'], :csv) if !opts[:'exclude_fields'].nil?
      post_body = nil

      local_var_path = '/landing-pages/{page_id}'.sub('{' + 'page_id' + '}', page_id.to_s)
      data = @api_client.call_api(:GET, local_var_path,
        :query_params => query_params,
        :body => post_body)
      return data
    end

    # Get landing page content
    def get_page_content(page_id, opts = {})
      fail ArgumentError, "Missing required param: 'page_id'" if page_id.nil?

      query_params = {}
      query_params[:'fields'] = @api_client.build_collection_param(opts[:'fields'], :csv) if !opts[:'fields'].nil?
      query_params[:'exclude_fields'] = @api_client.build_collection_param(opts[:'exclude_fields'], :csv) if !opts[:'exclude_fields'].nil?
      post_body = nil

      local_var_path = '/landing-pages/{page_id}/content'.sub('{' + 'page_id' + '}', page_id.to_s)
      data = @api_client.call_api(:GET, local_var_path,
        :query_params => query_params,
        :body => post_body)
      return data
    end

    # Update landing page
    def update_page(page_id, body, opts = {})
      fail ArgumentError, "Missing required param: 'page_id'" if page_id.nil?
      fail ArgumentError, "Missing required param: 'body'" if body.nil?

      query_params = {}
      post_body = @api_client.object_to_http_body(body)

      local_var_path = '/landing-pages/{page_id}'.sub('{' + 'page_id' + '}', page_id.to_s)
      data = @api_client.call_api(:PATCH, local_var_path,
        :query_params => query_params,
        :body => post_body)
      return data
    end

    # Add landing page
    def create(body, opts = {})
      fail ArgumentError, "Missing required param: 'body'" if body.nil?

      query_params = {}
      query_params[:'use_default_list'] = opts[:'use_default_list'] if !opts[:'use_default_list'].nil?
      post_body = @api_client.object_to_http_body(body)

      local_var_path = '/landing-pages'
      data = @api_client.call_api(:POST, local_var_path,
        :query_params => query_params,
        :body => post_body)
      return data
    end

    # Publish landing page
    def publish_page(page_id, opts = {})
      fail ArgumentError, "Missing required param: 'page_id'" if page_id.nil?

      query_params = {}
      post_body = nil

      local_var_path = '/landing-pages/{page_id}/actions/publish'.sub('{' + 'page_id' + '}', page_id.to_s)
      data = @api_client.call_api(:POST, local_var_path,
        :query_params => query_params,
        :body => post_body)
      return data
    end

    # Unpublish landing page
    def unpublish_page(page_id, opts = {})
      fail ArgumentError, "Missing required param: 'page_id'" if page_id.nil?

      query_params = {}
      post_body = nil

      local_var_path = '/landing-pages/{page_id}/actions/unpublish'.sub('{' + 'page_id' + '}', page_id.to_s)
      data = @api_client.call_api(:POST, local_var_path,
        :query_params => query_params,
        :body => post_body)
      return data
    end
  end
end

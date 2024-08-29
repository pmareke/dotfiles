return -- lazy.nvim
{
    "sontungexpt/url-open",
    branch = "main",
    event = "VeryLazy",
    cmd = "URLOpenUnderCursor",
    config = function()
        local status_ok, url_open = pcall(require, "url-open")
        if not status_ok then
            return
        end
        url_open.setup ({
          extra_patterns = {
            {
              pattern = "resource [\"]aws_([^%s]*)[\"]",
              prefix = "https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/",
              file_patterns = { ".*.tf" },
              excluded_file_patterns = nil,
            },
            {
              pattern = "data [\"]aws_([^%s]*)[\"]",
              prefix = "https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/",
              file_patterns = { ".*.tf" },
              excluded_file_patterns = nil,
            },
            {
              pattern = "resource [\"]sdm_([^%s]*)[\"]",
              prefix = "https://registry.terraform.io/providers/strongdm/sdm/latest/docs/resources/",
              file_patterns = { ".*.tf" },
              excluded_file_patterns = nil,
            },
            {
              pattern = "data [\"]sdm_([^%s]*)[\"]",
              prefix = "https://registry.terraform.io/providers/strongdm/sdm/latest/docs/data-sources/",
              file_patterns = { ".*.tf" },
              excluded_file_patterns = nil,
            },
            {
              pattern = "resource [\"]mongodbatlas_([^%s]*)[\"]",
              prefix = "https://registry.terraform.io/providers/mongodb/mongodbatlas/latest/docs/resources/",
              file_patterns = { ".*.tf" },
              excluded_file_patterns = nil,
            },
            {
              pattern = "data [\"]mongodbatlas_([^%s]*)[\"]",
              prefix = "https://registry.terraform.io/providers/mongodb/mongodbatlas/latest/docs/resources/",
              file_patterns = { ".*.tf" },
              excluded_file_patterns = nil,
            },
            {
              pattern = "resource [\"]datadog_([^%s]*)[\"]",
              prefix = "https://registry.terraform.io/providers/datadog/datadog/latest/docs/resources/",
              file_patterns = { ".*.tf" },
              excluded_file_patterns = nil,
            },
            {
              pattern = "data [\"]datadog_([^%s]*)[\"]",
              prefix = "https://registry.terraform.io/providers/datadog/datadog/latest/docs/data-sources/",
              file_patterns = { ".*.tf" },
              excluded_file_patterns = nil,
            },
          }
      })
    end,
}

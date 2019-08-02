
resource "null_resource" "null" {}

provider "shell" {}

data "shell_script" "test" {
  lifecycle_commands {
    read = <<EOF
		echo '{"commit_id": "text"}' >&3
		EOF
  }
}

output "commit_id" {
  value = data.shell_script.test.output["commit_id"]
}

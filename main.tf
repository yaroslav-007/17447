resource "null_resource" "null" {}



provider "shell" {}

data "shell_script" "test" {
  lifecycle_commands {
    read = <<EOF
	#	echo '{"commit_id": "'$(echo $(cat /etc/issue | awk '{print $1}'))'"}' >&3
  echo '{"commit_id": "echo '$(date)'"}' >&3
		EOF
  }
}

output "commit_id" {
  value = data.shell_script.test.output["commit_id"]
}

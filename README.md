# Ansible role sshd

Ansible role for management of ssh daemon.

## Requirements

None.

## Role variables

* `sshd_port`: SSHd port. Defaults to `22`.
* `sshd_password_auth`: Enable or disable password auth. Defaults to `"no"`.
* `sshd_permit_empty_passwords`: Permit empty passwords. Defaults to `"no"`.
* `sshd_permit_root_login`: Permit root user to login. Defaults to `"yes"`.
* `sshd_pub_key_auth`: Enable or disable public key auth. Defaults to `"yes"`.
* `sshd_extra_parameters`: Specify additional configuration. Defaults to `""`.

See `defaults/main.yml`.

## Dependencies

There are no extra dependencies as far as Ansible goes.

## Example Playbook

```
- hosts: all
  vars:
    sshd_permit_root_login: "no"
    sshd_extra_parameters: |
      UseDNS no
  roles:
     - role: sshd
```


## License

MIT

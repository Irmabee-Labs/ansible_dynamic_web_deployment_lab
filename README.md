# ansible_dynamic_web_deployment_lab

Automated deployment of a webserver with Terraform and Ansible.
# Dynamic Web Deployment with Terraform & Ansible

## Overview

This project demonstrates an automated end-to-end infrastructure and configuration workflow using **Terraform** and **Ansible**. A virtual machine is provisioned dynamically, configured via SSH, and validated through an HTTP check.

The goal is to showcase practical skills in:

* Infrastructure as Code (IaC)
* Configuration management
* Automated provisioning
* Service validation and connectivity testing

---

## Architecture

1. **Terraform** provisions a VM ("web") in the cloud
2. The VM's public IP is retrieved dynamically
3. **Ansible** uses dynamic inventory to connect via SSH
4. **Nginx** is installed and started on the VM
5. A final check verifies HTTP connectivity from the control node

---

## Tech Stack

* Terraform
* Ansible
* Linux (Ubuntu)
* Nginx
* SSH

---

## Project Structure

```
.
├── dynamic_deployment_3_6.yml   # Ansible playbook
├── web_3_6.tf                  # Terraform configuration
└── README.md
```

---

## How It Works

### Part A – Provision Infrastructure

* Runs `terraform init` and `terraform apply`
* Creates a VM instance.
* Extracts the instance IP using Terraform output.
* Dynamically adds the host to Ansible inventory.

### Part B – Configure VM

* Connects to the VM via SSH.
* Updates package cache.
* Installs and starts Nginx.

### Part C – Validation

* Executes a `curl` request from the control node.
* Confirms HTTP response from the deployed web server.

---

## Key Features

* Dynamic inventory (no static host files).
* Fully automated provisioning + configuration.
* Idempotent configuration using Ansible.
* Basic service health validation.

---

## Security Notes

* SSH private keys are not included in this repository.
* Terraform state files are no included.
* `StrictHostKeyChecking` is disabled for lab purposes only.

---

## How to Run

```bash
# Navigate to project
cd ansible_dynamic_web_deployment_lab

# Run Ansible playbook
ansible-playbook dynamic_deployment_3_6.yml
```

---

## Learning Outcomes

This project demonstrates:

* Practical use of Terraform and Ansible together.
* Understanding of provisioning vs configuration responsibilities.
* Remote configuration over SSH.
* Basic service validation and troubleshooting.

---

## Future Improvements

* Implement proper inventory management.
* Add HTTPS with Let's Encrypt.
* Improve security (host key verification, secrets handling)

---

## Author

Irma Beslic


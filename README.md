# 🚀 Dynamic Web Deployment with Terraform & Ansible

## 📌 Overview

This project demonstrates a fully automated workflow where infrastructure is provisioned and configured dynamically using **Terraform** and **Ansible**.

The deployment creates a VM, installs **Nginx**, and verifies connectivity — all in one execution.

---

## 🧱 Architecture Flow

* 🟢 Terraform provisions a VM ("web")
* 🌐 VM gets a private IP address
* 🔐 Ansible connects via SSH (dynamic inventory)
* ⚙️ Nginx is installed and started
* ✅ HTTP request verifies the service is reachable

---

## 🖼️ Deployment Proof

### 🌐 Nginx Running in Browser

![Nginx Welcome Page] <img width="1324" height="496" alt="image" src="https://github.com/user-attachments/assets/0569ed6d-be27-45e9-aeea-7d0b48be17ee" />

---

### 🧪 Ansible Execution Output

This shows the full pipeline execution:

* ✔️ Terraform init & apply
* ✔️ VM created
* ✔️ Dynamic host added
* ✔️ Nginx installed
* ✔️ HTTP 200 OK response verified

*(Add your terminal screenshot here if desired)*
<img width="1885" height="866" alt="image" src="https://github.com/user-attachments/assets/65751e7b-6a04-4425-aa7f-0c29a2cbabed" />





---

## 🛠️ Tech Stack

* ⚙️ Terraform (Infrastructure as Code)
* 🤖 Ansible (Configuration Management)
* 🐧 Linux (Ubuntu)
* 🌐 Nginx (Web Server)
* 🔑 SSH (Remote Access)

---

## 📁 Project Structure

```
.
├── dynamic_deployment_3_6.yml   # Ansible playbook
├── web_3_6.tf                  # Terraform configuration
├── image.png                   # Nginx proof screenshot
└── README.md
```

---

## ⚙️ How It Works

### 🅰️ Part A – Provision Infrastructure

* Runs `terraform init` and `terraform apply`
* Creates a VM instance
* Extracts IP using Terraform output
* Adds VM to Ansible dynamic inventory

### 🅱️ Part B – Configure VM

* Connects via SSH
* Updates package cache
* Installs and starts Nginx

### 🅲 Part C – Validation

* Executes `curl` from control node
* Confirms HTTP response (`200 OK`)

---

## 🌐 Networking Explanation

* 📍 The VM is assigned a **private IP (10.x.x.x)**
* 🔗 Access works because the client machine is on the **same internal network (VPN/university network)**
* 🚫 The service is **not publicly exposed to the internet**

---

## 🔐 Security Notes

* 🚫 SSH private keys are NOT stored in the repository,
* 🚫 Terraform state files are not included.
* ⚠️ `StrictHostKeyChecking=no` is used for lab purposes only

---

## ▶️ How to Run

```bash
ansible-playbook dynamic_deployment_3_6.yml
```

---

## 🎯 Key Takeaways

* 🧠 Clear separation of provisioning vs configuration
* 🔄 Dynamic infrastructure handling (no static inventory)
* ⚡ End-to-end automation in one workflow
* 🔍 Basic service validation using HTTP

---

## 🚀 Possible Improvements


* 🔐 Improve SSH security (host key verification)
* 
  
  

---

## 👤 Author

Irma Beslic

> Self-Healing DevOps System (Kubernetes + Prometheus + Alertmanager)

> Overview

This project demonstrates a self-healing DevOps system built using Kubernetes and monitoring tools.

The system is designed to:
- Detect failures automatically
- Trigger alerts using Prometheus
- Handle alerts using Alertmanager
- Perform automated recovery using scripts

It simulates real-world production scenarios where systems recover without manual intervention.

> Architecture

User → Application → Prometheus → Alertmanager → Auto-Healing Script → Kubernetes

> Tech Stack

- Docker (Containerization)
- Kubernetes (Orchestration)
- Prometheus (Monitoring)
- Alertmanager (Alerting)
- Grafana (Visualization)
- Bash (Automation scripts)

> Features

- Kubernetes-based deployment with scaling
- Liveness & Readiness probes for health checks
- Prometheus monitoring setup
- Custom alert rules for system issues
- Alertmanager for alert handling
- Automated recovery using scripts (self-healing)


> Project Progress

### ✅ Day 1: Kubernetes Setup
- Created deployment and service
- Added liveness and readiness probes
- Tested pod auto-recovery

### ✅ Day 2: Prometheus Alerts
- Created custom alert rules
- Triggered alerts based on CPU usage

### ✅ Day 3: Alertmanager
- Integrated Alertmanager with Prometheus
- Observed alert flow and notifications

### ✅ Day 4: Auto-Healing
- Created script to restart deployments
- Simulated failures and automated recovery

> Screenshots

### 🔔 Alertmanager Alerts
![Alertmanager](screenshots/alertmanager.png)

### 📊 Grafana Dashboard
![Grafana](screenshots/grafana.png)

### ☸️ Kubernetes Pods
![Kubernetes](screenshots/pods.png)


> How to Run

1. Clone the repository

2. Deploy Kubernetes resources:
   kubectl apply -f k8s/

3. Start monitoring stack:
   helm install monitoring prometheus-community/kube-prometheus-stack

4. Apply alert rules:
   kubectl apply -f alerts/

5. Run auto-healing script:
   ./scripts/auto-heal.sh



> Key Learnings

- Kubernetes enables self-healing through pod recreation
- Monitoring + Alerting is essential for production systems
- Automation reduces manual intervention
- Self-healing systems improve reliability and uptime






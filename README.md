# GitOps Version Control Lab

A hands-on Git and GitHub project demonstrating professional version control workflows used in **Cloud Engineering**, **DevOps**, **Cloud Security**, and **Infrastructure-as-Code** environments.

This project simulates how cloud and DevOps teams manage infrastructure code, scripts, documentation, rollback workflows, branching strategies, release tags, and pull requests using Git and GitHub.

---

## Project Overview

Cloud engineers do not only use Git for application code. They use Git to manage:

* Terraform infrastructure code
* Kubernetes manifests
* Dockerfiles
* CI/CD pipeline files
* Bash automation scripts
* Security policies
* IAM policy documents
* Incident response runbooks
* Architecture documentation
* Infrastructure change history

The purpose of this project is to demonstrate practical Git and GitHub workflows in a cloud engineering context.

Instead of only showing basic commands like `git add`, `git commit`, and `git push`, this project demonstrates real-world version control concepts such as:

* Feature branch workflow
* Infrastructure code change management
* Merge conflict resolution
* Rollback with `git revert`
* Release tagging
* Secure `.gitignore` usage
* GitHub pull requests
* Repository documentation
* Change tracking through commit history

---

## Why This Project Matters

In cloud engineering and DevOps teams, infrastructure changes must be tracked, reviewed, tested, and rolled back safely when needed.

A small mistake in infrastructure code can cause:

* Public cloud storage exposure
* Broken deployments
* Misconfigured security groups
* Failed CI/CD pipelines
* Service downtime
* Secrets accidentally pushed to GitHub
* Incorrect Kubernetes manifests
* Terraform state file exposure

This project demonstrates how Git can be used to manage changes safely and professionally.

---

## Target Roles This Project Supports

This project is relevant for:

* Cloud Engineer
* Cloud Security Engineer
* DevOps Engineer
* Platform Engineer
* Site Reliability Engineer
* Infrastructure Engineer
* Security Automation Engineer
* Cloud Support Engineer
* Junior DevSecOps Engineer

---

## Skills Demonstrated

| Skill Area                 | Demonstrated Through                                        |
| -------------------------- | ----------------------------------------------------------- |
| Git Basics                 | `init`, `status`, `add`, `commit`, `log`, `diff`            |
| Branching                  | Feature branches for infrastructure changes                 |
| GitHub Workflow            | Remote repository, push, pull, pull requests                |
| Merge Conflict Resolution  | Intentional conflict in infrastructure file                 |
| Rollback Strategy          | Safe undo using `git revert`                                |
| Release Management         | Version tags such as `v1.0.0`                               |
| Secure Git Practice        | `.gitignore` for secrets, logs, keys, and Terraform state   |
| Cloud Engineering Workflow | Simulated Terraform-style infrastructure files              |
| DevOps Workflow            | Deployment, rollback, and repo health scripts               |
| Documentation              | Branching, rollback, conflict resolution, and release notes |

---

## Repository Name

```text
gitops-version-control-lab
```

---

## Repository Structure

```text
gitops-version-control-lab/
│
├── README.md
├── CHANGELOG.md
├── .gitignore
│
├── infrastructure/
│   ├── main.tf
│   ├── variables.tf
│   └── outputs.tf
│
├── scripts/
│   ├── deploy.sh
│   ├── rollback.sh
│   └── health-check.sh
│
├── docs/
│   ├── git-command-cheatsheet.md
│   ├── branching-strategy.md
│   ├── merge-conflict-resolution.md
│   ├── rollback-and-revert.md
│   └── release-management.md
│
└── screenshots/
    ├── git-log-graph.png
    ├── branch-workflow.png
    ├── merge-conflict.png
    ├── pull-request.png
    ├── rollback-revert.png
    └── release-tag.png
```

---

## Project Architecture

```text
Developer / Cloud Engineer
        |
        v
Local Git Repository
        |
        |-- Feature Branches
        |-- Infrastructure Code Changes
        |-- Bash Script Changes
        |-- Documentation Updates
        |
        v
GitHub Repository
        |
        |-- Pull Requests
        |-- Merge Reviews
        |-- Release Tags
        |-- Change History
        |
        v
Stable Main Branch
```

---

## Simulated Cloud Infrastructure Files

This project includes Terraform-style infrastructure files for demonstration purposes.

The files do not deploy real cloud resources. They are included to simulate how cloud engineers manage Infrastructure-as-Code changes using Git.

### Example: `infrastructure/main.tf`

```hcl
# Simulated infrastructure file for Git version control practice.
# This project does not deploy real cloud resources.

resource "aws_s3_bucket" "secure_logs" {
  bucket = "company-secure-logs-demo"

  tags = {
    Environment = "dev"
    Owner       = "cloud-platform-security"
    Project     = "gitops-version-control-lab"
    Security    = "enabled"
    Compliance  = "logging"
  }
}
```

---

## Scripts Included

| Script            | Purpose                                                                   |
| ----------------- | ------------------------------------------------------------------------- |
| `deploy.sh`       | Simulates deployment validation                                           |
| `rollback.sh`     | Displays recent Git history and explains rollback workflow                |
| `health-check.sh` | Shows current branch, recent commits, repo status, and tracked file count |

---

## Script 1: Deployment Simulation

### File

```text
scripts/deploy.sh
```

### Purpose

This script simulates a cloud deployment validation process.

It does not deploy real infrastructure. Instead, it demonstrates how deployment scripts can be version-controlled and reviewed before execution.

### Example Run

```bash
./scripts/deploy.sh
```

### Example Output

```text
Starting simulated deployment...
Validating infrastructure files...
Running simulated plan...
No real cloud resources will be created.
Deployment simulation completed successfully.
```

### Cloud Relevance

Cloud engineers often version-control deployment scripts used for:

* Terraform plans
* Kubernetes deployments
* Docker deployments
* CI/CD workflows
* Server automation
* Infrastructure validation

---

## Script 2: Rollback Simulation

### File

```text
scripts/rollback.sh
```

### Purpose

This script displays recent commit history and explains rollback options.

### Example Run

```bash
./scripts/rollback.sh
```

### Commands Demonstrated

```bash
git log --oneline -5
git revert HEAD
git reset --hard HEAD~1
```

### Cloud Relevance

Rollback is critical when infrastructure changes introduce risk.

Examples:

* A security group is accidentally opened to the internet
* A Terraform variable breaks deployment
* A Kubernetes manifest causes pod failure
* A Docker image update breaks the service
* A CI/CD workflow misconfiguration blocks deployment

---

## Script 3: Repository Health Check

### File

```text
scripts/health-check.sh
```

### Purpose

This script gives a quick status overview of the Git repository.

### Example Run

```bash
./scripts/health-check.sh
```

### What It Shows

* Current branch
* Latest commits
* Working tree status
* Number of tracked files

### Example Commands Used

```bash
git branch --show-current
git log --oneline -5
git status --short
git ls-files | wc -l
```

---

## Git Workflows Demonstrated

---

## 1. Initial Repository Setup

The project begins by initializing a local Git repository.

```bash
git init
git status
git add .
git commit -m "Initial project structure for GitOps version control lab"
```

### Why This Matters

Every cloud infrastructure project should be version-controlled from the beginning. This creates a clear history of changes and makes rollback possible.

---

## 2. Secure `.gitignore` Configuration

The project includes a `.gitignore` file designed for cloud and infrastructure projects.

### Example `.gitignore`

```gitignore
# OS files
.DS_Store
Thumbs.db

# Logs
*.log

# Terraform files
.terraform/
*.tfstate
*.tfstate.backup
.terraform.lock.hcl

# Environment files
.env
*.pem
*.key

# Editor files
.vscode/
.idea/

# Backup files
*.bak
```

### Why This Matters

In cloud engineering, some files should never be committed to GitHub:

* `.env` files
* AWS credentials
* SSH private keys
* `.pem` files
* Terraform state files
* API keys
* database passwords
* security tokens

Accidentally committing these files can create serious security incidents.

---

## 3. Feature Branch Workflow

This project demonstrates a professional feature branch workflow.

### Example Branch

```bash
git checkout -b feature/add-security-tags
```

### Example Change

Security and compliance tags were added to a simulated infrastructure file.

```hcl
Security   = "enabled"
Compliance = "logging"
```

### Commands Used

```bash
git checkout -b feature/add-security-tags
git diff
git status
git add infrastructure/main.tf
git commit -m "Add security and compliance tags to infrastructure"
git checkout main
git merge feature/add-security-tags
```

### Why This Matters

Feature branches allow engineers to make changes without directly modifying the stable `main` branch.

This is important for:

* Terraform changes
* Kubernetes changes
* CI/CD changes
* IAM policy changes
* Security control updates
* Documentation updates

---

## 4. Merge Conflict Resolution

This project intentionally creates a merge conflict to demonstrate how conflicts are identified and resolved.

### Conflict Example

Two branches changed the same `Owner` tag in the same file.

```text
<<<<<<< HEAD
Owner = "cloud-security"
=======
Owner = "cloud-engineering"
>>>>>>> feature/update-owner-cloud
```

### Final Resolution

```hcl
Owner = "cloud-platform-security"
```

### Commands Used

```bash
git merge feature/update-owner-cloud
git status
nano infrastructure/main.tf
git add infrastructure/main.tf
git commit -m "Resolve owner tag merge conflict"
```

### Why This Matters

Merge conflicts are common in real teams.

A cloud engineer must be able to resolve conflicts safely, especially when working with:

* Terraform files
* Kubernetes YAML files
* CI/CD workflows
* IAM policies
* Dockerfiles
* Shared documentation

---

## 5. Safe Rollback with `git revert`

This project demonstrates how to safely undo a risky change.

### Risky Change Example

```hcl
# RISKY CHANGE: Public access enabled for testing
# public_access = true
```

### Safe Rollback Command

```bash
git revert HEAD
```

### Why `git revert` Is Safer

`git revert` creates a new commit that reverses a previous commit.

This is safer than deleting history because it preserves the audit trail.

### Why This Matters in Cloud

Cloud teams need safe rollback procedures when infrastructure changes create risk.

Examples:

* Public S3 bucket exposure
* Overly permissive security group
* Broken Terraform deployment
* Failed Kubernetes rollout
* Incorrect IAM permissions
* Bad CI/CD pipeline update

---

## 6. Release Tagging

This project demonstrates release tagging with Git.

### Create a Release Tag

```bash
git tag -a v1.0.0 -m "Initial stable GitOps lab release"
```

### View Tags

```bash
git tag
git show v1.0.0
```

### Push Tags to GitHub

```bash
git push --tags
```

### Why This Matters

Tags help mark stable project versions.

Cloud and DevOps teams use tags to track:

* stable Terraform module versions
* application release versions
* infrastructure baseline versions
* deployment milestones
* rollback points

---

## 7. GitHub Pull Request Workflow

This project includes GitHub pull request practice.

### Example Branch

```bash
git checkout -b feature/add-readme-details
```

### Push Branch

```bash
git push -u origin feature/add-readme-details
```

### Pull Request Title

```text
Improve README documentation for GitOps lab
```

### Pull Request Description

```markdown
## Summary
Improved README documentation for the GitOps Version Control Lab.

## Changes
- Added project overview
- Added cloud engineering relevance
- Added Git workflow explanation

## Testing
- Verified scripts are executable
- Checked git status and commit history
```

### Why This Matters

Pull requests are a major part of professional engineering workflows.

They allow teams to:

* review code before merging
* discuss infrastructure changes
* catch security mistakes
* validate documentation
* maintain clean project history

---

## GitHub Screenshots

Add screenshots of the completed workflows.

### Git Log Graph

```bash
git log --oneline --graph --all
```

![Git Log Graph](./screenshots/git-log-graph.png)

---

### Branch Workflow

![Branch Workflow](./screenshots/branch-workflow.png)

---

### Merge Conflict Resolution

![Merge Conflict](./screenshots/merge-conflict.png)

---

### GitHub Pull Request

![Pull Request](./screenshots/pull-request.png)

---

### Rollback with Git Revert

![Rollback Revert](./screenshots/rollback-revert.png)

---

### Release Tag

![Release Tag](./screenshots/release-tag.png)

---

## Git Command Cheat Sheet Used in This Project

### Repository Setup

```bash
git init
git status
git add .
git commit -m "Initial project setup"
```

### Remote Repository

```bash
git remote add origin https://github.com/YOUR_USERNAME/gitops-version-control-lab.git
git branch -M main
git push -u origin main
```

### Branching

```bash
git branch
git checkout -b feature/add-security-tags
git checkout main
git merge feature/add-security-tags
```

### Viewing History

```bash
git log
git log --oneline
git log --oneline --graph --all
git show COMMIT_ID
```

### Comparing Changes

```bash
git diff
git diff --staged
```

### Undo and Rollback

```bash
git restore FILE_NAME
git restore --staged FILE_NAME
git revert HEAD
```

### Tags

```bash
git tag -a v1.0.0 -m "Initial stable release"
git tag
git show v1.0.0
git push --tags
```

---

## Cloud Engineering Mapping

| Git Concept    | Cloud Engineering Use Case                            |
| -------------- | ----------------------------------------------------- |
| Git repository | Store Terraform, Kubernetes, Docker, and script files |
| Feature branch | Safely test infrastructure changes                    |
| Pull request   | Review changes before merging                         |
| Merge conflict | Resolve competing infrastructure edits                |
| `git diff`     | Review security-sensitive changes                     |
| `.gitignore`   | Prevent secrets and state files from being committed  |
| `git revert`   | Safely roll back risky changes                        |
| Tags           | Mark stable infrastructure releases                   |
| Commit history | Maintain audit trail for infrastructure changes       |
| GitHub Issues  | Track project tasks and improvements                  |

---

## Cloud Security Mapping

| Security Concern            | Git Practice Used                                  |
| --------------------------- | -------------------------------------------------- |
| Secrets exposure            | `.gitignore` excludes `.env`, `.pem`, `.key` files |
| Terraform state exposure    | `.tfstate` files ignored                           |
| Risky infrastructure change | Reverted with `git revert`                         |
| Unauthorized change risk    | Pull request workflow                              |
| Poor auditability           | Clean commit history                               |
| Unreviewed security changes | Feature branch and PR process                      |
| Release tracking            | Version tags                                       |

---

## Professional Git Workflow Demonstrated

This project follows a workflow similar to what cloud and DevOps teams use:

```text
Create Feature Branch
        |
        v
Make Infrastructure or Script Change
        |
        v
Review Diff
        |
        v
Commit with Clear Message
        |
        v
Push Branch to GitHub
        |
        v
Open Pull Request
        |
        v
Review and Merge
        |
        v
Tag Stable Release
```

---

## Example Commit Messages

This project uses clear commit messages such as:

```text
Initial project structure for GitOps version control lab
Add gitignore for infrastructure and secrets safety
Add simulated infrastructure configuration
Add deployment rollback and repository health check scripts
Add security and compliance tags to infrastructure
Resolve owner tag merge conflict
Add risky public access test change
Revert risky public access test change
Add release tag v1.0.0
Improve README documentation
```

Good commit messages help teams understand what changed and why.

---

## How to Run This Project Locally

### 1. Clone the Repository

```bash
git clone https://github.com/YOUR_USERNAME/gitops-version-control-lab.git
cd gitops-version-control-lab
```

### 2. Make Scripts Executable

```bash
chmod +x scripts/*.sh
```

### 3. Run Repository Health Check

```bash
./scripts/health-check.sh
```

### 4. Run Deployment Simulation

```bash
./scripts/deploy.sh
```

### 5. Run Rollback Simulation

```bash
./scripts/rollback.sh
```

---

## What I Learned

Through this project, I practiced:

* Creating and managing a Git repository
* Writing meaningful commit messages
* Using `.gitignore` to protect sensitive files
* Creating feature branches
* Reviewing changes with `git diff`
* Merging branches
* Resolving merge conflicts
* Reverting risky changes safely
* Creating release tags
* Working with GitHub pull requests
* Connecting Git workflows to cloud engineering and DevOps practices

---

## Future Improvements

Planned improvements:

* Add GitHub Actions CI workflow
* Add branch protection rules
* Add Terraform format validation
* Add ShellCheck for Bash scripts
* Add pre-commit hooks
* Add signed commits
* Add semantic versioning documentation
* Add issue templates
* Add pull request template
* Add GitHub security scanning
* Add secret scanning demonstration
* Add sample Terraform validation workflow

---

## Resume Bullet Points

### Cloud Engineering Version

Built a GitOps Version Control Lab demonstrating professional Git workflows for infrastructure code, including feature branching, pull requests, merge conflict resolution, rollback with `git revert`, release tagging, `.gitignore` security controls, and GitHub-based collaboration.

### Cloud Security Version

Developed a Git-based infrastructure change management simulation to demonstrate secure version control practices for Terraform-style files, rollback workflows, release tags, branch strategy, and prevention of secrets, keys, and state files from being committed.

### DevOps Version

Created a Git and GitHub workflow lab simulating DevOps change management with feature branches, merge conflict resolution, pull requests, version tags, rollback commands, and repository health-check scripts.

---

## Project Status

Current status: **Completed core version**

Completed:

* Git repository setup
* Secure `.gitignore`
* Simulated infrastructure files
* Bash scripts
* Feature branch workflow
* Merge conflict resolution
* Git revert rollback
* Release tag creation
* GitHub pull request practice
* Documentation
* Screenshots

---

## Author

**Waliur Sun**
Computer Science Student | Aspiring Cloud Security Engineer / Cloud Engineer

Focus areas:

* AWS Cloud
* Linux
* Terraform
* Git/GitHub
* DevOps
* Cloud Security
* Infrastructure Automation
* AI Security
* AI Infrastructure Operations

---

## Disclaimer

This project is for educational and portfolio purposes. The Terraform-style files are simulated and are not intended to deploy real cloud resources. The purpose of this project is to demonstrate Git, GitHub, version control, and infrastructure change management concepts.

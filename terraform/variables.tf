variable GITHUB_OWNER{
  type = string
  description = "Github user"
}

variable GITHUB_TOKEN {
  type = string
  description = "Github user token"
} 

variable FLUX_GITHUB_REPO {
  type =  string
  default = "gitops-flux-mbot-repo"
  description = "Repository for Flux gitops"
}

variable FLUX_GITHUB_TARGET_PATH {
  type        = string
  default     = "clusters"
  description = "Flux manifests subdirectory"
}

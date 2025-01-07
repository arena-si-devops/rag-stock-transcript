# Original Source Code: Ragtranscript Project
## Clone from here: github.com:shadi-fsai/ragtranscript

To use this tool you need to have API keys to [FMP](https://site.financialmodelingprep.com/), and a Groq API key.

Copy .env-example to .env and update with your keys.

Use 'poetry lock; poetry install; poetry run rt' to run it.

This project uses chromadb to create a vectordb of the embeddings of the documents retreived from fmp.

## Demo 
We want to demo a developer flow using a modern AI solution such as Bolt.diy where the AI bot can look at a repo, inventory the code and determine if a workflow exists and if not, create a workflow that does the following:
 - inventory
 - source code checkout
 - set up a build environment
 - build
 - test
 - scan
 - create an SBOM
 - create the attestation for SLSA Level3
 - push artifacts
 - package the application (containerize the software)
 - release the package as a versioned artifact

 Example Diagram of this pipeline can be found [here](https://github.com/arena-si-devops/docs/blob/main/DevOps-Best-Practice/ai-advanced-pipeline.md)

 ## Advanced DevOps Pipeline 

```mermaid
graph TD
    A[AI Inventory & Describe Source Code] --> B[Identify Workflows]
    B --> C[Create Required Workflow based on Code Language]
    C --> D[Run Workflow]
    D --> E[Build]
    E --> F[Test]
    F --> G[Scan]
    G --> H[SBOM Generation]
    H --> I[Attestation - SLSA Level 3]
    I --> J[Push Artifacts]
    J --> K[Package]
    K --> L[Release]

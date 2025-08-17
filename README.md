# Spark2025 - Lab Safety Compliance Smart Contract

## Description
This Move-based smart contract, built under the package **Spark2025**, is designed to ensure **Lab Safety Compliance** in decentralized environments.  
It provides a mechanism for participants to register their compliance status and allows verification before granting access to lab-related activities.

## Vision
To create a **secure and transparent compliance system** that ensures all lab participants acknowledge and follow safety protocols.  
The contract aims to improve accountability and prevent unauthorized or unsafe operations in academic and industrial research labs.

## Future Scope
- **Role-based compliance** (students, assistants, supervisors).  
- **Audit logging** for non-compliance events.  
- **Integration with IoT lab equipment** to restrict unsafe operations.  
- **Cross-institution deployment** for standardized safety management.  
- **Penalty and reward mechanisms** for lab safety enforcement.  

## Contract Address
Deployed at:  
`0x3bdc4a74a0b4d25431fe119dd45c884458e4ad15217dba0d6d47301829b1743c`

---

## Package Configuration
```toml
[package]
name = "Spark2025"
version = "1.0.0"
authors = []

[addresses]
MyModule='0x3bdc4a74a0b4d25431fe119dd45c884458e4ad15217dba0d6d47301829b1743c'

[dev-addresses]

[dependencies.AptosFramework]
git = "https://github.com/aptos-labs/aptos-framework.git"
rev = "mainnet"
subdir = "aptos-framework"

[dev-dependencies]

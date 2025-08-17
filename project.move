module MyModule::LabSafety {

    use aptos_framework::signer;

    /// Struct representing a Lab and its safety compliance
    struct Lab has store, key {
        compliance_score: u8,   // Current compliance score (0–100)
        required_score: u8,     // Minimum required compliance
    }

    /// Function to register a new Lab with a required safety compliance score
    public fun register_lab(owner: &signer, required_score: u8) {
        assert!(required_score <= 100, 1); // required_score should be valid
        let lab = Lab {
            compliance_score: 0,
            required_score,
        };
        move_to(owner, lab);
    }

    /// Function to update a Lab's compliance score after an inspection
    public fun update_compliance(owner: &signer, new_score: u8) acquires Lab {
        assert!(new_score <= 100, 2); // compliance score should be valid
        let lab = borrow_global_mut<Lab>(signer::address_of(owner));
        lab.compliance_score = new_score;
    }
}

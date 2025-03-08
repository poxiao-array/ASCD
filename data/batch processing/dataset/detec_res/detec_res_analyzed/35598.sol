'solc --version' running
'solc ./dataset/contracts/transaction_order/35598.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
Vault.withdrawTo(address,uint256).to (dataset/contracts/transaction_order/35598.sol#33) lacks a zero-check on :
		- to.transfer(amount) (dataset/contracts/transaction_order/35598.sol#38)
Vault.transferOwnership(address).to (dataset/contracts/transaction_order/35598.sol#43) lacks a zero-check on :
		- Owner = to (dataset/contracts/transaction_order/35598.sol#43)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-zero-address-validation
INFO:Detectors:
Modifier Vault.onlyOwner() (dataset/contracts/transaction_order/35598.sol#49) does not always execute _; or revert
Modifier Vault.isOpen() (dataset/contracts/transaction_order/35598.sol#50) does not always execute _; or revert
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-modifier
INFO:Detectors:
Vault.WithdrawalEnabled() (dataset/contracts/transaction_order/35598.sol#46) uses timestamp for comparisons
	Dangerous comparisons:
	- Date > 0 && Date <= now (dataset/contracts/transaction_order/35598.sol#46)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#block-timestamp
INFO:Detectors:
Version constraint ^0.4.15 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
	- DirtyBytesArrayToStorage
	- KeccakCaching
	- EmptyByteArrayCopy
	- DynamicArrayCleanup
	- ImplicitConstructorCallvalueCheck
	- TupleAssignmentMultiStackSlotComponents
	- MemoryArrayCreationOverflow
	- privateCanBeOverridden
	- SignedArrayStorageCopy
	- UninitializedFunctionPointerInConstructor_0.4.x
	- IncorrectEventSignatureInLibraries_0.4.x
	- ExpExponentCleanup
	- NestedArrayFunctionCallDecoder
	- ZeroFunctionSelector.
It is used by:
	- ^0.4.15 (dataset/contracts/transaction_order/35598.sol#1)
solc-0.4.15 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Function Vault.MinimumDeposit() (dataset/contracts/transaction_order/35598.sol#44) is not in mixedCase
Function Vault.ReleaseDate() (dataset/contracts/transaction_order/35598.sol#45) is not in mixedCase
Function Vault.WithdrawalEnabled() (dataset/contracts/transaction_order/35598.sol#46) is not in mixedCase
Function Vault.SetReleaseDate(uint256) (dataset/contracts/transaction_order/35598.sol#47) is not in mixedCase
Parameter Vault.SetReleaseDate(uint256).NewDate (dataset/contracts/transaction_order/35598.sol#47) is not in mixedCase
Variable Vault.Owner (dataset/contracts/transaction_order/35598.sol#9) is not in mixedCase
Variable Vault.Deposits (dataset/contracts/transaction_order/35598.sol#10) is not in mixedCase
Variable Vault.Locked (dataset/contracts/transaction_order/35598.sol#12) is not in mixedCase
Variable Vault.Date (dataset/contracts/transaction_order/35598.sol#13) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Slither:./dataset/contracts/transaction_order/35598.sol analyzed (1 contracts with 100 detectors), 16 result(s) found

'solc --version' running
'solc ./dataset/contracts/transaction_order/35652.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
ETHVault.Owner (dataset/contracts/transaction_order/35652.sol#10) shadows:
	- Owned.Owner (dataset/contracts/transaction_order/35652.sol#4)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#state-variable-shadowing
INFO:Detectors:
ETHVault.kill() (dataset/contracts/transaction_order/35652.sol#35-38) uses a dangerous strict equality:
	- require(bool)(this.balance == 0) (dataset/contracts/transaction_order/35652.sol#36)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#dangerous-strict-equalities
INFO:Detectors:
Modifier Owned.onlyOwner() (dataset/contracts/transaction_order/35652.sol#6) does not always execute _; or revert
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-modifier
INFO:Detectors:
ETHVault.isContract(address) (dataset/contracts/transaction_order/35652.sol#29-33) uses assembly
	- INLINE ASM (dataset/contracts/transaction_order/35652.sol#31-32)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#assembly-usage
INFO:Detectors:
Version constraint ^0.4.12 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
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
	- ZeroFunctionSelector
	- DelegateCallReturnValue
	- ECRecoverMalformedInput.
It is used by:
	- ^0.4.12 (dataset/contracts/transaction_order/35652.sol#1)
solc-0.4.12 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Variable Owned.Owner (dataset/contracts/transaction_order/35652.sol#4) is not in mixedCase
Variable ETHVault.Owner (dataset/contracts/transaction_order/35652.sol#10) is not in mixedCase
Variable ETHVault.Deposits (dataset/contracts/transaction_order/35652.sol#11) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Slither:./dataset/contracts/transaction_order/35652.sol analyzed (2 contracts with 100 detectors), 9 result(s) found

'solc --version' running
'solc ./dataset/contracts/transaction_order/3483.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
Forwarder.setup(address)._firstCorpBank (dataset/contracts/transaction_order/3483.sol#43) lacks a zero-check on :
		- currentCorpBank_ = _firstCorpBank (dataset/contracts/transaction_order/3483.sol#47)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-zero-address-validation
INFO:Detectors:
Forwarder.deposit() (dataset/contracts/transaction_order/3483.sol#24-33) compares to a boolean constant:
	-require(bool,string)(needsBank_ == false,Forwarder Deposit failed - no registered bank) (dataset/contracts/transaction_order/3483.sol#30)
Forwarder.setup(address) (dataset/contracts/transaction_order/3483.sol#43-49) compares to a boolean constant:
	-require(bool,string)(needsBank_ == true,Forwarder setup failed - corp bank already registered) (dataset/contracts/transaction_order/3483.sol#46)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#boolean-equality
INFO:Detectors:
Version constraint ^0.4.24 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
	- DirtyBytesArrayToStorage
	- ABIDecodeTwoDimensionalArrayMemory
	- KeccakCaching
	- EmptyByteArrayCopy
	- DynamicArrayCleanup
	- ImplicitConstructorCallvalueCheck
	- TupleAssignmentMultiStackSlotComponents
	- MemoryArrayCreationOverflow
	- privateCanBeOverridden
	- SignedArrayStorageCopy
	- ABIEncoderV2StorageArrayWithMultiSlotElement
	- DynamicConstructorArgumentsClippedABIV2
	- UninitializedFunctionPointerInConstructor_0.4.x
	- IncorrectEventSignatureInLibraries_0.4.x
	- ABIEncoderV2PackedStorage_0.4.x
	- ExpExponentCleanup
	- EventStructWrongData.
It is used by:
	- ^0.4.24 (dataset/contracts/transaction_order/3483.sol#1)
solc-0.4.24 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Parameter Forwarder.setup(address)._firstCorpBank (dataset/contracts/transaction_order/3483.sol#43) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
Forwarder.name (dataset/contracts/transaction_order/3483.sol#4) should be constant 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#state-variables-that-could-be-declared-constant
INFO:Slither:./dataset/contracts/transaction_order/3483.sol analyzed (1 contracts with 100 detectors), 7 result(s) found

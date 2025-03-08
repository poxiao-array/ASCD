'solc --version' running
'solc ./dataset/contracts/transaction_order/12376.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
SimpleEscrow.setDeveloperWallet(address) (dataset/contracts/transaction_order/12376.sol#35-38) should emit an event for: 
	- developerWallet = newDeveloperWallet (dataset/contracts/transaction_order/12376.sol#37) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-access-control
INFO:Detectors:
SimpleEscrow.setDeveloperWallet(address).newDeveloperWallet (dataset/contracts/transaction_order/12376.sol#35) lacks a zero-check on :
		- developerWallet = newDeveloperWallet (dataset/contracts/transaction_order/12376.sol#37)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-zero-address-validation
INFO:Detectors:
SimpleEscrow.orderNotAccepted() (dataset/contracts/transaction_order/12376.sol#44-47) uses timestamp for comparisons
	Dangerous comparisons:
	- require(bool)(now >= orderLastDate) (dataset/contracts/transaction_order/12376.sol#45)
SimpleEscrow.completeOrderBySafePeriod() (dataset/contracts/transaction_order/12376.sol#53-56) uses timestamp for comparisons
	Dangerous comparisons:
	- require(bool)(now >= safeLastDate) (dataset/contracts/transaction_order/12376.sol#54)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#block-timestamp
INFO:Detectors:
Version constraint ^0.4.18 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
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
	- ExpExponentCleanup
	- EventStructWrongData
	- NestedArrayFunctionCallDecoder.
It is used by:
	- ^0.4.18 (dataset/contracts/transaction_order/12376.sol#1)
solc-0.4.18 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Variable SimpleEscrow.PERIOD (dataset/contracts/transaction_order/12376.sol#5) is not in mixedCase
Variable SimpleEscrow.SAFE_PERIOD (dataset/contracts/transaction_order/12376.sol#7) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
SimpleEscrow.PERIOD (dataset/contracts/transaction_order/12376.sol#5) should be constant 
SimpleEscrow.SAFE_PERIOD (dataset/contracts/transaction_order/12376.sol#7) should be constant 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#state-variables-that-could-be-declared-constant
INFO:Slither:./dataset/contracts/transaction_order/12376.sol analyzed (1 contracts with 100 detectors), 10 result(s) found

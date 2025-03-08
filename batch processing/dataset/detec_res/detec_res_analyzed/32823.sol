'solc --version' running
'solc ./dataset/contracts/transaction_order/32823.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
EthWallet.EthWallet(address,uint256) (dataset/contracts/transaction_order/32823.sol#21-26) uses timestamp for comparisons
	Dangerous comparisons:
	- require(bool)(_icoEnd > now) (dataset/contracts/transaction_order/32823.sol#23)
EthWallet.fallback() (dataset/contracts/transaction_order/32823.sol#28-33) uses timestamp for comparisons
	Dangerous comparisons:
	- require(bool)(now < icoEndTimestamp) (dataset/contracts/transaction_order/32823.sol#29)
EthWallet.cleanup() (dataset/contracts/transaction_order/32823.sol#35-38) uses timestamp for comparisons
	Dangerous comparisons:
	- require(bool)(now > icoEndTimestamp) (dataset/contracts/transaction_order/32823.sol#36)
EthWallet.cleanupTo(address) (dataset/contracts/transaction_order/32823.sol#40-43) uses timestamp for comparisons
	Dangerous comparisons:
	- require(bool)(now > icoEndTimestamp) (dataset/contracts/transaction_order/32823.sol#41)
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
	- ^0.4.18 (dataset/contracts/transaction_order/32823.sol#1)
solc-0.4.18 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Parameter EthWallet.cleanupTo(address)._to (dataset/contracts/transaction_order/32823.sol#40) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Slither:./dataset/contracts/transaction_order/32823.sol analyzed (1 contracts with 100 detectors), 7 result(s) found

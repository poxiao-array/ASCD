'solc --version' running
'solc ./dataset/contracts/transaction_order/27117.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
CarnieGamesBlackBox.OpenBox(uint256) (dataset/contracts/transaction_order/27117.sol#14-25) sends eth to arbitrary user
	Dangerous calls:
	- msg.sender.transfer(this.balance) (dataset/contracts/transaction_order/27117.sol#22)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#functions-that-send-ether-to-arbitrary-destinations
INFO:Detectors:
Version constraint ^0.4.19 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
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
	- EventStructWrongData
	- NestedArrayFunctionCallDecoder.
It is used by:
	- ^0.4.19 (dataset/contracts/transaction_order/27117.sol#1)
solc-0.4.19 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Function CarnieGamesBlackBox.OpenBox(uint256) (dataset/contracts/transaction_order/27117.sol#14-25) is not in mixedCase
Function CarnieGamesBlackBox.GetHash(uint256) (dataset/contracts/transaction_order/27117.sol#27-33) is not in mixedCase
Function CarnieGamesBlackBox.Withdraw() (dataset/contracts/transaction_order/27117.sol#35-40) is not in mixedCase
Variable CarnieGamesBlackBox.Owner (dataset/contracts/transaction_order/27117.sol#8) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Slither:./dataset/contracts/transaction_order/27117.sol analyzed (1 contracts with 100 detectors), 7 result(s) found

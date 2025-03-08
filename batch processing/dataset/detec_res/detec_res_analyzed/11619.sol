'solc --version' running
'solc ./dataset/contracts/transaction_order/11619.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
ETH_GIFT.GetGift(bytes) (dataset/contracts/transaction_order/11619.sol#5-13) sends eth to arbitrary user
	Dangerous calls:
	- msg.sender.transfer(this.balance) (dataset/contracts/transaction_order/11619.sol#11)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#functions-that-send-ether-to-arbitrary-destinations
INFO:Detectors:
ETH_GIFT.SetReciver(address)._reciver (dataset/contracts/transaction_order/11619.sol#47) lacks a zero-check on :
		- reciver = _reciver (dataset/contracts/transaction_order/11619.sol#52)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-zero-address-validation
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
	- ^0.4.19 (dataset/contracts/transaction_order/11619.sol#1)
solc-0.4.19 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Contract ETH_GIFT (dataset/contracts/transaction_order/11619.sol#3-68) is not in CapWords
Function ETH_GIFT.GetGift(bytes) (dataset/contracts/transaction_order/11619.sol#5-13) is not in mixedCase
Function ETH_GIFT.GetGift() (dataset/contracts/transaction_order/11619.sol#15-23) is not in mixedCase
Function ETH_GIFT.GetHash(bytes) (dataset/contracts/transaction_order/11619.sol#33) is not in mixedCase
Function ETH_GIFT.SetPass(bytes32) (dataset/contracts/transaction_order/11619.sol#35-45) is not in mixedCase
Function ETH_GIFT.SetReciver(address) (dataset/contracts/transaction_order/11619.sol#47-54) is not in mixedCase
Parameter ETH_GIFT.SetReciver(address)._reciver (dataset/contracts/transaction_order/11619.sol#47) is not in mixedCase
Function ETH_GIFT.PassHasBeenSet(bytes32) (dataset/contracts/transaction_order/11619.sol#56-63) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
GetHash(bytes) should be declared external:
	- ETH_GIFT.GetHash(bytes) (dataset/contracts/transaction_order/11619.sol#33)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#public-function-that-could-be-declared-external
INFO:Slither:./dataset/contracts/transaction_order/11619.sol analyzed (1 contracts with 100 detectors), 13 result(s) found

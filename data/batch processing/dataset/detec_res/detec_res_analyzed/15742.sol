'solc --version' running
'solc ./dataset/contracts/transaction_order/15742.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
GIFT_ENVELOPE.GetGift(bytes) (dataset/contracts/transaction_order/15742.sol#5-13) sends eth to arbitrary user
	Dangerous calls:
	- msg.sender.transfer(this.balance) (dataset/contracts/transaction_order/15742.sol#11)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#functions-that-send-ether-to-arbitrary-destinations
INFO:Detectors:
GIFT_ENVELOPE.SetGiftTime(uint256) (dataset/contracts/transaction_order/15742.sol#49-56) should emit an event for: 
	- giftTime = date (dataset/contracts/transaction_order/15742.sol#54) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-arithmetic
INFO:Detectors:
GIFT_ENVELOPE.SetReciver(address)._reciver (dataset/contracts/transaction_order/15742.sol#58) lacks a zero-check on :
		- reciver = _reciver (dataset/contracts/transaction_order/15742.sol#63)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-zero-address-validation
INFO:Detectors:
GIFT_ENVELOPE.GetGift(bytes) (dataset/contracts/transaction_order/15742.sol#5-13) uses timestamp for comparisons
	Dangerous comparisons:
	- hashPass == keccak256()(pass) && now > giftTime (dataset/contracts/transaction_order/15742.sol#9)
GIFT_ENVELOPE.GetGift() (dataset/contracts/transaction_order/15742.sol#15-23) uses timestamp for comparisons
	Dangerous comparisons:
	- msg.sender == reciver && now > giftTime (dataset/contracts/transaction_order/15742.sol#19)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#block-timestamp
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
	- ^0.4.19 (dataset/contracts/transaction_order/15742.sol#1)
solc-0.4.19 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Contract GIFT_ENVELOPE (dataset/contracts/transaction_order/15742.sol#3-79) is not in CapWords
Function GIFT_ENVELOPE.GetGift(bytes) (dataset/contracts/transaction_order/15742.sol#5-13) is not in mixedCase
Function GIFT_ENVELOPE.GetGift() (dataset/contracts/transaction_order/15742.sol#15-23) is not in mixedCase
Function GIFT_ENVELOPE.GetHash(bytes) (dataset/contracts/transaction_order/15742.sol#35) is not in mixedCase
Function GIFT_ENVELOPE.SetPass(bytes32) (dataset/contracts/transaction_order/15742.sol#37-47) is not in mixedCase
Function GIFT_ENVELOPE.SetGiftTime(uint256) (dataset/contracts/transaction_order/15742.sol#49-56) is not in mixedCase
Function GIFT_ENVELOPE.SetReciver(address) (dataset/contracts/transaction_order/15742.sol#58-65) is not in mixedCase
Parameter GIFT_ENVELOPE.SetReciver(address)._reciver (dataset/contracts/transaction_order/15742.sol#58) is not in mixedCase
Function GIFT_ENVELOPE.PassHasBeenSet(bytes32) (dataset/contracts/transaction_order/15742.sol#67-74) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
GetHash(bytes) should be declared external:
	- GIFT_ENVELOPE.GetHash(bytes) (dataset/contracts/transaction_order/15742.sol#35)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#public-function-that-could-be-declared-external
INFO:Slither:./dataset/contracts/transaction_order/15742.sol analyzed (1 contracts with 100 detectors), 17 result(s) found

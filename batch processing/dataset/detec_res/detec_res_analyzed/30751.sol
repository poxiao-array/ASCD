'solc --version' running
'solc ./dataset/contracts/transaction_order/30751.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
MXLPresale.fallback() (dataset/contracts/transaction_order/30751.sol#171-185) uses timestamp for comparisons
	Dangerous comparisons:
	- now < PRESALE_START_DATE (dataset/contracts/transaction_order/30751.sol#173)
	- now > PRESALE_END_DATE (dataset/contracts/transaction_order/30751.sol#175)
MXLPresale.participantWithdrawIfMinimumFundingNotReached(uint256) (dataset/contracts/transaction_order/30751.sol#198-209) uses timestamp for comparisons
	Dangerous comparisons:
	- now <= PRESALE_END_DATE (dataset/contracts/transaction_order/30751.sol#200)
MXLPresale.ownerClawback() (dataset/contracts/transaction_order/30751.sol#214-219) uses timestamp for comparisons
	Dangerous comparisons:
	- now < OWNER_CLAWBACK_DATE (dataset/contracts/transaction_order/30751.sol#216)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#block-timestamp
INFO:Detectors:
MXLPresale.assertEquals(uint256,uint256) (dataset/contracts/transaction_order/30751.sol#232-234) is never used and should be removed
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#dead-code
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
	- ^0.4.19 (dataset/contracts/transaction_order/30751.sol#1)
solc-0.4.19 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Parameter MXLPresale.ownerWithdraw(uint256)._value (dataset/contracts/transaction_order/30751.sol#189) is not in mixedCase
Parameter MXLPresale.participantWithdrawIfMinimumFundingNotReached(uint256)._value (dataset/contracts/transaction_order/30751.sol#198) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Slither:./dataset/contracts/transaction_order/30751.sol analyzed (2 contracts with 100 detectors), 8 result(s) found

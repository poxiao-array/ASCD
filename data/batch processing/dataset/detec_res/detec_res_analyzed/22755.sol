'solc --version' running
'solc ./dataset/contracts/transaction_order/22755.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
Compilation warnings/errors on ./dataset/contracts/transaction_order/22755.sol:
./dataset/contracts/transaction_order/22755.sol:111:11: Warning: Failure condition of 'send' ignored. Consider using 'transfer' instead.
          old_owner.send(_paid * 98 / 100); /* not using transfer to avoid old_owner locking pixel by buying it from a contract that reverts when receiving funds */
          ^------------------------------^

INFO:Detectors:
Etherpixels.paint_pixel(uint256,bytes3,uint256) (dataset/contracts/transaction_order/22755.sol#93-114) ignores return value by old_owner.send(_paid * 98 / 100) (dataset/contracts/transaction_order/22755.sol#111)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#unchecked-send
INFO:Detectors:
usingOwnership.TransferOwnership(address) (dataset/contracts/transaction_order/22755.sol#21-24) should emit an event for: 
	- contract_owner = _new_owner (dataset/contracts/transaction_order/22755.sol#23) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-access-control
INFO:Detectors:
Etherpixels.LowerStartingPrice(uint256) (dataset/contracts/transaction_order/22755.sol#88-91) should emit an event for: 
	- starting_price = _new_starting_price (dataset/contracts/transaction_order/22755.sol#90) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-arithmetic
INFO:Detectors:
Etherpixels.paint_pixel(uint256,bytes3,uint256) (dataset/contracts/transaction_order/22755.sol#93-114) has external calls inside a loop: old_owner.send(_paid * 98 / 100) (dataset/contracts/transaction_order/22755.sol#111)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation/#calls-inside-a-loop
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
	- ^0.4.18 (dataset/contracts/transaction_order/22755.sol#1)
solc-0.4.18 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Contract usingOwnership (dataset/contracts/transaction_order/22755.sol#3-25) is not in CapWords
Function usingOwnership.Withdraw(uint256) (dataset/contracts/transaction_order/22755.sol#15-19) is not in mixedCase
Parameter usingOwnership.Withdraw(uint256)._amount (dataset/contracts/transaction_order/22755.sol#15) is not in mixedCase
Function usingOwnership.TransferOwnership(address) (dataset/contracts/transaction_order/22755.sol#21-24) is not in mixedCase
Parameter usingOwnership.TransferOwnership(address)._new_owner (dataset/contracts/transaction_order/22755.sol#21) is not in mixedCase
Variable usingOwnership.contract_owner (dataset/contracts/transaction_order/22755.sol#4) is not in mixedCase
Contract usingCanvasBoundaries (dataset/contracts/transaction_order/22755.sol#27-53) is not in CapWords
Function usingCanvasBoundaries.max_index() (dataset/contracts/transaction_order/22755.sol#40-48) is not in mixedCase
Function usingCanvasBoundaries.HalvingInfo() (dataset/contracts/transaction_order/22755.sol#50-52) is not in mixedCase
Variable usingCanvasBoundaries.g_block (dataset/contracts/transaction_order/22755.sol#28) is not in mixedCase
Variable usingCanvasBoundaries.max_max_index (dataset/contracts/transaction_order/22755.sol#29) is not in mixedCase
Variable usingCanvasBoundaries.max_block_number (dataset/contracts/transaction_order/22755.sol#30) is not in mixedCase
Function Etherpixels.Paint(uint256,bytes3) (dataset/contracts/transaction_order/22755.sol#69-72) is not in mixedCase
Parameter Etherpixels.Paint(uint256,bytes3)._index (dataset/contracts/transaction_order/22755.sol#69) is not in mixedCase
Parameter Etherpixels.Paint(uint256,bytes3)._color (dataset/contracts/transaction_order/22755.sol#69) is not in mixedCase
Function Etherpixels.BatchPaint(uint8,uint256[],bytes3[],uint256[]) (dataset/contracts/transaction_order/22755.sol#74-82) is not in mixedCase
Parameter Etherpixels.BatchPaint(uint8,uint256[],bytes3[],uint256[])._batch_size (dataset/contracts/transaction_order/22755.sol#74) is not in mixedCase
Parameter Etherpixels.BatchPaint(uint8,uint256[],bytes3[],uint256[])._index (dataset/contracts/transaction_order/22755.sol#74) is not in mixedCase
Parameter Etherpixels.BatchPaint(uint8,uint256[],bytes3[],uint256[])._color (dataset/contracts/transaction_order/22755.sol#74) is not in mixedCase
Parameter Etherpixels.BatchPaint(uint8,uint256[],bytes3[],uint256[])._paid (dataset/contracts/transaction_order/22755.sol#74) is not in mixedCase
Function Etherpixels.StartingPrice() (dataset/contracts/transaction_order/22755.sol#84-86) is not in mixedCase
Function Etherpixels.LowerStartingPrice(uint256) (dataset/contracts/transaction_order/22755.sol#88-91) is not in mixedCase
Parameter Etherpixels.LowerStartingPrice(uint256)._new_starting_price (dataset/contracts/transaction_order/22755.sol#88) is not in mixedCase
Function Etherpixels.paint_pixel(uint256,bytes3,uint256) (dataset/contracts/transaction_order/22755.sol#93-114) is not in mixedCase
Parameter Etherpixels.paint_pixel(uint256,bytes3,uint256)._index (dataset/contracts/transaction_order/22755.sol#93) is not in mixedCase
Parameter Etherpixels.paint_pixel(uint256,bytes3,uint256)._color (dataset/contracts/transaction_order/22755.sol#93) is not in mixedCase
Parameter Etherpixels.paint_pixel(uint256,bytes3,uint256)._paid (dataset/contracts/transaction_order/22755.sol#93) is not in mixedCase
Variable Etherpixels.starting_price (dataset/contracts/transaction_order/22755.sol#56) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
Etherpixels.slitherConstructorVariables() (dataset/contracts/transaction_order/22755.sol#55-116) uses literals with too many digits:
	- starting_price = 5000000000000 (dataset/contracts/transaction_order/22755.sol#56)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#too-many-digits
INFO:Detectors:
BatchPaint(uint8,uint256[],bytes3[],uint256[]) should be declared external:
	- Etherpixels.BatchPaint(uint8,uint256[],bytes3[],uint256[]) (dataset/contracts/transaction_order/22755.sol#74-82)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#public-function-that-could-be-declared-external
INFO:Slither:./dataset/contracts/transaction_order/22755.sol analyzed (3 contracts with 100 detectors), 36 result(s) found

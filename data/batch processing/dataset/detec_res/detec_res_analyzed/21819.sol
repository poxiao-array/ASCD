'solc --version' running
'solc ./dataset/contracts/transaction_order/21819.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
CellTokens.parseId(uint256) (dataset/contracts/transaction_order/21819.sol#203-208) performs a multiplication on the result of a division:
	- xpos = _id / (10 ** 12) (dataset/contracts/transaction_order/21819.sol#204)
	- ypos = (_id - xpos * (10 ** 12)) / (10 ** 8) (dataset/contracts/transaction_order/21819.sol#205)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#divide-before-multiply
INFO:Detectors:
CellTokens.getUserName().name (dataset/contracts/transaction_order/21819.sol#218) shadows:
	- CellTokens.name() (dataset/contracts/transaction_order/21819.sol#276-278) (function)
CellTokens.getUserNameOf(address).name (dataset/contracts/transaction_order/21819.sol#221) shadows:
	- CellTokens.name() (dataset/contracts/transaction_order/21819.sol#276-278) (function)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#local-variable-shadowing
INFO:Detectors:
CellTokens.setOwner(address) (dataset/contracts/transaction_order/21819.sol#102-104) should emit an event for: 
	- owner = _owner (dataset/contracts/transaction_order/21819.sol#103) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-access-control
INFO:Detectors:
CellTokens.setOwner(address)._owner (dataset/contracts/transaction_order/21819.sol#102) lacks a zero-check on :
		- owner = _owner (dataset/contracts/transaction_order/21819.sol#103)
CellTokens.buyOld(uint256).newOwner (dataset/contracts/transaction_order/21819.sol#235) lacks a zero-check on :
		- newOwner.transfer(excess) (dataset/contracts/transaction_order/21819.sol#242)
CellTokens.buyNew(uint256,uint256,uint256).newOwner (dataset/contracts/transaction_order/21819.sol#257) lacks a zero-check on :
		- newOwner.transfer(excess) (dataset/contracts/transaction_order/21819.sol#264)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-zero-address-validation
INFO:Detectors:
CellTokens.buyNew(uint256,uint256,uint256) (dataset/contracts/transaction_order/21819.sol#245-266) compares to a boolean constant:
	-require(bool)(checkIsOnSale(_ypos) == true) (dataset/contracts/transaction_order/21819.sol#246)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#boolean-equality
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
	- ^0.4.19 (dataset/contracts/transaction_order/21819.sol#1)
solc-0.4.19 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Parameter CellTokens.setOwner(address)._owner (dataset/contracts/transaction_order/21819.sol#102) is not in mixedCase
Parameter CellTokens.addAdmin(address)._admin (dataset/contracts/transaction_order/21819.sol#106) is not in mixedCase
Parameter CellTokens.removeAdmin(address)._admin (dataset/contracts/transaction_order/21819.sol#110) is not in mixedCase
Parameter CellTokens.setReserved(uint8,uint8)._up (dataset/contracts/transaction_order/21819.sol#121) is not in mixedCase
Parameter CellTokens.setReserved(uint8,uint8)._down (dataset/contracts/transaction_order/21819.sol#121) is not in mixedCase
Parameter CellTokens.withdrawAmount(uint256)._amount (dataset/contracts/transaction_order/21819.sol#135) is not in mixedCase
Parameter CellTokens.calculateNextPrice(uint256)._price (dataset/contracts/transaction_order/21819.sol#139) is not in mixedCase
Parameter CellTokens.calculateDevCut(uint256)._price (dataset/contracts/transaction_order/21819.sol#153) is not in mixedCase
Parameter CellTokens.checkIsOnSale(uint256)._ypos (dataset/contracts/transaction_order/21819.sol#192) is not in mixedCase
Parameter CellTokens.generateId(uint256,uint256,uint256)._xpos (dataset/contracts/transaction_order/21819.sol#199) is not in mixedCase
Parameter CellTokens.generateId(uint256,uint256,uint256)._ypos (dataset/contracts/transaction_order/21819.sol#199) is not in mixedCase
Parameter CellTokens.generateId(uint256,uint256,uint256)._size (dataset/contracts/transaction_order/21819.sol#199) is not in mixedCase
Parameter CellTokens.parseId(uint256)._id (dataset/contracts/transaction_order/21819.sol#203) is not in mixedCase
Parameter CellTokens.setUserName(string)._name (dataset/contracts/transaction_order/21819.sol#210) is not in mixedCase
Parameter CellTokens.getUserNameOf(address)._user (dataset/contracts/transaction_order/21819.sol#221) is not in mixedCase
Parameter CellTokens.buyOld(uint256)._index (dataset/contracts/transaction_order/21819.sol#224) is not in mixedCase
Parameter CellTokens.buyNew(uint256,uint256,uint256)._xpos (dataset/contracts/transaction_order/21819.sol#245) is not in mixedCase
Parameter CellTokens.buyNew(uint256,uint256,uint256)._ypos (dataset/contracts/transaction_order/21819.sol#245) is not in mixedCase
Parameter CellTokens.buyNew(uint256,uint256,uint256)._size (dataset/contracts/transaction_order/21819.sol#245) is not in mixedCase
Function CellTokens.MergeStatus() (dataset/contracts/transaction_order/21819.sol#268-270) is not in mixedCase
Parameter CellTokens.balanceOf(address)._owner (dataset/contracts/transaction_order/21819.sol#294) is not in mixedCase
Parameter CellTokens.ownerOf(uint256)._itemId (dataset/contracts/transaction_order/21819.sol#304) is not in mixedCase
Parameter CellTokens.cellsOf(address)._owner (dataset/contracts/transaction_order/21819.sol#308) is not in mixedCase
Parameter CellTokens.isAdmin(address)._admin (dataset/contracts/transaction_order/21819.sol#332) is not in mixedCase
Parameter CellTokens.priceOf(uint256)._itemId (dataset/contracts/transaction_order/21819.sol#340) is not in mixedCase
Parameter CellTokens.nextPriceOf(uint256)._itemId (dataset/contracts/transaction_order/21819.sol#344) is not in mixedCase
Parameter CellTokens.allOf(uint256)._itemId (dataset/contracts/transaction_order/21819.sol#348) is not in mixedCase
Variable CellTokens.Reserved_upRow (dataset/contracts/transaction_order/21819.sol#50) is not in mixedCase
Variable CellTokens.Reserved_downRow (dataset/contracts/transaction_order/21819.sol#51) is not in mixedCase
Variable CellTokens.max_merge_size (dataset/contracts/transaction_order/21819.sol#52) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
CellTokens.MAX_ROWS (dataset/contracts/transaction_order/21819.sol#49) is never used in CellTokens (dataset/contracts/transaction_order/21819.sol#45-378)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#unused-state-variable
INFO:Detectors:
Loop condition i < listedItems.length (dataset/contracts/transaction_order/21819.sol#286) should use cached array length instead of referencing `length` member of the storage array.
 Loop condition i < listedItems.length (dataset/contracts/transaction_order/21819.sol#296) should use cached array length instead of referencing `length` member of the storage array.
 Loop condition i < listedItems.length (dataset/contracts/transaction_order/21819.sol#311) should use cached array length instead of referencing `length` member of the storage array.
 Loop condition i < listedItems.length (dataset/contracts/transaction_order/21819.sol#322) should use cached array length instead of referencing `length` member of the storage array.
 Loop condition i < listedItems.length (dataset/contracts/transaction_order/21819.sol#361) should use cached array length instead of referencing `length` member of the storage array.
 Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#cache-array-length
INFO:Detectors:
CellTokens.increaseLimit1 (dataset/contracts/transaction_order/21819.sol#63) should be constant 
CellTokens.increaseLimit2 (dataset/contracts/transaction_order/21819.sol#64) should be constant 
CellTokens.increaseLimit3 (dataset/contracts/transaction_order/21819.sol#65) should be constant 
CellTokens.increaseLimit4 (dataset/contracts/transaction_order/21819.sol#66) should be constant 
CellTokens.startingPrice (dataset/contracts/transaction_order/21819.sol#67) should be constant 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#state-variables-that-could-be-declared-constant
INFO:Detectors:
setUserName(string) should be declared external:
	- CellTokens.setUserName(string) (dataset/contracts/transaction_order/21819.sol#210-217)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#public-function-that-could-be-declared-external
INFO:Slither:./dataset/contracts/transaction_order/21819.sol analyzed (2 contracts with 100 detectors), 52 result(s) found

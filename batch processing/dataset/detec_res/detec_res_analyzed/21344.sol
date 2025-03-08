'solc --version' running
'solc ./dataset/contracts/transaction_order/21344.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
ETH10K.parseId(uint256) (dataset/contracts/transaction_order/21344.sol#204-209) performs a multiplication on the result of a division:
	- xpos = _id / (10 ** 12) (dataset/contracts/transaction_order/21344.sol#205)
	- ypos = (_id - xpos * (10 ** 12)) / (10 ** 8) (dataset/contracts/transaction_order/21344.sol#206)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#divide-before-multiply
INFO:Detectors:
ETH10K.getUserName().name (dataset/contracts/transaction_order/21344.sol#219) shadows:
	- ETH10K.name() (dataset/contracts/transaction_order/21344.sol#296-298) (function)
ETH10K.getUserNameOf(address).name (dataset/contracts/transaction_order/21344.sol#222) shadows:
	- ETH10K.name() (dataset/contracts/transaction_order/21344.sol#296-298) (function)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#local-variable-shadowing
INFO:Detectors:
ETH10K.setOwner(address) (dataset/contracts/transaction_order/21344.sol#102-104) should emit an event for: 
	- owner = _owner (dataset/contracts/transaction_order/21344.sol#103) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-access-control
INFO:Detectors:
ETH10K.setOwner(address)._owner (dataset/contracts/transaction_order/21344.sol#102) lacks a zero-check on :
		- owner = _owner (dataset/contracts/transaction_order/21344.sol#103)
ETH10K.buyOld(uint256).newOwner (dataset/contracts/transaction_order/21344.sol#252) lacks a zero-check on :
		- newOwner.transfer(excess) (dataset/contracts/transaction_order/21344.sol#259)
ETH10K.buyNew(uint256,uint256,uint256).newOwner (dataset/contracts/transaction_order/21344.sol#277) lacks a zero-check on :
		- newOwner.transfer(excess) (dataset/contracts/transaction_order/21344.sol#284)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-zero-address-validation
INFO:Detectors:
ETH10K.addBlock(address,uint256,uint256,uint256,uint256) (dataset/contracts/transaction_order/21344.sol#226-237) compares to a boolean constant:
	-require(bool)(checkIsOnSale(_ypos) == true) (dataset/contracts/transaction_order/21344.sol#227)
ETH10K.buyNew(uint256,uint256,uint256) (dataset/contracts/transaction_order/21344.sol#264-286) compares to a boolean constant:
	-require(bool)(checkIsOnSale(_ypos) == true) (dataset/contracts/transaction_order/21344.sol#265)
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
	- ^0.4.19 (dataset/contracts/transaction_order/21344.sol#1)
solc-0.4.19 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Parameter ETH10K.setOwner(address)._owner (dataset/contracts/transaction_order/21344.sol#102) is not in mixedCase
Parameter ETH10K.addAdmin(address)._admin (dataset/contracts/transaction_order/21344.sol#106) is not in mixedCase
Parameter ETH10K.removeAdmin(address)._admin (dataset/contracts/transaction_order/21344.sol#110) is not in mixedCase
Parameter ETH10K.setReserved(uint8,uint8)._up (dataset/contracts/transaction_order/21344.sol#121) is not in mixedCase
Parameter ETH10K.setReserved(uint8,uint8)._down (dataset/contracts/transaction_order/21344.sol#121) is not in mixedCase
Parameter ETH10K.withdrawAmount(uint256)._amount (dataset/contracts/transaction_order/21344.sol#136) is not in mixedCase
Parameter ETH10K.calculateNextPrice(uint256)._price (dataset/contracts/transaction_order/21344.sol#140) is not in mixedCase
Parameter ETH10K.calculateDevCut(uint256)._price (dataset/contracts/transaction_order/21344.sol#154) is not in mixedCase
Parameter ETH10K.checkIsOnSale(uint256)._ypos (dataset/contracts/transaction_order/21344.sol#193) is not in mixedCase
Parameter ETH10K.generateId(uint256,uint256,uint256)._xpos (dataset/contracts/transaction_order/21344.sol#200) is not in mixedCase
Parameter ETH10K.generateId(uint256,uint256,uint256)._ypos (dataset/contracts/transaction_order/21344.sol#200) is not in mixedCase
Parameter ETH10K.generateId(uint256,uint256,uint256)._size (dataset/contracts/transaction_order/21344.sol#200) is not in mixedCase
Parameter ETH10K.parseId(uint256)._id (dataset/contracts/transaction_order/21344.sol#204) is not in mixedCase
Parameter ETH10K.setUserName(string)._name (dataset/contracts/transaction_order/21344.sol#211) is not in mixedCase
Parameter ETH10K.getUserNameOf(address)._user (dataset/contracts/transaction_order/21344.sol#222) is not in mixedCase
Parameter ETH10K.addBlock(address,uint256,uint256,uint256,uint256)._to (dataset/contracts/transaction_order/21344.sol#226) is not in mixedCase
Parameter ETH10K.addBlock(address,uint256,uint256,uint256,uint256)._xpos (dataset/contracts/transaction_order/21344.sol#226) is not in mixedCase
Parameter ETH10K.addBlock(address,uint256,uint256,uint256,uint256)._ypos (dataset/contracts/transaction_order/21344.sol#226) is not in mixedCase
Parameter ETH10K.addBlock(address,uint256,uint256,uint256,uint256)._size (dataset/contracts/transaction_order/21344.sol#226) is not in mixedCase
Parameter ETH10K.addBlock(address,uint256,uint256,uint256,uint256)._price (dataset/contracts/transaction_order/21344.sol#226) is not in mixedCase
Parameter ETH10K.buyOld(uint256)._index (dataset/contracts/transaction_order/21344.sol#241) is not in mixedCase
Parameter ETH10K.buyNew(uint256,uint256,uint256)._xpos (dataset/contracts/transaction_order/21344.sol#264) is not in mixedCase
Parameter ETH10K.buyNew(uint256,uint256,uint256)._ypos (dataset/contracts/transaction_order/21344.sol#264) is not in mixedCase
Parameter ETH10K.buyNew(uint256,uint256,uint256)._size (dataset/contracts/transaction_order/21344.sol#264) is not in mixedCase
Function ETH10K.MergeStatus() (dataset/contracts/transaction_order/21344.sol#288-290) is not in mixedCase
Parameter ETH10K.balanceOf(address)._owner (dataset/contracts/transaction_order/21344.sol#314) is not in mixedCase
Parameter ETH10K.ownerOf(uint256)._itemId (dataset/contracts/transaction_order/21344.sol#324) is not in mixedCase
Parameter ETH10K.cellsOf(address)._owner (dataset/contracts/transaction_order/21344.sol#328) is not in mixedCase
Parameter ETH10K.isAdmin(address)._admin (dataset/contracts/transaction_order/21344.sol#352) is not in mixedCase
Parameter ETH10K.priceOf(uint256)._itemId (dataset/contracts/transaction_order/21344.sol#360) is not in mixedCase
Parameter ETH10K.nextPriceOf(uint256)._itemId (dataset/contracts/transaction_order/21344.sol#364) is not in mixedCase
Parameter ETH10K.allOf(uint256)._itemId (dataset/contracts/transaction_order/21344.sol#368) is not in mixedCase
Function ETH10K.getAllCellInfoFrom_To(uint256,uint256) (dataset/contracts/transaction_order/21344.sol#392-413) is not in mixedCase
Parameter ETH10K.getAllCellInfoFrom_To(uint256,uint256)._from (dataset/contracts/transaction_order/21344.sol#392) is not in mixedCase
Parameter ETH10K.getAllCellInfoFrom_To(uint256,uint256)._to (dataset/contracts/transaction_order/21344.sol#392) is not in mixedCase
Variable ETH10K.Reserved_upRow (dataset/contracts/transaction_order/21344.sol#50) is not in mixedCase
Variable ETH10K.Reserved_downRow (dataset/contracts/transaction_order/21344.sol#51) is not in mixedCase
Variable ETH10K.max_merge_size (dataset/contracts/transaction_order/21344.sol#52) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
ETH10K.MAX_ROWS (dataset/contracts/transaction_order/21344.sol#49) is never used in ETH10K (dataset/contracts/transaction_order/21344.sol#45-422)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#unused-state-variable
INFO:Detectors:
Loop condition i < listedItems.length (dataset/contracts/transaction_order/21344.sol#331) should use cached array length instead of referencing `length` member of the storage array.
 Loop condition i < listedItems.length (dataset/contracts/transaction_order/21344.sol#381) should use cached array length instead of referencing `length` member of the storage array.
 Loop condition i < listedItems.length (dataset/contracts/transaction_order/21344.sol#342) should use cached array length instead of referencing `length` member of the storage array.
 Loop condition i < listedItems.length (dataset/contracts/transaction_order/21344.sol#401) should use cached array length instead of referencing `length` member of the storage array.
 Loop condition i < listedItems.length (dataset/contracts/transaction_order/21344.sol#306) should use cached array length instead of referencing `length` member of the storage array.
 Loop condition i < listedItems.length (dataset/contracts/transaction_order/21344.sol#316) should use cached array length instead of referencing `length` member of the storage array.
 Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#cache-array-length
INFO:Detectors:
ETH10K.increaseLimit1 (dataset/contracts/transaction_order/21344.sol#63) should be constant 
ETH10K.increaseLimit2 (dataset/contracts/transaction_order/21344.sol#64) should be constant 
ETH10K.increaseLimit3 (dataset/contracts/transaction_order/21344.sol#65) should be constant 
ETH10K.increaseLimit4 (dataset/contracts/transaction_order/21344.sol#66) should be constant 
ETH10K.startingPrice (dataset/contracts/transaction_order/21344.sol#67) should be constant 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#state-variables-that-could-be-declared-constant
INFO:Detectors:
setUserName(string) should be declared external:
	- ETH10K.setUserName(string) (dataset/contracts/transaction_order/21344.sol#211-218)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#public-function-that-could-be-declared-external
INFO:Slither:./dataset/contracts/transaction_order/21344.sol analyzed (2 contracts with 100 detectors), 62 result(s) found

'solc --version' running
'solc ./dataset/contracts/transaction_order/13149.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
CryptoBeauty.isContract(address) (dataset/contracts/transaction_order/13149.sol#282-286) is declared view but contains assembly code
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#constant-functions-using-assembly-code
INFO:Detectors:
CryptoBeauty.setOwner(address) (dataset/contracts/transaction_order/13149.sol#83-85) should emit an event for: 
	- owner = _owner (dataset/contracts/transaction_order/13149.sol#84) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-access-control
INFO:Detectors:
CryptoBeauty.setOwner(address)._owner (dataset/contracts/transaction_order/13149.sol#83) lacks a zero-check on :
		- owner = _owner (dataset/contracts/transaction_order/13149.sol#84)
CryptoBeauty.buy(uint256).newOwner (dataset/contracts/transaction_order/13149.sol#173) lacks a zero-check on :
		- newOwner.transfer(excess) (dataset/contracts/transaction_order/13149.sol#191)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-zero-address-validation
INFO:Detectors:
CryptoBeauty.isContract(address) (dataset/contracts/transaction_order/13149.sol#282-286) uses assembly
	- INLINE ASM (dataset/contracts/transaction_order/13149.sol#284-285)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#assembly-usage
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
	- ^0.4.24 (dataset/contracts/transaction_order/13149.sol#1)
solc-0.4.24 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Parameter CryptoBeauty.setOwner(address)._owner (dataset/contracts/transaction_order/13149.sol#83) is not in mixedCase
Parameter CryptoBeauty.withdrawAmount(uint256)._amount (dataset/contracts/transaction_order/13149.sol#102) is not in mixedCase
Parameter CryptoBeauty.listItem(uint256,uint256,address)._itemId (dataset/contracts/transaction_order/13149.sol#110) is not in mixedCase
Parameter CryptoBeauty.listItem(uint256,uint256,address)._price (dataset/contracts/transaction_order/13149.sol#110) is not in mixedCase
Parameter CryptoBeauty.listItem(uint256,uint256,address)._owner (dataset/contracts/transaction_order/13149.sol#110) is not in mixedCase
Parameter CryptoBeauty.setOwnerName(address,string)._owner (dataset/contracts/transaction_order/13149.sol#120) is not in mixedCase
Parameter CryptoBeauty.setOwnerName(address,string)._name (dataset/contracts/transaction_order/13149.sol#120) is not in mixedCase
Parameter CryptoBeauty.getOwnerName(address)._owner (dataset/contracts/transaction_order/13149.sol#125) is not in mixedCase
Parameter CryptoBeauty.calculateNextPrice(uint256)._price (dataset/contracts/transaction_order/13149.sol#130) is not in mixedCase
Parameter CryptoBeauty.calculateDevCut(uint256)._price (dataset/contracts/transaction_order/13149.sol#144) is not in mixedCase
Parameter CryptoBeauty.buy(uint256)._itemId (dataset/contracts/transaction_order/13149.sol#164) is not in mixedCase
Parameter CryptoBeauty.balanceOf(address)._owner (dataset/contracts/transaction_order/13149.sol#212) is not in mixedCase
Parameter CryptoBeauty.ownerOf(uint256)._itemId (dataset/contracts/transaction_order/13149.sol#224) is not in mixedCase
Parameter CryptoBeauty.tokensOf(address)._owner (dataset/contracts/transaction_order/13149.sol#228) is not in mixedCase
Parameter CryptoBeauty.tokenExists(uint256)._itemId (dataset/contracts/transaction_order/13149.sol#242) is not in mixedCase
Parameter CryptoBeauty.approvedFor(uint256)._itemId (dataset/contracts/transaction_order/13149.sol#246) is not in mixedCase
Parameter CryptoBeauty.transfer(address,uint256)._to (dataset/contracts/transaction_order/13149.sol#251) is not in mixedCase
Parameter CryptoBeauty.transfer(address,uint256)._itemId (dataset/contracts/transaction_order/13149.sol#251) is not in mixedCase
Parameter CryptoBeauty.priceOf(uint256)._itemId (dataset/contracts/transaction_order/13149.sol#269) is not in mixedCase
Parameter CryptoBeauty.nextPriceOf(uint256)._itemId (dataset/contracts/transaction_order/13149.sol#273) is not in mixedCase
Parameter CryptoBeauty.allOf(uint256)._itemId (dataset/contracts/transaction_order/13149.sol#277) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
Loop condition i < listedItems.length (dataset/contracts/transaction_order/13149.sol#215) should use cached array length instead of referencing `length` member of the storage array.
 Loop condition i < listedItems.length (dataset/contracts/transaction_order/13149.sol#232) should use cached array length instead of referencing `length` member of the storage array.
 Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#cache-array-length
INFO:Detectors:
CryptoBeauty.increaseLimit1 (dataset/contracts/transaction_order/13149.sol#56) should be constant 
CryptoBeauty.increaseLimit2 (dataset/contracts/transaction_order/13149.sol#57) should be constant 
CryptoBeauty.increaseLimit3 (dataset/contracts/transaction_order/13149.sol#58) should be constant 
CryptoBeauty.increaseLimit4 (dataset/contracts/transaction_order/13149.sol#59) should be constant 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#state-variables-that-could-be-declared-constant
INFO:Detectors:
setOwnerName(address,string) should be declared external:
	- CryptoBeauty.setOwnerName(address,string) (dataset/contracts/transaction_order/13149.sol#120-123)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#public-function-that-could-be-declared-external
INFO:Slither:./dataset/contracts/transaction_order/13149.sol analyzed (2 contracts with 100 detectors), 35 result(s) found

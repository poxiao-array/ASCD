'solc --version' running
'solc ./dataset/contracts/transaction_order/1861.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
Compilation warnings/errors on ./dataset/contracts/transaction_order/1861.sol:
./dataset/contracts/transaction_order/1861.sol:124:3: Warning: Defining constructors as functions with the same name as the contract is deprecated. Use "constructor(...) { ... }" instead.
  function DapdapNiubi() public {
  ^ (Relevant source part starts here and spans across multiple lines).

INFO:Detectors:
DapdapNiubi.withdrawAll() (dataset/contracts/transaction_order/1861.sol#203-205) sends eth to arbitrary user
	Dangerous calls:
	- msg.sender.transfer(address(this).balance) (dataset/contracts/transaction_order/1861.sol#204)
DapdapNiubi.withdrawAmount(uint256) (dataset/contracts/transaction_order/1861.sol#207-209) sends eth to arbitrary user
	Dangerous calls:
	- msg.sender.transfer(_amount) (dataset/contracts/transaction_order/1861.sol#208)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#functions-that-send-ether-to-arbitrary-destinations
INFO:Detectors:
DapdapNiubi (dataset/contracts/transaction_order/1861.sol#96-313) contract sets array length with a user-controlled value:
	- listedMedal.push(medal) (dataset/contracts/transaction_order/1861.sol#189)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#array-length-assignment
INFO:Detectors:
DapdapNiubi.isContract(address) (dataset/contracts/transaction_order/1861.sol#308-312) is declared view but contains assembly code
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#constant-functions-using-assembly-code
INFO:Detectors:
DapdapNiubi.setOwner(address) (dataset/contracts/transaction_order/1861.sol#141-143) should emit an event for: 
	- owner = _owner (dataset/contracts/transaction_order/1861.sol#142) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-access-control
INFO:Detectors:
DapdapNiubi.setOwner(address)._owner (dataset/contracts/transaction_order/1861.sol#141) lacks a zero-check on :
		- owner = _owner (dataset/contracts/transaction_order/1861.sol#142)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-zero-address-validation
INFO:Detectors:
DapdapNiubi.isContract(address) (dataset/contracts/transaction_order/1861.sol#308-312) uses assembly
	- INLINE ASM (dataset/contracts/transaction_order/1861.sol#310-311)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#assembly-usage
INFO:Detectors:
DapdapNiubi.isContract(address) (dataset/contracts/transaction_order/1861.sol#308-312) is never used and should be removed
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#dead-code
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
	- ^0.4.24 (dataset/contracts/transaction_order/1861.sol#1)
solc-0.4.24 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Parameter DapdapNiubi.setOwner(address)._owner (dataset/contracts/transaction_order/1861.sol#141) is not in mixedCase
Parameter DapdapNiubi.addAdmin(address)._admin (dataset/contracts/transaction_order/1861.sol#145) is not in mixedCase
Parameter DapdapNiubi.removeAdmin(address)._admin (dataset/contracts/transaction_order/1861.sol#149) is not in mixedCase
Parameter DapdapNiubi.withdrawAmount(uint256)._amount (dataset/contracts/transaction_order/1861.sol#207) is not in mixedCase
Parameter DapdapNiubi.balanceOf(address)._owner (dataset/contracts/transaction_order/1861.sol#225) is not in mixedCase
Parameter DapdapNiubi.ownerOf(uint256)._itemId (dataset/contracts/transaction_order/1861.sol#237) is not in mixedCase
Parameter DapdapNiubi.tokensOf(address)._owner (dataset/contracts/transaction_order/1861.sol#241) is not in mixedCase
Parameter DapdapNiubi.tokenExists(uint256)._itemId (dataset/contracts/transaction_order/1861.sol#254) is not in mixedCase
Parameter DapdapNiubi.approvedFor(uint256)._itemId (dataset/contracts/transaction_order/1861.sol#258) is not in mixedCase
Parameter DapdapNiubi.approve(address,uint256)._to (dataset/contracts/transaction_order/1861.sol#262) is not in mixedCase
Parameter DapdapNiubi.approve(address,uint256)._itemId (dataset/contracts/transaction_order/1861.sol#262) is not in mixedCase
Parameter DapdapNiubi.transfer(address,uint256)._to (dataset/contracts/transaction_order/1861.sol#279) is not in mixedCase
Parameter DapdapNiubi.transfer(address,uint256)._itemId (dataset/contracts/transaction_order/1861.sol#279) is not in mixedCase
Parameter DapdapNiubi.transferFrom(address,address,uint256)._from (dataset/contracts/transaction_order/1861.sol#284) is not in mixedCase
Parameter DapdapNiubi.transferFrom(address,address,uint256)._to (dataset/contracts/transaction_order/1861.sol#284) is not in mixedCase
Parameter DapdapNiubi.transferFrom(address,address,uint256)._itemId (dataset/contracts/transaction_order/1861.sol#284) is not in mixedCase
Parameter DapdapNiubi.isAdmin(address)._admin (dataset/contracts/transaction_order/1861.sol#303) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
Loop condition i < listedMedal.length (dataset/contracts/transaction_order/1861.sol#245) should use cached array length instead of referencing `length` member of the storage array.
 Loop condition i < listedMedal.length (dataset/contracts/transaction_order/1861.sol#228) should use cached array length instead of referencing `length` member of the storage array.
 Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#cache-array-length
INFO:Slither:./dataset/contracts/transaction_order/1861.sol analyzed (4 contracts with 100 detectors), 29 result(s) found

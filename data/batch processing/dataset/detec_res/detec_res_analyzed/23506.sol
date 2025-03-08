'solc --version' running
'solc ./dataset/contracts/transaction_order/23506.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
ChemistryBase._createElement(bytes32,uint256).owner (dataset/contracts/transaction_order/23506.sol#228) shadows:
	- Ownable.owner (dataset/contracts/transaction_order/23506.sol#33) (state variable)
ElementTokenImpl.ownerOf(uint256).owner (dataset/contracts/transaction_order/23506.sol#386) shadows:
	- Ownable.owner (dataset/contracts/transaction_order/23506.sol#33) (state variable)
ChemistryCore.getElementView(uint256).symbol (dataset/contracts/transaction_order/23506.sol#591) shadows:
	- ElementTokenImpl.symbol (dataset/contracts/transaction_order/23506.sol#261) (state variable)
ChemistryCore.getElement(uint256).symbol (dataset/contracts/transaction_order/23506.sol#595) shadows:
	- ElementTokenImpl.symbol (dataset/contracts/transaction_order/23506.sol#261) (state variable)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#local-variable-shadowing
INFO:Detectors:
Ownable.transferOwnership(address) (dataset/contracts/transaction_order/23506.sol#55-58) should emit an event for: 
	- owner = newOwner (dataset/contracts/transaction_order/23506.sol#57) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-access-control
INFO:Detectors:
ChemistryBase.setTableSize(uint256) (dataset/contracts/transaction_order/23506.sol#246-248) should emit an event for: 
	- tableSize = _newSize (dataset/contracts/transaction_order/23506.sol#247) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-arithmetic
INFO:Detectors:
ContractOfSale.buy(uint256).newOwner (dataset/contracts/transaction_order/23506.sol#486) lacks a zero-check on :
		- newOwner.transfer(excess) (dataset/contracts/transaction_order/23506.sol#501)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-zero-address-validation
INFO:Detectors:
ChemistryBase._transfer(address,address,uint256) (dataset/contracts/transaction_order/23506.sol#205-218) has costly operations inside a loop:
	- delete elementToApproved[_tokenId] (dataset/contracts/transaction_order/23506.sol#214)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#costly-operations-inside-a-loop
INFO:Detectors:
ElementTokenImpl._ownerApproved(address,uint256) (dataset/contracts/transaction_order/23506.sol#294-296) is never used and should be removed
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
	- ^0.4.19 (dataset/contracts/transaction_order/23506.sol#1)
solc-0.4.19 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Parameter ChemistryBase.addAuthorization(address)._authorized (dataset/contracts/transaction_order/23506.sol#191) is not in mixedCase
Parameter ChemistryBase.removeAuthorization(address)._authorized (dataset/contracts/transaction_order/23506.sol#195) is not in mixedCase
Parameter ChemistryBase.setTableSize(uint256)._newSize (dataset/contracts/transaction_order/23506.sol#246) is not in mixedCase
Parameter ElementTokenImpl.supportsInterface(bytes4)._interfaceID (dataset/contracts/transaction_order/23506.sol#281) is not in mixedCase
Parameter ElementTokenImpl.balanceOf(address)._owner (dataset/contracts/transaction_order/23506.sol#315) is not in mixedCase
Parameter ElementTokenImpl.transfer(address,uint256)._to (dataset/contracts/transaction_order/23506.sol#323) is not in mixedCase
Parameter ElementTokenImpl.transfer(address,uint256)._tokenId (dataset/contracts/transaction_order/23506.sol#323) is not in mixedCase
Parameter ElementTokenImpl.approve(address,uint256)._to (dataset/contracts/transaction_order/23506.sol#342) is not in mixedCase
Parameter ElementTokenImpl.approve(address,uint256)._tokenId (dataset/contracts/transaction_order/23506.sol#342) is not in mixedCase
Parameter ElementTokenImpl.transferFrom(address,address,uint256)._from (dataset/contracts/transaction_order/23506.sol#360) is not in mixedCase
Parameter ElementTokenImpl.transferFrom(address,address,uint256)._to (dataset/contracts/transaction_order/23506.sol#360) is not in mixedCase
Parameter ElementTokenImpl.transferFrom(address,address,uint256)._tokenId (dataset/contracts/transaction_order/23506.sol#360) is not in mixedCase
Parameter ElementTokenImpl.ownerOf(uint256)._tokenId (dataset/contracts/transaction_order/23506.sol#383) is not in mixedCase
Parameter ElementTokenImpl.takeOwnership(uint256)._tokenId (dataset/contracts/transaction_order/23506.sol#393) is not in mixedCase
Parameter ElementTokenImpl.tokensOfOwner(address)._owner (dataset/contracts/transaction_order/23506.sol#406) is not in mixedCase
Constant ElementTokenImpl.InterfaceSignature_ERC165 (dataset/contracts/transaction_order/23506.sol#263-264) is not in UPPER_CASE_WITH_UNDERSCORES
Constant ElementTokenImpl.InterfaceSignature_ERC721 (dataset/contracts/transaction_order/23506.sol#266-276) is not in UPPER_CASE_WITH_UNDERSCORES
Parameter ContractOfSale.calculateNextPrice(uint256)._price (dataset/contracts/transaction_order/23506.sol#443) is not in mixedCase
Parameter ContractOfSale.buy(uint256)._itemId (dataset/contracts/transaction_order/23506.sol#471) is not in mixedCase
Parameter ContractOfSale.priceOfElement(uint256)._elementId (dataset/contracts/transaction_order/23506.sol#505) is not in mixedCase
Parameter ContractOfSale.priceOfElements(uint256[])._elementIds (dataset/contracts/transaction_order/23506.sol#509) is not in mixedCase
Parameter ContractOfSale.nextPriceOfElement(uint256)._itemId (dataset/contracts/transaction_order/23506.sol#518) is not in mixedCase
Parameter ChemistryCore.addElement(bytes32)._symbol (dataset/contracts/transaction_order/23506.sol#533) is not in mixedCase
Parameter ChemistryCore.addElements(bytes32[])._symbols (dataset/contracts/transaction_order/23506.sol#543) is not in mixedCase
Parameter ChemistryCore.withdrawAmount(uint256)._amount (dataset/contracts/transaction_order/23506.sol#564) is not in mixedCase
Parameter ChemistryCore.getElementOwners(uint256[])._elementIds (dataset/contracts/transaction_order/23506.sol#582) is not in mixedCase
Parameter ChemistryCore.getElementView(uint256)._id (dataset/contracts/transaction_order/23506.sol#591) is not in mixedCase
Parameter ChemistryCore.getElement(uint256)._id (dataset/contracts/transaction_order/23506.sol#595) is not in mixedCase
Parameter ChemistryCore.getElements(uint256[])._elementIds (dataset/contracts/transaction_order/23506.sol#599) is not in mixedCase
Parameter ChemistryCore.getElementInfoView(uint256)._itemId (dataset/contracts/transaction_order/23506.sol#606) is not in mixedCase
Parameter ChemistryCore.getElementInfo(uint256)._itemId (dataset/contracts/transaction_order/23506.sol#611) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Slither:./dataset/contracts/transaction_order/23506.sol analyzed (8 contracts with 100 detectors), 42 result(s) found

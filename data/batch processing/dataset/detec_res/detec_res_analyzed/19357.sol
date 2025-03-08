'solc --version' running
'solc ./dataset/contracts/transaction_order/19357.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
Ownable.transferOwnership(address) (dataset/contracts/transaction_order/19357.sol#26-29) should emit an event for: 
	- owner = newOwner (dataset/contracts/transaction_order/19357.sol#28) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-access-control
INFO:Detectors:
SketchMarket.setOwnerCut(uint256) (dataset/contracts/transaction_order/19357.sol#109-113) should emit an event for: 
	- ownerCut = _ownerCut (dataset/contracts/transaction_order/19357.sol#112) 
SketchMarket.setListingFeeInWei(uint256) (dataset/contracts/transaction_order/19357.sol#115-118) should emit an event for: 
	- listingFeeInWei = _listingFeeInWei (dataset/contracts/transaction_order/19357.sol#117) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-arithmetic
INFO:Detectors:
Version constraint 0.4.18 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
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
	- 0.4.18 (dataset/contracts/transaction_order/19357.sol#1)
solc-0.4.18 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Parameter SketchMarket.setOwnerCut(uint256)._ownerCut (dataset/contracts/transaction_order/19357.sol#109) is not in mixedCase
Parameter SketchMarket.setListingFeeInWei(uint256)._listingFeeInWei (dataset/contracts/transaction_order/19357.sol#115) is not in mixedCase
Parameter SketchMarket.createSketch(string,string)._name (dataset/contracts/transaction_order/19357.sol#122) is not in mixedCase
Parameter SketchMarket.createSketch(string,string)._data (dataset/contracts/transaction_order/19357.sol#122) is not in mixedCase
Parameter SketchMarket.setOwnerFlag(uint256,uint8)._ownerFlag (dataset/contracts/transaction_order/19357.sol#143) is not in mixedCase
Parameter SketchMarket.getBidCountForSketchesWithHolder(address)._holder (dataset/contracts/transaction_order/19357.sol#160) is not in mixedCase
Parameter SketchMarket.getSketchesOnOfferWithHolder(address)._holder (dataset/contracts/transaction_order/19357.sol#210) is not in mixedCase
Parameter SketchMarket.getSketchesWithHolder(address)._holder (dataset/contracts/transaction_order/19357.sol#241) is not in mixedCase
Parameter SketchMarket.getSketchesWithAuthor(address)._author (dataset/contracts/transaction_order/19357.sol#262) is not in mixedCase
Parameter SketchMarket.sketchNoLongerForSale(uint256)._sketchIndex (dataset/contracts/transaction_order/19357.sol#317) is not in mixedCase
Parameter SketchMarket.offerSketchForSale(uint256,uint256)._sketchIndex (dataset/contracts/transaction_order/19357.sol#323) is not in mixedCase
Parameter SketchMarket.offerSketchForSale(uint256,uint256)._minSalePriceInWei (dataset/contracts/transaction_order/19357.sol#323) is not in mixedCase
Parameter SketchMarket.offerSketchForSaleToAddress(uint256,uint256,address)._sketchIndex (dataset/contracts/transaction_order/19357.sol#329) is not in mixedCase
Parameter SketchMarket.offerSketchForSaleToAddress(uint256,uint256,address)._minSalePriceInWei (dataset/contracts/transaction_order/19357.sol#329) is not in mixedCase
Parameter SketchMarket.offerSketchForSaleToAddress(uint256,uint256,address)._toAddress (dataset/contracts/transaction_order/19357.sol#329) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
SketchMarket.SketchMarket() (dataset/contracts/transaction_order/19357.sol#97-107) uses literals with too many digits:
	- listingFeeInWei = 5000000000000000 (dataset/contracts/transaction_order/19357.sol#106)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#too-many-digits
INFO:Detectors:
SketchMarket.standard (dataset/contracts/transaction_order/19357.sol#36) should be constant 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#state-variables-that-could-be-declared-constant
INFO:Slither:./dataset/contracts/transaction_order/19357.sol analyzed (2 contracts with 100 detectors), 22 result(s) found

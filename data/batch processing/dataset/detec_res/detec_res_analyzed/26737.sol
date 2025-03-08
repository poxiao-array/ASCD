'solc --version' running
'solc ./dataset/contracts/transaction_order/26737.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
CollectibleToken.purchase(uint256) (dataset/contracts/transaction_order/26737.sol#200-241) sends eth to arbitrary user
	Dangerous calls:
	- oldOwner.transfer(payment) (dataset/contracts/transaction_order/26737.sol#236)
CollectibleToken._payout(address) (dataset/contracts/transaction_order/26737.sol#341-347) sends eth to arbitrary user
	Dangerous calls:
	- ceoAddress.transfer(this.balance) (dataset/contracts/transaction_order/26737.sol#343)
	- _to.transfer(this.balance) (dataset/contracts/transaction_order/26737.sol#345)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#functions-that-send-ether-to-arbitrary-destinations
INFO:Detectors:
CollectibleToken.setCEO(address) (dataset/contracts/transaction_order/26737.sol#251-255) should emit an event for: 
	- ceoAddress = _newCEO (dataset/contracts/transaction_order/26737.sol#254) 
	- ceoAddress = _newCEO (dataset/contracts/transaction_order/26737.sol#254) 
CollectibleToken.setCOO(address) (dataset/contracts/transaction_order/26737.sol#259-263) should emit an event for: 
	- cooAddress = _newCOO (dataset/contracts/transaction_order/26737.sol#262) 
	- cooAddress = _newCOO (dataset/contracts/transaction_order/26737.sol#262) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-access-control
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
	- ^0.4.18 (dataset/contracts/transaction_order/26737.sol#1)
solc-0.4.18 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Parameter CollectibleToken.approve(address,uint256)._to (dataset/contracts/transaction_order/26737.sol#112) is not in mixedCase
Parameter CollectibleToken.approve(address,uint256)._tokenId (dataset/contracts/transaction_order/26737.sol#113) is not in mixedCase
Parameter CollectibleToken.balanceOf(address)._owner (dataset/contracts/transaction_order/26737.sol#126) is not in mixedCase
Parameter CollectibleToken.createPromoCollectible(uint256,address,uint256)._owner (dataset/contracts/transaction_order/26737.sol#131) is not in mixedCase
Parameter CollectibleToken.createPromoCollectible(uint256,address,uint256)._price (dataset/contracts/transaction_order/26737.sol#131) is not in mixedCase
Parameter CollectibleToken.getCollectible(uint256)._tokenId (dataset/contracts/transaction_order/26737.sol#154) is not in mixedCase
Parameter CollectibleToken.ownerOf(uint256)._tokenId (dataset/contracts/transaction_order/26737.sol#186) is not in mixedCase
Parameter CollectibleToken.payout(address)._to (dataset/contracts/transaction_order/26737.sol#195) is not in mixedCase
Parameter CollectibleToken.purchase(uint256)._tokenId (dataset/contracts/transaction_order/26737.sol#200) is not in mixedCase
Parameter CollectibleToken.priceOf(uint256)._tokenId (dataset/contracts/transaction_order/26737.sol#243) is not in mixedCase
Parameter CollectibleToken.setCEO(address)._newCEO (dataset/contracts/transaction_order/26737.sol#251) is not in mixedCase
Parameter CollectibleToken.setCOO(address)._newCOO (dataset/contracts/transaction_order/26737.sol#259) is not in mixedCase
Parameter CollectibleToken.takeOwnership(uint256)._tokenId (dataset/contracts/transaction_order/26737.sol#273) is not in mixedCase
Parameter CollectibleToken.transfer(address,uint256)._to (dataset/contracts/transaction_order/26737.sol#291) is not in mixedCase
Parameter CollectibleToken.transfer(address,uint256)._tokenId (dataset/contracts/transaction_order/26737.sol#292) is not in mixedCase
Parameter CollectibleToken.transferFrom(address,address,uint256)._from (dataset/contracts/transaction_order/26737.sol#306) is not in mixedCase
Parameter CollectibleToken.transferFrom(address,address,uint256)._to (dataset/contracts/transaction_order/26737.sol#307) is not in mixedCase
Parameter CollectibleToken.transferFrom(address,address,uint256)._tokenId (dataset/contracts/transaction_order/26737.sol#308) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
CollectibleToken.firstStepLimit (dataset/contracts/transaction_order/26737.sol#49) should be constant 
CollectibleToken.secondStepLimit (dataset/contracts/transaction_order/26737.sol#50) should be constant 
CollectibleToken.startingPrice (dataset/contracts/transaction_order/26737.sol#47) should be constant 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#state-variables-that-could-be-declared-constant
INFO:Slither:./dataset/contracts/transaction_order/26737.sol analyzed (3 contracts with 100 detectors), 27 result(s) found

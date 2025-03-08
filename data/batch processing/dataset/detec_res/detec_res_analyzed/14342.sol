'solc --version' running
'solc ./dataset/contracts/transaction_order/14342.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
AccessService.setService(address) (dataset/contracts/transaction_order/14342.sol#67-71) should emit an event for: 
	- addrService = _newService (dataset/contracts/transaction_order/14342.sol#70) 
AccessService.setFinance(address) (dataset/contracts/transaction_order/14342.sol#73-77) should emit an event for: 
	- addrFinance = _newFinance (dataset/contracts/transaction_order/14342.sol#76) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-access-control
INFO:Detectors:
AccessService.withdraw(address,uint256).receiver (dataset/contracts/transaction_order/14342.sol#84) lacks a zero-check on :
		- receiver.transfer(_amount) (dataset/contracts/transaction_order/14342.sol#87)
		- receiver.transfer(this.balance) (dataset/contracts/transaction_order/14342.sol#89)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-zero-address-validation
INFO:Detectors:
Version constraint ^0.4.20 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
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
	- ^0.4.20 (dataset/contracts/transaction_order/14342.sol#10)
solc-0.4.20 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Parameter AccessAdmin.setAdmin(address)._newAdmin (dataset/contracts/transaction_order/14342.sol#38) is not in mixedCase
Parameter AccessService.setService(address)._newService (dataset/contracts/transaction_order/14342.sol#67) is not in mixedCase
Parameter AccessService.setFinance(address)._newFinance (dataset/contracts/transaction_order/14342.sol#73) is not in mixedCase
Parameter AccessService.withdraw(address,uint256)._target (dataset/contracts/transaction_order/14342.sol#79) is not in mixedCase
Parameter AccessService.withdraw(address,uint256)._amount (dataset/contracts/transaction_order/14342.sol#79) is not in mixedCase
Parameter DataAuction.setEthAuction(address)._ethAddr (dataset/contracts/transaction_order/14342.sol#120) is not in mixedCase
Parameter DataAuction.setPlatAuction(address)._platAddr (dataset/contracts/transaction_order/14342.sol#124) is not in mixedCase
Parameter DataAuction.isOnSale(uint256)._tokenId (dataset/contracts/transaction_order/14342.sol#128) is not in mixedCase
Parameter DataAuction.isOnSaleAny2(uint256,uint256)._tokenId1 (dataset/contracts/transaction_order/14342.sol#137) is not in mixedCase
Parameter DataAuction.isOnSaleAny2(uint256,uint256)._tokenId2 (dataset/contracts/transaction_order/14342.sol#137) is not in mixedCase
Parameter DataAuction.isOnSaleAny3(uint256,uint256,uint256)._tokenId1 (dataset/contracts/transaction_order/14342.sol#147) is not in mixedCase
Parameter DataAuction.isOnSaleAny3(uint256,uint256,uint256)._tokenId2 (dataset/contracts/transaction_order/14342.sol#147) is not in mixedCase
Parameter DataAuction.isOnSaleAny3(uint256,uint256,uint256)._tokenId3 (dataset/contracts/transaction_order/14342.sol#147) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Slither:./dataset/contracts/transaction_order/14342.sol analyzed (6 contracts with 100 detectors), 18 result(s) found

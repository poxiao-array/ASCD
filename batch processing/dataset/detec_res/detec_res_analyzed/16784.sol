'solc --version' running
'solc ./dataset/contracts/transaction_order/16784.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
AccessService.setService(address) (dataset/contracts/transaction_order/16784.sol#66-70) should emit an event for: 
	- addrService = _newService (dataset/contracts/transaction_order/16784.sol#69) 
AccessService.setFinance(address) (dataset/contracts/transaction_order/16784.sol#72-76) should emit an event for: 
	- addrFinance = _newFinance (dataset/contracts/transaction_order/16784.sol#75) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-access-control
INFO:Detectors:
AccessService.withdraw(address,uint256).receiver (dataset/contracts/transaction_order/16784.sol#83) lacks a zero-check on :
		- receiver.transfer(_amount) (dataset/contracts/transaction_order/16784.sol#86)
		- receiver.transfer(this.balance) (dataset/contracts/transaction_order/16784.sol#88)
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
	- ^0.4.20 (dataset/contracts/transaction_order/16784.sol#10)
solc-0.4.20 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Parameter AccessAdmin.setAdmin(address)._newAdmin (dataset/contracts/transaction_order/16784.sol#37) is not in mixedCase
Parameter AccessService.setService(address)._newService (dataset/contracts/transaction_order/16784.sol#66) is not in mixedCase
Parameter AccessService.setFinance(address)._newFinance (dataset/contracts/transaction_order/16784.sol#72) is not in mixedCase
Parameter AccessService.withdraw(address,uint256)._target (dataset/contracts/transaction_order/16784.sol#78) is not in mixedCase
Parameter AccessService.withdraw(address,uint256)._amount (dataset/contracts/transaction_order/16784.sol#78) is not in mixedCase
Parameter DataMining.setRecommender(address,address)._target (dataset/contracts/transaction_order/16784.sol#121) is not in mixedCase
Parameter DataMining.setRecommender(address,address)._recommender (dataset/contracts/transaction_order/16784.sol#121) is not in mixedCase
Parameter DataMining.setRecommenderMulti(address[],address[])._targets (dataset/contracts/transaction_order/16784.sol#130) is not in mixedCase
Parameter DataMining.setRecommenderMulti(address[],address[])._recommenders (dataset/contracts/transaction_order/16784.sol#130) is not in mixedCase
Parameter DataMining.getRecommender(address)._target (dataset/contracts/transaction_order/16784.sol#146) is not in mixedCase
Parameter DataMining.addFreeMineral(address,uint32)._target (dataset/contracts/transaction_order/16784.sol#150) is not in mixedCase
Parameter DataMining.addFreeMineral(address,uint32)._cnt (dataset/contracts/transaction_order/16784.sol#150) is not in mixedCase
Parameter DataMining.addFreeMineralMulti(address[],uint32[])._targets (dataset/contracts/transaction_order/16784.sol#161) is not in mixedCase
Parameter DataMining.addFreeMineralMulti(address[],uint32[])._cnts (dataset/contracts/transaction_order/16784.sol#161) is not in mixedCase
Parameter DataMining.setActionContract(address,bool)._actionAddr (dataset/contracts/transaction_order/16784.sol#184) is not in mixedCase
Parameter DataMining.setActionContract(address,bool)._useful (dataset/contracts/transaction_order/16784.sol#184) is not in mixedCase
Parameter DataMining.getActionContract(address)._actionAddr (dataset/contracts/transaction_order/16784.sol#188) is not in mixedCase
Parameter DataMining.subFreeMineral(address)._target (dataset/contracts/transaction_order/16784.sol#192) is not in mixedCase
Parameter DataMining.getFreeMineral(address)._target (dataset/contracts/transaction_order/16784.sol#202) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Slither:./dataset/contracts/transaction_order/16784.sol analyzed (5 contracts with 100 detectors), 24 result(s) found

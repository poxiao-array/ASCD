'solc --version' running
'solc ./dataset/contracts/transaction_order/6872.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
CHCommitteeWrapper.withdraw() (dataset/contracts/transaction_order/6872.sol#213-216) sends eth to arbitrary user
	Dangerous calls:
	- committee.transfer(address(this).balance) (dataset/contracts/transaction_order/6872.sol#215)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#functions-that-send-ether-to-arbitrary-destinations
INFO:Detectors:
CHCommitteeWrapper.setCommittee(address) (dataset/contracts/transaction_order/6872.sol#218-220) should emit an event for: 
	- committee = _committee (dataset/contracts/transaction_order/6872.sol#219) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-access-control
INFO:Detectors:
CHCommitteeWrapper.setCommittee(address)._committee (dataset/contracts/transaction_order/6872.sol#218) lacks a zero-check on :
		- committee = _committee (dataset/contracts/transaction_order/6872.sol#219)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-zero-address-validation
INFO:Detectors:
Version constraint 0.4.24 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
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
	- 0.4.24 (dataset/contracts/transaction_order/6872.sol#1)
solc-0.4.24 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Parameter CHCommitteeWrapper.callFor(address,uint256,bytes)._to (dataset/contracts/transaction_order/6872.sol#92) is not in mixedCase
Parameter CHCommitteeWrapper.callFor(address,uint256,bytes)._gas (dataset/contracts/transaction_order/6872.sol#92) is not in mixedCase
Parameter CHCommitteeWrapper.callFor(address,uint256,bytes)._code (dataset/contracts/transaction_order/6872.sol#92) is not in mixedCase
Parameter CHCommitteeWrapper.addPet(uint256,uint256,uint256,uint256,uint256,uint256)._huntingPower (dataset/contracts/transaction_order/6872.sol#102) is not in mixedCase
Parameter CHCommitteeWrapper.addPet(uint256,uint256,uint256,uint256,uint256,uint256)._offensePower (dataset/contracts/transaction_order/6872.sol#103) is not in mixedCase
Parameter CHCommitteeWrapper.addPet(uint256,uint256,uint256,uint256,uint256,uint256)._defense (dataset/contracts/transaction_order/6872.sol#104) is not in mixedCase
Parameter CHCommitteeWrapper.addPet(uint256,uint256,uint256,uint256,uint256,uint256)._chicken (dataset/contracts/transaction_order/6872.sol#105) is not in mixedCase
Parameter CHCommitteeWrapper.addPet(uint256,uint256,uint256,uint256,uint256,uint256)._ethereum (dataset/contracts/transaction_order/6872.sol#106) is not in mixedCase
Parameter CHCommitteeWrapper.addPet(uint256,uint256,uint256,uint256,uint256,uint256)._max (dataset/contracts/transaction_order/6872.sol#107) is not in mixedCase
Parameter CHCommitteeWrapper.changePet(uint256,uint256,uint256,uint256)._id (dataset/contracts/transaction_order/6872.sol#123) is not in mixedCase
Parameter CHCommitteeWrapper.changePet(uint256,uint256,uint256,uint256)._chicken (dataset/contracts/transaction_order/6872.sol#124) is not in mixedCase
Parameter CHCommitteeWrapper.changePet(uint256,uint256,uint256,uint256)._ethereum (dataset/contracts/transaction_order/6872.sol#125) is not in mixedCase
Parameter CHCommitteeWrapper.changePet(uint256,uint256,uint256,uint256)._max (dataset/contracts/transaction_order/6872.sol#126) is not in mixedCase
Parameter CHCommitteeWrapper.addItem(uint256,uint256,uint256,uint256)._huntingMultiplier (dataset/contracts/transaction_order/6872.sol#140) is not in mixedCase
Parameter CHCommitteeWrapper.addItem(uint256,uint256,uint256,uint256)._offenseMultiplier (dataset/contracts/transaction_order/6872.sol#141) is not in mixedCase
Parameter CHCommitteeWrapper.addItem(uint256,uint256,uint256,uint256)._defenseMultiplier (dataset/contracts/transaction_order/6872.sol#142) is not in mixedCase
Parameter CHCommitteeWrapper.addItem(uint256,uint256,uint256,uint256)._price (dataset/contracts/transaction_order/6872.sol#143) is not in mixedCase
Parameter CHCommitteeWrapper.setDepot(uint256,uint256)._price (dataset/contracts/transaction_order/6872.sol#156) is not in mixedCase
Parameter CHCommitteeWrapper.setDepot(uint256,uint256)._max (dataset/contracts/transaction_order/6872.sol#156) is not in mixedCase
Parameter CHCommitteeWrapper.setConfiguration(uint256,uint256,uint256,uint256,uint256,uint256)._chickenA (dataset/contracts/transaction_order/6872.sol#161) is not in mixedCase
Parameter CHCommitteeWrapper.setConfiguration(uint256,uint256,uint256,uint256,uint256,uint256)._ethereumA (dataset/contracts/transaction_order/6872.sol#162) is not in mixedCase
Parameter CHCommitteeWrapper.setConfiguration(uint256,uint256,uint256,uint256,uint256,uint256)._maxA (dataset/contracts/transaction_order/6872.sol#163) is not in mixedCase
Parameter CHCommitteeWrapper.setConfiguration(uint256,uint256,uint256,uint256,uint256,uint256)._chickenB (dataset/contracts/transaction_order/6872.sol#164) is not in mixedCase
Parameter CHCommitteeWrapper.setConfiguration(uint256,uint256,uint256,uint256,uint256,uint256)._ethereumB (dataset/contracts/transaction_order/6872.sol#165) is not in mixedCase
Parameter CHCommitteeWrapper.setConfiguration(uint256,uint256,uint256,uint256,uint256,uint256)._maxB (dataset/contracts/transaction_order/6872.sol#166) is not in mixedCase
Parameter CHCommitteeWrapper.setDistribution(uint256,uint256,uint256,uint256)._dividendRate (dataset/contracts/transaction_order/6872.sol#182) is not in mixedCase
Parameter CHCommitteeWrapper.setDistribution(uint256,uint256,uint256,uint256)._altarCut (dataset/contracts/transaction_order/6872.sol#183) is not in mixedCase
Parameter CHCommitteeWrapper.setDistribution(uint256,uint256,uint256,uint256)._storeCut (dataset/contracts/transaction_order/6872.sol#184) is not in mixedCase
Parameter CHCommitteeWrapper.setDistribution(uint256,uint256,uint256,uint256)._devCut (dataset/contracts/transaction_order/6872.sol#185) is not in mixedCase
Parameter CHCommitteeWrapper.setCooldownTime(uint256)._cooldownTime (dataset/contracts/transaction_order/6872.sol#198) is not in mixedCase
Parameter CHCommitteeWrapper.setNameAndSymbol(string,string)._name (dataset/contracts/transaction_order/6872.sol#202) is not in mixedCase
Parameter CHCommitteeWrapper.setNameAndSymbol(string,string)._symbol (dataset/contracts/transaction_order/6872.sol#202) is not in mixedCase
Parameter CHCommitteeWrapper.setDeveloper(address)._developer (dataset/contracts/transaction_order/6872.sol#209) is not in mixedCase
Parameter CHCommitteeWrapper.setCommittee(address)._committee (dataset/contracts/transaction_order/6872.sol#218) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Slither:./dataset/contracts/transaction_order/6872.sol analyzed (2 contracts with 100 detectors), 39 result(s) found

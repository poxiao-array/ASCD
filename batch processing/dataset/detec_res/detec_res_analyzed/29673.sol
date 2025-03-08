'solc --version' running
'solc ./dataset/contracts/transaction_order/29673.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
EtherRacing (dataset/contracts/transaction_order/29673.sol#78-324) contract sets array length with a user-controlled value:
	- yesBuyer[_id].push(msg.sender) (dataset/contracts/transaction_order/29673.sol#248)
EtherRacing (dataset/contracts/transaction_order/29673.sol#78-324) contract sets array length with a user-controlled value:
	- customer.garage_idx.push(_id) (dataset/contracts/transaction_order/29673.sol#226)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#array-length-assignment
INFO:Detectors:
EtherRacing.deleteCar(uint256) (dataset/contracts/transaction_order/29673.sol#209-218) deletes EtherRacing.Car (dataset/contracts/transaction_order/29673.sol#89-104) which contains a mapping:
	-delete cars[_id] (dataset/contracts/transaction_order/29673.sol#212)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#deletion-on-mapping-containing-a-structure
INFO:Detectors:
EtherRacing.withdraw(uint256) (dataset/contracts/transaction_order/29673.sol#297-315) contains a tautology or contradiction:
	- require(bool)(_amount >= 0) (dataset/contracts/transaction_order/29673.sol#299)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#tautology-or-contradiction
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
	- ^0.4.18 (dataset/contracts/transaction_order/29673.sol#1)
solc-0.4.18 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Parameter EtherRacing.setInsertCar(bytes32,uint256,uint256,uint256,uint16,uint8,uint8,uint8,uint8,uint8)._name (dataset/contracts/transaction_order/29673.sol#141) is not in mixedCase
Parameter EtherRacing.setInsertCar(bytes32,uint256,uint256,uint256,uint16,uint8,uint8,uint8,uint8,uint8)._s_price (dataset/contracts/transaction_order/29673.sol#142) is not in mixedCase
Parameter EtherRacing.setInsertCar(bytes32,uint256,uint256,uint256,uint16,uint8,uint8,uint8,uint8,uint8)._earning (dataset/contracts/transaction_order/29673.sol#143) is not in mixedCase
Parameter EtherRacing.setInsertCar(bytes32,uint256,uint256,uint256,uint16,uint8,uint8,uint8,uint8,uint8)._o_earning (dataset/contracts/transaction_order/29673.sol#144) is not in mixedCase
Parameter EtherRacing.setInsertCar(bytes32,uint256,uint256,uint256,uint16,uint8,uint8,uint8,uint8,uint8)._brand (dataset/contracts/transaction_order/29673.sol#145) is not in mixedCase
Parameter EtherRacing.setInsertCar(bytes32,uint256,uint256,uint256,uint16,uint8,uint8,uint8,uint8,uint8)._ctype (dataset/contracts/transaction_order/29673.sol#146) is not in mixedCase
Parameter EtherRacing.setInsertCar(bytes32,uint256,uint256,uint256,uint16,uint8,uint8,uint8,uint8,uint8)._spd (dataset/contracts/transaction_order/29673.sol#147) is not in mixedCase
Parameter EtherRacing.setInsertCar(bytes32,uint256,uint256,uint256,uint16,uint8,uint8,uint8,uint8,uint8)._acc (dataset/contracts/transaction_order/29673.sol#148) is not in mixedCase
Parameter EtherRacing.setInsertCar(bytes32,uint256,uint256,uint256,uint16,uint8,uint8,uint8,uint8,uint8)._dur (dataset/contracts/transaction_order/29673.sol#149) is not in mixedCase
Parameter EtherRacing.setInsertCar(bytes32,uint256,uint256,uint256,uint16,uint8,uint8,uint8,uint8,uint8)._hndl (dataset/contracts/transaction_order/29673.sol#150) is not in mixedCase
Parameter EtherRacing.updateCar(uint256,bytes32,uint256,uint256,uint256,uint16,uint8,uint8,uint8,uint8,uint8)._id (dataset/contracts/transaction_order/29673.sol#160) is not in mixedCase
Parameter EtherRacing.updateCar(uint256,bytes32,uint256,uint256,uint256,uint16,uint8,uint8,uint8,uint8,uint8)._name (dataset/contracts/transaction_order/29673.sol#161) is not in mixedCase
Parameter EtherRacing.updateCar(uint256,bytes32,uint256,uint256,uint256,uint16,uint8,uint8,uint8,uint8,uint8)._s_price (dataset/contracts/transaction_order/29673.sol#162) is not in mixedCase
Parameter EtherRacing.updateCar(uint256,bytes32,uint256,uint256,uint256,uint16,uint8,uint8,uint8,uint8,uint8)._earning (dataset/contracts/transaction_order/29673.sol#163) is not in mixedCase
Parameter EtherRacing.updateCar(uint256,bytes32,uint256,uint256,uint256,uint16,uint8,uint8,uint8,uint8,uint8)._o_earning (dataset/contracts/transaction_order/29673.sol#164) is not in mixedCase
Parameter EtherRacing.updateCar(uint256,bytes32,uint256,uint256,uint256,uint16,uint8,uint8,uint8,uint8,uint8)._brand (dataset/contracts/transaction_order/29673.sol#165) is not in mixedCase
Parameter EtherRacing.updateCar(uint256,bytes32,uint256,uint256,uint256,uint16,uint8,uint8,uint8,uint8,uint8)._ctype (dataset/contracts/transaction_order/29673.sol#166) is not in mixedCase
Parameter EtherRacing.updateCar(uint256,bytes32,uint256,uint256,uint256,uint16,uint8,uint8,uint8,uint8,uint8)._spd (dataset/contracts/transaction_order/29673.sol#167) is not in mixedCase
Parameter EtherRacing.updateCar(uint256,bytes32,uint256,uint256,uint256,uint16,uint8,uint8,uint8,uint8,uint8)._acc (dataset/contracts/transaction_order/29673.sol#168) is not in mixedCase
Parameter EtherRacing.updateCar(uint256,bytes32,uint256,uint256,uint256,uint16,uint8,uint8,uint8,uint8,uint8)._dur (dataset/contracts/transaction_order/29673.sol#169) is not in mixedCase
Parameter EtherRacing.updateCar(uint256,bytes32,uint256,uint256,uint256,uint16,uint8,uint8,uint8,uint8,uint8)._hndl (dataset/contracts/transaction_order/29673.sol#170) is not in mixedCase
Parameter EtherRacing.getCar(uint256)._id (dataset/contracts/transaction_order/29673.sol#186) is not in mixedCase
Parameter EtherRacing.getCarName(uint256)._id (dataset/contracts/transaction_order/29673.sol#201) is not in mixedCase
Parameter EtherRacing.deleteCar(uint256)._id (dataset/contracts/transaction_order/29673.sol#209) is not in mixedCase
Parameter EtherRacing.buyCar(uint256)._id (dataset/contracts/transaction_order/29673.sol#220) is not in mixedCase
Parameter EtherRacing.getMyCarsIdxCount(uint256)._id (dataset/contracts/transaction_order/29673.sol#259) is not in mixedCase
Parameter EtherRacing.earnedOf(address)._address (dataset/contracts/transaction_order/29673.sol#277) is not in mixedCase
Parameter EtherRacing.carnumOf(address)._address (dataset/contracts/transaction_order/29673.sol#281) is not in mixedCase
Parameter EtherRacing.withdraw(uint256)._amount (dataset/contracts/transaction_order/29673.sol#297) is not in mixedCase
Variable EtherRacing.store_balance (dataset/contracts/transaction_order/29673.sol#111) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Slither:./dataset/contracts/transaction_order/29673.sol analyzed (3 contracts with 100 detectors), 36 result(s) found

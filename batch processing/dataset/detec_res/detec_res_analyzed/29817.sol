'solc --version' running
'solc ./dataset/contracts/transaction_order/29817.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
BasicToken.transfer(address,uint256) (dataset/contracts/transaction_order/29817.sol#175-185) contains a tautology or contradiction:
	- require(bool)(_value >= 0) (dataset/contracts/transaction_order/29817.sol#178)
BasicToken.transferByOwnerContract(address,uint256) (dataset/contracts/transaction_order/29817.sol#188-198) contains a tautology or contradiction:
	- require(bool)(_value >= 0) (dataset/contracts/transaction_order/29817.sol#191)
StandardToken.transferFrom(address,address,uint256) (dataset/contracts/transaction_order/29817.sol#231-242) contains a tautology or contradiction:
	- require(bool)(_value >= 0) (dataset/contracts/transaction_order/29817.sol#234)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#tautology-or-contradiction
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
	- 0.4.18 (dataset/contracts/transaction_order/29817.sol#1)
solc-0.4.18 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Parameter Destructible.destroyAndSend(address)._recipient (dataset/contracts/transaction_order/29817.sol#117) is not in mixedCase
Parameter BasicToken.transfer(address,uint256)._to (dataset/contracts/transaction_order/29817.sol#175) is not in mixedCase
Parameter BasicToken.transfer(address,uint256)._value (dataset/contracts/transaction_order/29817.sol#175) is not in mixedCase
Parameter BasicToken.transferByOwnerContract(address,uint256)._to (dataset/contracts/transaction_order/29817.sol#188) is not in mixedCase
Parameter BasicToken.transferByOwnerContract(address,uint256)._value (dataset/contracts/transaction_order/29817.sol#188) is not in mixedCase
Parameter BasicToken.balanceOf(address)._owner (dataset/contracts/transaction_order/29817.sol#205) is not in mixedCase
Parameter StandardToken.transferFrom(address,address,uint256)._from (dataset/contracts/transaction_order/29817.sol#231) is not in mixedCase
Parameter StandardToken.transferFrom(address,address,uint256)._to (dataset/contracts/transaction_order/29817.sol#231) is not in mixedCase
Parameter StandardToken.transferFrom(address,address,uint256)._value (dataset/contracts/transaction_order/29817.sol#231) is not in mixedCase
Parameter StandardToken.approve(address,uint256)._spender (dataset/contracts/transaction_order/29817.sol#254) is not in mixedCase
Parameter StandardToken.approve(address,uint256)._value (dataset/contracts/transaction_order/29817.sol#254) is not in mixedCase
Parameter StandardToken.allowance(address,address)._owner (dataset/contracts/transaction_order/29817.sol#267) is not in mixedCase
Parameter StandardToken.allowance(address,address)._spender (dataset/contracts/transaction_order/29817.sol#267) is not in mixedCase
Parameter StandardToken.increaseApproval(address,uint256)._spender (dataset/contracts/transaction_order/29817.sol#279) is not in mixedCase
Parameter StandardToken.increaseApproval(address,uint256)._addedValue (dataset/contracts/transaction_order/29817.sol#279) is not in mixedCase
Parameter StandardToken.decreaseApproval(address,uint256)._spender (dataset/contracts/transaction_order/29817.sol#285) is not in mixedCase
Parameter StandardToken.decreaseApproval(address,uint256)._subtractedValue (dataset/contracts/transaction_order/29817.sol#285) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
BasicToken.isDistributeToFounders (dataset/contracts/transaction_order/29817.sol#166) is never used in DeedCoin (dataset/contracts/transaction_order/29817.sol#297-318)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#unused-state-variable
INFO:Detectors:
BasicToken.isDistributeToFounders (dataset/contracts/transaction_order/29817.sol#166) should be constant 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#state-variables-that-could-be-declared-constant
INFO:Slither:./dataset/contracts/transaction_order/29817.sol analyzed (10 contracts with 100 detectors), 24 result(s) found

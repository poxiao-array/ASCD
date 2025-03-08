'solc --version' running
'solc ./dataset/contracts/transaction_order/12114.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
TokenInterface (dataset/contracts/transaction_order/12114.sol#67-75) has incorrect ERC20 function interface:TokenInterface.approve(address,uint256) (dataset/contracts/transaction_order/12114.sol#70)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-erc20-interface
INFO:Detectors:
OasisDirectProxy.newFee(uint256) (dataset/contracts/transaction_order/12114.sol#107-110) should emit an event for: 
	- feePercentageWad = newFeePercentageWad (dataset/contracts/transaction_order/12114.sol#109) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-arithmetic
INFO:Detectors:
Control.withdrawTo(address,uint256)._to (dataset/contracts/transaction_order/12114.sol#86) lacks a zero-check on :
		- _to.transfer(amt) (dataset/contracts/transaction_order/12114.sol#87)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-zero-address-validation
INFO:Detectors:
DSMath.imax(int256,int256) (dataset/contracts/transaction_order/12114.sol#28-30) is never used and should be removed
DSMath.imin(int256,int256) (dataset/contracts/transaction_order/12114.sol#25-27) is never used and should be removed
DSMath.max(uint256,uint256) (dataset/contracts/transaction_order/12114.sol#22-24) is never used and should be removed
DSMath.rdiv(uint256,uint256) (dataset/contracts/transaction_order/12114.sol#44-46) is never used and should be removed
DSMath.rmul(uint256,uint256) (dataset/contracts/transaction_order/12114.sol#38-40) is never used and should be removed
DSMath.rpow(uint256,uint256) (dataset/contracts/transaction_order/12114.sol#48-58) is never used and should be removed
DSMath.wdiv(uint256,uint256) (dataset/contracts/transaction_order/12114.sol#41-43) is never used and should be removed
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
	- ^0.4.24 (dataset/contracts/transaction_order/12114.sol#6)
solc-0.4.24 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Low level call in OasisDirectProxy.withdrawAndSend(TokenInterface,uint256) (dataset/contracts/transaction_order/12114.sol#118-121):
	- require(bool)(msg.sender.call.value(wethAmt)()) (dataset/contracts/transaction_order/12114.sol#120)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#low-level-calls
INFO:Detectors:
Parameter Control.withdrawTo(address,uint256)._to (dataset/contracts/transaction_order/12114.sol#86) is not in mixedCase
Parameter Control.withdrawTokenTo(TokenInterface,address,uint256)._to (dataset/contracts/transaction_order/12114.sol#90) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Slither:./dataset/contracts/transaction_order/12114.sol analyzed (5 contracts with 100 detectors), 15 result(s) found

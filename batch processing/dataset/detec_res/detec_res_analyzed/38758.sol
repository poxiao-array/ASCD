'solc --version' running
'solc ./dataset/contracts/transaction_order/38758.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
AutoSplit.change_a(address) (dataset/contracts/transaction_order/38758.sol#21-23) should emit an event for: 
	- a = new_a (dataset/contracts/transaction_order/38758.sol#22) 
AutoSplit.change_b(address) (dataset/contracts/transaction_order/38758.sol#25-27) should emit an event for: 
	- b = new_b (dataset/contracts/transaction_order/38758.sol#26) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-access-control
INFO:Detectors:
AutoSplit.change_rate(uint256) (dataset/contracts/transaction_order/38758.sol#29-31) should emit an event for: 
	- rate = new_rate (dataset/contracts/transaction_order/38758.sol#30) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-arithmetic
INFO:Detectors:
AutoSplit.change_a(address).new_a (dataset/contracts/transaction_order/38758.sol#21) lacks a zero-check on :
		- a = new_a (dataset/contracts/transaction_order/38758.sol#22)
AutoSplit.change_b(address).new_b (dataset/contracts/transaction_order/38758.sol#25) lacks a zero-check on :
		- b = new_b (dataset/contracts/transaction_order/38758.sol#26)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-zero-address-validation
INFO:Detectors:
Deprecated standard detected suicide(address)(msg.sender) (dataset/contracts/transaction_order/38758.sol#38):
	- Usage of "suicide()" should be replaced with "selfdestruct()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/38758.sol#11):
	- Usage of "throw" should be replaced with "revert()"
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#deprecated-standards
INFO:Detectors:
Version constraint ^0.4.11 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
	- DirtyBytesArrayToStorage
	- KeccakCaching
	- EmptyByteArrayCopy
	- DynamicArrayCleanup
	- ImplicitConstructorCallvalueCheck
	- TupleAssignmentMultiStackSlotComponents
	- MemoryArrayCreationOverflow
	- privateCanBeOverridden
	- SignedArrayStorageCopy
	- UninitializedFunctionPointerInConstructor_0.4.x
	- IncorrectEventSignatureInLibraries_0.4.x
	- ExpExponentCleanup
	- NestedArrayFunctionCallDecoder
	- ZeroFunctionSelector
	- DelegateCallReturnValue
	- ECRecoverMalformedInput
	- SkipEmptyStringLiteral.
It is used by:
	- ^0.4.11 (dataset/contracts/transaction_order/38758.sol#1)
solc-0.4.11 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Function AutoSplit.change_a(address) (dataset/contracts/transaction_order/38758.sol#21-23) is not in mixedCase
Parameter AutoSplit.change_a(address).new_a (dataset/contracts/transaction_order/38758.sol#21) is not in mixedCase
Function AutoSplit.change_b(address) (dataset/contracts/transaction_order/38758.sol#25-27) is not in mixedCase
Parameter AutoSplit.change_b(address).new_b (dataset/contracts/transaction_order/38758.sol#25) is not in mixedCase
Function AutoSplit.change_rate(uint256) (dataset/contracts/transaction_order/38758.sol#29-31) is not in mixedCase
Parameter AutoSplit.change_rate(uint256).new_rate (dataset/contracts/transaction_order/38758.sol#29) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Slither:./dataset/contracts/transaction_order/38758.sol analyzed (1 contracts with 100 detectors), 15 result(s) found

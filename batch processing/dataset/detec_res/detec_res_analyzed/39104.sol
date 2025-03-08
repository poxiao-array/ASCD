'solc --version' running
'solc ./dataset/contracts/transaction_order/39104.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
Deprecated standard detected THROW (dataset/contracts/transaction_order/39104.sol#15):
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
	- ^0.4.11 (dataset/contracts/transaction_order/39104.sol#1)
solc-0.4.11 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Function Johnsonville.Donate() (dataset/contracts/transaction_order/39104.sol#26-39) is not in mixedCase
Function Johnsonville.PatronOneWithdrawal() (dataset/contracts/transaction_order/39104.sol#41-43) is not in mixedCase
Function Johnsonville.PatronTwoWithdrawal() (dataset/contracts/transaction_order/39104.sol#45-47) is not in mixedCase
Function Johnsonville.PatronThreeWithdrawal() (dataset/contracts/transaction_order/39104.sol#49-51) is not in mixedCase
Function Johnsonville.Withdrawal(address) (dataset/contracts/transaction_order/39104.sol#53-57) is not in mixedCase
Function Johnsonville.KillContract() (dataset/contracts/transaction_order/39104.sol#59-61) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Slither:./dataset/contracts/transaction_order/39104.sol analyzed (1 contracts with 100 detectors), 9 result(s) found

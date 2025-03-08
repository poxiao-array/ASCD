'solc --version' running
'solc ./dataset/contracts/transaction_order/43.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
Compilation warnings/errors on ./dataset/contracts/transaction_order/43.sol:
./dataset/contracts/transaction_order/43.sol:22:13: Warning: Uninitialized storage pointer. Did you mean '<type> memory newDeposit'?
            Deposit newDeposit;
            ^----------------^

INFO:Detectors:
Presale (dataset/contracts/transaction_order/43.sol#3-53) contract sets array length with a user-controlled value:
	- Deposits.push(newDeposit) (dataset/contracts/transaction_order/43.sol#25)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#array-length-assignment
INFO:Detectors:
Presale.deposit().newDeposit (dataset/contracts/transaction_order/43.sol#22) is a storage variable never initialized
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#uninitialized-storage-variables
INFO:Detectors:
Presale.refund(uint256) (dataset/contracts/transaction_order/43.sol#34-43) uses timestamp for comparisons
	Dangerous comparisons:
	- now >= refundDate && isClosed == false (dataset/contracts/transaction_order/43.sol#36)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#block-timestamp
INFO:Detectors:
Presale.refund(uint256) (dataset/contracts/transaction_order/43.sol#34-43) compares to a boolean constant:
	-now >= refundDate && isClosed == false (dataset/contracts/transaction_order/43.sol#36)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#boolean-equality
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
	- ^0.4.11 (dataset/contracts/transaction_order/43.sol#1)
solc-0.4.11 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Variable Presale.Deposits (dataset/contracts/transaction_order/43.sol#8) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Slither:./dataset/contracts/transaction_order/43.sol analyzed (1 contracts with 100 detectors), 7 result(s) found

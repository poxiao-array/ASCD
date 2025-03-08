'solc --version' running
'solc ./dataset/contracts/transaction_order/38260.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
Lotthereum.closeRound(uint256) (dataset/contracts/transaction_order/38260.sol#178-190) is declared view but changes state variables:
	- Lotthereum.games (dataset/contracts/transaction_order/38260.sol#76)
	- Lotthereum.balances (dataset/contracts/transaction_order/38260.sol#77)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#constant-functions-changing-the-state
INFO:Detectors:
Lotthereum.getNumber(bytes32) (dataset/contracts/transaction_order/38260.sol#199-220) contains a tautology or contradiction:
	- i >= 0 (dataset/contracts/transaction_order/38260.sol#203)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#tautology-or-contradiction
INFO:Detectors:
SafeMath.assert(bool) (dataset/contracts/transaction_order/38260.sol#42-46) (function) shadows built-in symbol"
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#builtin-symbol-shadowing
INFO:Detectors:
Modifier Owned.onlyowner() (dataset/contracts/transaction_order/38260.sol#53-57) does not always execute _; or revert
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-modifier
INFO:Detectors:
SafeMath.max(uint256,uint256) (dataset/contracts/transaction_order/38260.sol#38-40) is never used and should be removed
SafeMath.max64(uint64,uint64) (dataset/contracts/transaction_order/38260.sol#30-32) is never used and should be removed
SafeMath.min(uint256,uint256) (dataset/contracts/transaction_order/38260.sol#34-36) is never used and should be removed
SafeMath.min64(uint64,uint64) (dataset/contracts/transaction_order/38260.sol#26-28) is never used and should be removed
SafeMath.multiply(uint256,uint256) (dataset/contracts/transaction_order/38260.sol#14-18) is never used and should be removed
SafeMath.subtract(uint256,uint256) (dataset/contracts/transaction_order/38260.sol#10-12) is never used and should be removed
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#dead-code
INFO:Detectors:
Deprecated standard detected blockHash = block.blockhash(block.number - i) (dataset/contracts/transaction_order/38260.sol#196):
	- Usage of "block.blockhash()" should be replaced with "blockhash()"
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
	- ^0.4.11 (dataset/contracts/transaction_order/38260.sol#1)
solc-0.4.11 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Parameter Lotthereum.getNumber(bytes32)._a (dataset/contracts/transaction_order/38260.sol#199) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
Loop condition i < games.length (dataset/contracts/transaction_order/38260.sol#268) should use cached array length instead of referencing `length` member of the storage array.
 Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#cache-array-length
INFO:Slither:./dataset/contracts/transaction_order/38260.sol analyzed (4 contracts with 100 detectors), 15 result(s) found

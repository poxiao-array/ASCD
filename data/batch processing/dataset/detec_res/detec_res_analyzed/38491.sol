'solc --version' running
'solc ./dataset/contracts/transaction_order/38491.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
Lotthereum.closeRound() (dataset/contracts/transaction_order/38491.sol#108-115) is declared view but changes state variables:
	- Lotthereum.winners (dataset/contracts/transaction_order/38491.sol#39)
	- Lotthereum.rounds (dataset/contracts/transaction_order/38491.sol#36)
	- Lotthereum.currentRound (dataset/contracts/transaction_order/38491.sol#33)
	- Lotthereum.balances (dataset/contracts/transaction_order/38491.sol#38)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#constant-functions-changing-the-state
INFO:Detectors:
Lotthereum.getNumber(bytes32) (dataset/contracts/transaction_order/38491.sol#125-146) contains a tautology or contradiction:
	- i >= 0 (dataset/contracts/transaction_order/38491.sol#129)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#tautology-or-contradiction
INFO:Detectors:
Lotthereum.payout().prize (dataset/contracts/transaction_order/38491.sol#100) shadows:
	- Lotthereum.prize (dataset/contracts/transaction_order/38491.sol#32) (state variable)
Lotthereum.bet(uint8).bet (dataset/contracts/transaction_order/38491.sol#148) shadows:
	- Lotthereum.bet(uint8) (dataset/contracts/transaction_order/38491.sol#148-171) (function)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#local-variable-shadowing
INFO:Detectors:
Modifier Owned.onlyowner() (dataset/contracts/transaction_order/38491.sol#7-11) does not always execute _; or revert
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-modifier
INFO:Detectors:
Deprecated standard detected blockHash = block.blockhash(blockNumber) (dataset/contracts/transaction_order/38491.sol#122):
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
	- ^0.4.11 (dataset/contracts/transaction_order/38491.sol#1)
solc-0.4.11 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Parameter Lotthereum.getNumber(bytes32)._a (dataset/contracts/transaction_order/38491.sol#125) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Slither:./dataset/contracts/transaction_order/38491.sol analyzed (3 contracts with 100 detectors), 9 result(s) found

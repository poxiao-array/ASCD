'solc --version' running
'solc ./dataset/contracts/transaction_order/cross-function-reentrancy.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
Compilation warnings/errors on ./dataset/contracts/transaction_order/cross-function-reentrancy.sol:
./dataset/contracts/transaction_order/cross-function-reentrancy.sol:16:13: Warning: "throw" is deprecated in favour of "revert()", "require()" and "assert()".
            throw;
            ^---^

INFO:Detectors:
Owner.WithdrawReward(address) (dataset/contracts/transaction_order/cross-function-reentrancy.sol#7-11) sends eth to arbitrary user
	Dangerous calls:
	- require(bool)(recipient.call.value(amountToWithdraw)()) (dataset/contracts/transaction_order/cross-function-reentrancy.sol#10)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#functions-that-send-ether-to-arbitrary-destinations
INFO:Detectors:
Reentrancy in Owner.GetFirstWithdrawalBonus(address) (dataset/contracts/transaction_order/cross-function-reentrancy.sol#13-21):
	External calls:
	- WithdrawReward(recipient) (dataset/contracts/transaction_order/cross-function-reentrancy.sol#19)
		- require(bool)(recipient.call.value(amountToWithdraw)()) (dataset/contracts/transaction_order/cross-function-reentrancy.sol#10)
	State variables written after the call(s):
	- claimedBonus[recipient] = true (dataset/contracts/transaction_order/cross-function-reentrancy.sol#20)
	Owner.claimedBonus (dataset/contracts/transaction_order/cross-function-reentrancy.sol#4) can be used in cross function reentrancies:
	- Owner.GetFirstWithdrawalBonus(address) (dataset/contracts/transaction_order/cross-function-reentrancy.sol#13-21)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#reentrancy-vulnerabilities
INFO:Detectors:
Owner.GetFirstWithdrawalBonus(address) (dataset/contracts/transaction_order/cross-function-reentrancy.sol#13-21) compares to a boolean constant:
	-claimedBonus[recipient] == false (dataset/contracts/transaction_order/cross-function-reentrancy.sol#15)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#boolean-equality
INFO:Detectors:
Deprecated standard detected THROW (dataset/contracts/transaction_order/cross-function-reentrancy.sol#16):
	- Usage of "throw" should be replaced with "revert()"
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#deprecated-standards
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
	- ^0.4.18 (dataset/contracts/transaction_order/cross-function-reentrancy.sol#1)
solc-0.4.18 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Low level call in Owner.WithdrawReward(address) (dataset/contracts/transaction_order/cross-function-reentrancy.sol#7-11):
	- require(bool)(recipient.call.value(amountToWithdraw)()) (dataset/contracts/transaction_order/cross-function-reentrancy.sol#10)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#low-level-calls
INFO:Detectors:
Function Owner.WithdrawReward(address) (dataset/contracts/transaction_order/cross-function-reentrancy.sol#7-11) is not in mixedCase
Function Owner.GetFirstWithdrawalBonus(address) (dataset/contracts/transaction_order/cross-function-reentrancy.sol#13-21) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
Owner.userBalances (dataset/contracts/transaction_order/cross-function-reentrancy.sol#3) is never used in Owner (dataset/contracts/transaction_order/cross-function-reentrancy.sol#2-23)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#unused-state-variable
INFO:Slither:./dataset/contracts/transaction_order/cross-function-reentrancy.sol analyzed (1 contracts with 100 detectors), 10 result(s) found

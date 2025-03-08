'solc --version' running
'solc ./dataset/contracts/transaction_order/38526.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
Reentrancy in MultiSigWallet.executeTransaction(uint256) (dataset/contracts/transaction_order/38526.sol#393-408):
	External calls:
	- tx.destination.call.value(tx.value)(tx.data) (dataset/contracts/transaction_order/38526.sol#400)
	State variables written after the call(s):
	- tx.executed = true (dataset/contracts/transaction_order/38526.sol#401)
	MultiSig.transactions (dataset/contracts/transaction_order/38526.sol#40) can be used in cross function reentrancies:
	- MultiSig.addTransaction(address,uint256,bytes) (dataset/contracts/transaction_order/38526.sol#271-285)
	- MultiSigWallet.executeTransaction(uint256) (dataset/contracts/transaction_order/38526.sol#393-408)
	- MultiSig.getTransactionCount(bool,bool) (dataset/contracts/transaction_order/38526.sol#307-316)
	- MultiSig.getTransactionIds(uint256,uint256,bool,bool) (dataset/contracts/transaction_order/38526.sol#355-373)
	- MultiSig.notExecuted(uint256) (dataset/contracts/transaction_order/38526.sol#90-94)
	- MultiSig.transactionExists(uint256) (dataset/contracts/transaction_order/38526.sol#72-76)
	- MultiSig.transactions (dataset/contracts/transaction_order/38526.sol#40)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#reentrancy-vulnerabilities
INFO:Detectors:
Reentrancy in MultiSigToken.executeTransaction(uint256) (dataset/contracts/transaction_order/38526.sol#433-448):
	External calls:
	- tokenFactory.transfer(tx.destination,tx.value) (dataset/contracts/transaction_order/38526.sol#440)
	State variables written after the call(s):
	- tx.executed = true (dataset/contracts/transaction_order/38526.sol#441)
	MultiSig.transactions (dataset/contracts/transaction_order/38526.sol#40) can be used in cross function reentrancies:
	- MultiSig.addTransaction(address,uint256,bytes) (dataset/contracts/transaction_order/38526.sol#271-285)
	- MultiSigToken.executeTransaction(uint256) (dataset/contracts/transaction_order/38526.sol#433-448)
	- MultiSig.getTransactionCount(bool,bool) (dataset/contracts/transaction_order/38526.sol#307-316)
	- MultiSig.getTransactionIds(uint256,uint256,bool,bool) (dataset/contracts/transaction_order/38526.sol#355-373)
	- MultiSig.notExecuted(uint256) (dataset/contracts/transaction_order/38526.sol#90-94)
	- MultiSig.transactionExists(uint256) (dataset/contracts/transaction_order/38526.sol#72-76)
	- MultiSig.transactions (dataset/contracts/transaction_order/38526.sol#40)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#reentrancy-vulnerabilities-1
INFO:Detectors:
MultiSigWallet.executeTransaction(uint256).tx (dataset/contracts/transaction_order/38526.sol#398) (local variable) shadows built-in symbol"
MultiSigToken.executeTransaction(uint256).tx (dataset/contracts/transaction_order/38526.sol#438) (local variable) shadows built-in symbol"
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#builtin-symbol-shadowing
INFO:Detectors:
MultiSig.addOwner(address).owner (dataset/contracts/transaction_order/38526.sol#132) shadows:
	- owned.owner (dataset/contracts/transaction_order/38526.sol#9) (state variable)
MultiSig.removeOwner(address).owner (dataset/contracts/transaction_order/38526.sol#149) shadows:
	- owned.owner (dataset/contracts/transaction_order/38526.sol#9) (state variable)
MultiSig.replaceOwner(address,address).owner (dataset/contracts/transaction_order/38526.sol#171) shadows:
	- owned.owner (dataset/contracts/transaction_order/38526.sol#9) (state variable)
MultiSig.ownerDoesNotExist(address).owner (dataset/contracts/transaction_order/38526.sol#60) shadows:
	- owned.owner (dataset/contracts/transaction_order/38526.sol#9) (state variable)
MultiSig.ownerExists(address).owner (dataset/contracts/transaction_order/38526.sol#66) shadows:
	- owned.owner (dataset/contracts/transaction_order/38526.sol#9) (state variable)
MultiSig.confirmed(uint256,address).owner (dataset/contracts/transaction_order/38526.sol#78) shadows:
	- owned.owner (dataset/contracts/transaction_order/38526.sol#9) (state variable)
MultiSig.notConfirmed(uint256,address).owner (dataset/contracts/transaction_order/38526.sol#84) shadows:
	- owned.owner (dataset/contracts/transaction_order/38526.sol#9) (state variable)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#local-variable-shadowing
INFO:Detectors:
owned.transferOwnership(address) (dataset/contracts/transaction_order/38526.sol#20-22) should emit an event for: 
	- owner = newOwner (dataset/contracts/transaction_order/38526.sol#21) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-access-control
INFO:Detectors:
owned.transferOwnership(address).newOwner (dataset/contracts/transaction_order/38526.sol#20) lacks a zero-check on :
		- owner = newOwner (dataset/contracts/transaction_order/38526.sol#21)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-zero-address-validation
INFO:Detectors:
Reentrancy in MultiSigWallet.executeTransaction(uint256) (dataset/contracts/transaction_order/38526.sol#393-408):
	External calls:
	- tx.destination.call.value(tx.value)(tx.data) (dataset/contracts/transaction_order/38526.sol#400)
	Event emitted after the call(s):
	- Execution(transactionId) (dataset/contracts/transaction_order/38526.sol#402)
Reentrancy in MultiSigToken.executeTransaction(uint256) (dataset/contracts/transaction_order/38526.sol#433-448):
	External calls:
	- tokenFactory.transfer(tx.destination,tx.value) (dataset/contracts/transaction_order/38526.sol#440)
	Event emitted after the call(s):
	- Execution(transactionId) (dataset/contracts/transaction_order/38526.sol#442)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#reentrancy-vulnerabilities-3
INFO:Detectors:
Deprecated standard detected THROW (dataset/contracts/transaction_order/38526.sol#16):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/38526.sol#123):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/38526.sol#56):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/38526.sol#62):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/38526.sol#68):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/38526.sol#74):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/38526.sol#80):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/38526.sol#86):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/38526.sol#92):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/38526.sol#98):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/38526.sol#107):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/38526.sol#428):
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
	- ^0.4.11 (dataset/contracts/transaction_order/38526.sol#5)
solc-0.4.11 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Low level call in MultiSigWallet.executeTransaction(uint256) (dataset/contracts/transaction_order/38526.sol#393-408):
	- tx.destination.call.value(tx.value)(tx.data) (dataset/contracts/transaction_order/38526.sol#400)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#low-level-calls
INFO:Detectors:
Contract owned (dataset/contracts/transaction_order/38526.sol#8-23) is not in CapWords
Parameter MultiSig.changeRequirement(uint256)._required (dataset/contracts/transaction_order/38526.sol#190) is not in mixedCase
Contract token (dataset/contracts/transaction_order/38526.sol#413) is not in CapWords
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
Loop condition i < owners.length (dataset/contracts/transaction_order/38526.sol#255) should use cached array length instead of referencing `length` member of the storage array.
 Loop condition i < owners.length (dataset/contracts/transaction_order/38526.sol#298) should use cached array length instead of referencing `length` member of the storage array.
 Loop condition i < owners.length (dataset/contracts/transaction_order/38526.sol#339) should use cached array length instead of referencing `length` member of the storage array.
 Loop condition i < owners.length (dataset/contracts/transaction_order/38526.sol#177) should use cached array length instead of referencing `length` member of the storage array.
 Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#cache-array-length
INFO:Detectors:
submitTransaction(address,uint256,bytes) should be declared external:
	- MultiSig.submitTransaction(address,uint256,bytes) (dataset/contracts/transaction_order/38526.sol#204-211)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#public-function-that-could-be-declared-external
INFO:Slither:./dataset/contracts/transaction_order/38526.sol analyzed (5 contracts with 100 detectors), 38 result(s) found

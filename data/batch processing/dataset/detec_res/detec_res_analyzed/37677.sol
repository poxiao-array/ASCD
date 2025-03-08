'solc --version' running
'solc ./dataset/contracts/transaction_order/37677.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
Random.getRandomFromBlockHash(uint256,uint256) (dataset/contracts/transaction_order/37677.sol#116-126) uses a weak PRNG: "(add(uint256(sha3()(block.blockhash(blockNumber))) % max,1)) (dataset/contracts/transaction_order/37677.sol#125)" 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#weak-PRNG
INFO:Detectors:
RandomLedgerService._canReveal(address,address) (dataset/contracts/transaction_order/37677.sol#316-332) uses a dangerous strict equality:
	- _remainingBlocks(_requestor) == 0 (dataset/contracts/transaction_order/37677.sol#324)
RandomLedgerService.isRequestPending(address) (dataset/contracts/transaction_order/37677.sol#365-373) uses a dangerous strict equality:
	- pendingNumbers[_requestor].renderedNumber == 0 && pendingNumbers[_requestor].waitTime > 0 (dataset/contracts/transaction_order/37677.sol#369)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#dangerous-strict-equalities
INFO:Detectors:
Owned.transferOwnership(address) (dataset/contracts/transaction_order/37677.sol#54-56) should emit an event for: 
	- owner = _newOwner (dataset/contracts/transaction_order/37677.sol#55) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-access-control
INFO:Detectors:
RandomLedgerService.setMax(uint256) (dataset/contracts/transaction_order/37677.sol#184-190) should emit an event for: 
	- max = _max (dataset/contracts/transaction_order/37677.sol#188) 
RandomLedgerService.setWaitTime(uint8) (dataset/contracts/transaction_order/37677.sol#193-199) should emit an event for: 
	- waitTime = _waitTime (dataset/contracts/transaction_order/37677.sol#197) 
RandomLedgerService.setCost(uint256) (dataset/contracts/transaction_order/37677.sol#202-208) should emit an event for: 
	- cost = _cost (dataset/contracts/transaction_order/37677.sol#206) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-arithmetic
INFO:Detectors:
Owned.transferOwnership(address)._newOwner (dataset/contracts/transaction_order/37677.sol#54) lacks a zero-check on :
		- owner = _newOwner (dataset/contracts/transaction_order/37677.sol#55)
RandomLedgerService.withdraw(address,uint256)._recipient (dataset/contracts/transaction_order/37677.sol#230) lacks a zero-check on :
		- _recipient.transfer(_balance) (dataset/contracts/transaction_order/37677.sol#234)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-zero-address-validation
INFO:Detectors:
SafeMath.div(uint256,uint256) (dataset/contracts/transaction_order/37677.sol#83-91) is never used and should be removed
SafeMath.mul(uint256,uint256) (dataset/contracts/transaction_order/37677.sol#74-81) is never used and should be removed
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#dead-code
INFO:Detectors:
Deprecated standard detected (add(uint256(sha3()(block.blockhash(blockNumber))) % max,1)) (dataset/contracts/transaction_order/37677.sol#125):
	- Usage of "block.blockhash()" should be replaced with "blockhash()"
	- Usage of "sha3()" should be replaced with "keccak256()"
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
	- ^0.4.11 (dataset/contracts/transaction_order/37677.sol#1)
solc-0.4.11 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Parameter Owned.transferOwnership(address)._newOwner (dataset/contracts/transaction_order/37677.sol#54) is not in mixedCase
Parameter RandomLedgerService.setMax(uint256)._max (dataset/contracts/transaction_order/37677.sol#184) is not in mixedCase
Parameter RandomLedgerService.setWaitTime(uint8)._waitTime (dataset/contracts/transaction_order/37677.sol#193) is not in mixedCase
Parameter RandomLedgerService.setCost(uint256)._cost (dataset/contracts/transaction_order/37677.sol#202) is not in mixedCase
Parameter RandomLedgerService.enableProxy(address)._proxy (dataset/contracts/transaction_order/37677.sol#213) is not in mixedCase
Parameter RandomLedgerService.removeProxy(address)._proxy (dataset/contracts/transaction_order/37677.sol#221) is not in mixedCase
Parameter RandomLedgerService.withdraw(address,uint256)._recipient (dataset/contracts/transaction_order/37677.sol#230) is not in mixedCase
Parameter RandomLedgerService.withdraw(address,uint256)._balance (dataset/contracts/transaction_order/37677.sol#230) is not in mixedCase
Parameter RandomLedgerService.requestNumber(address,uint256,uint8)._requestor (dataset/contracts/transaction_order/37677.sol#246) is not in mixedCase
Parameter RandomLedgerService.requestNumber(address,uint256,uint8)._max (dataset/contracts/transaction_order/37677.sol#246) is not in mixedCase
Parameter RandomLedgerService.requestNumber(address,uint256,uint8)._waitTime (dataset/contracts/transaction_order/37677.sol#246) is not in mixedCase
Parameter RandomLedgerService.revealNumber(address)._requestor (dataset/contracts/transaction_order/37677.sol#282) is not in mixedCase
Parameter RandomLedgerService.canReveal(address)._requestor (dataset/contracts/transaction_order/37677.sol#309) is not in mixedCase
Parameter RandomLedgerService.getNumber(address)._requestor (dataset/contracts/transaction_order/37677.sol#357) is not in mixedCase
Parameter RandomLedgerService.isRequestPending(address)._requestor (dataset/contracts/transaction_order/37677.sol#365) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
RandomLedgerService.RandomLedgerService() (dataset/contracts/transaction_order/37677.sol#175-180) uses literals with too many digits:
	- cost = 20000000000000000 (dataset/contracts/transaction_order/37677.sol#177)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#too-many-digits
INFO:Slither:./dataset/contracts/transaction_order/37677.sol analyzed (6 contracts with 100 detectors), 30 result(s) found

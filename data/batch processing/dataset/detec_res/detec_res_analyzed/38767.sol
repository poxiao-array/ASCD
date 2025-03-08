'solc --version' running
'solc ./dataset/contracts/transaction_order/38767.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
BetBuyer.add_to_bounty() (dataset/contracts/transaction_order/38767.sol#82-91) should emit an event for: 
	- bounty += msg.value (dataset/contracts/transaction_order/38767.sol#90) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-arithmetic
INFO:Detectors:
Deprecated standard detected THROW (dataset/contracts/transaction_order/38767.sol#46):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/38767.sol#74):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/38767.sol#77):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/38767.sol#84):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/38767.sol#86):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/38767.sol#88):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/38767.sol#98):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/38767.sol#118):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/38767.sol#130):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/38767.sol#132):
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
	- ^0.4.11 (dataset/contracts/transaction_order/38767.sol#1)
solc-0.4.11 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Variable DaoCasinoToken.CAP (dataset/contracts/transaction_order/38767.sol#15) is not in mixedCase
Function BetBuyer.activate_kill_switch() (dataset/contracts/transaction_order/38767.sol#44-49) is not in mixedCase
Function BetBuyer.add_to_bounty() (dataset/contracts/transaction_order/38767.sol#82-91) is not in mixedCase
Function BetBuyer.claim_bounty() (dataset/contracts/transaction_order/38767.sol#94-109) is not in mixedCase
Function BetBuyer.default_helper() (dataset/contracts/transaction_order/38767.sol#112-136) is not in mixedCase
Variable BetBuyer.checked_in (dataset/contracts/transaction_order/38767.sol#25) is not in mixedCase
Variable BetBuyer.bought_tokens (dataset/contracts/transaction_order/38767.sol#29) is not in mixedCase
Variable BetBuyer.time_bought (dataset/contracts/transaction_order/38767.sol#31) is not in mixedCase
Variable BetBuyer.kill_switch (dataset/contracts/transaction_order/38767.sol#33) is not in mixedCase
Variable BetBuyer.bet_per_eth (dataset/contracts/transaction_order/38767.sol#36) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
BetBuyer.bet_per_eth (dataset/contracts/transaction_order/38767.sol#36) should be constant 
BetBuyer.developer (dataset/contracts/transaction_order/38767.sol#41) should be constant 
BetBuyer.token (dataset/contracts/transaction_order/38767.sol#39) should be constant 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#state-variables-that-could-be-declared-constant
INFO:Slither:./dataset/contracts/transaction_order/38767.sol analyzed (2 contracts with 100 detectors), 26 result(s) found

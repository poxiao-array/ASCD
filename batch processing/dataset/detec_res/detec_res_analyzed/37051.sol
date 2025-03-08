'solc --version' running
'solc ./dataset/contracts/transaction_order/37051.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
Reentrancy in OrganizeFunds.withdraw() (dataset/contracts/transaction_order/37051.sol#180-198):
	External calls:
	- ! addr.call.gas(withdrawGas).value(amount)() (dataset/contracts/transaction_order/37051.sol#188)
	State variables written after the call(s):
	- activityAccounts[i].balance = 0 (dataset/contracts/transaction_order/37051.sol#186)
	OrganizeFunds.activityAccounts (dataset/contracts/transaction_order/37051.sol#36) can be used in cross function reentrancies:
	- OrganizeFunds.addAccount(address,uint256) (dataset/contracts/transaction_order/37051.sol#95-106)
	- OrganizeFunds.distribute() (dataset/contracts/transaction_order/37051.sol#150-173)
	- OrganizeFunds.getAccountInfo(address) (dataset/contracts/transaction_order/37051.sol#112-123)
	- OrganizeFunds.getTotalPctx10() (dataset/contracts/transaction_order/37051.sol#129-134)
	- OrganizeFunds.withdraw() (dataset/contracts/transaction_order/37051.sol#180-198)
	- totalFundsWithdrawn += amount (dataset/contracts/transaction_order/37051.sol#187)
	OrganizeFunds.totalFundsWithdrawn (dataset/contracts/transaction_order/37051.sol#40) can be used in cross function reentrancies:
	- OrganizeFunds.reset() (dataset/contracts/transaction_order/37051.sol#73-79)
	- OrganizeFunds.totalFundsWithdrawn (dataset/contracts/transaction_order/37051.sol#40)
	- OrganizeFunds.withdraw() (dataset/contracts/transaction_order/37051.sol#180-198)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#reentrancy-vulnerabilities
INFO:Detectors:
OrganizeFunds.withdraw() (dataset/contracts/transaction_order/37051.sol#180-198) has external calls inside a loop: ! addr.call.gas(withdrawGas).value(amount)() (dataset/contracts/transaction_order/37051.sol#188)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation/#calls-inside-a-loop
INFO:Detectors:
OrganizeFunds.distribute() (dataset/contracts/transaction_order/37051.sol#150-173) has costly operations inside a loop:
	- totalFundsDistributed += acctDist (dataset/contracts/transaction_order/37051.sol#170)
OrganizeFunds.withdraw() (dataset/contracts/transaction_order/37051.sol#180-198) has costly operations inside a loop:
	- totalFundsWithdrawn += amount (dataset/contracts/transaction_order/37051.sol#187)
OrganizeFunds.withdraw() (dataset/contracts/transaction_order/37051.sol#180-198) has costly operations inside a loop:
	- totalFundsWithdrawn -= amount (dataset/contracts/transaction_order/37051.sol#191)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#costly-operations-inside-a-loop
INFO:Detectors:
Version constraint ^0.4.15 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
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
	- ZeroFunctionSelector.
It is used by:
	- ^0.4.15 (dataset/contracts/transaction_order/37051.sol#1)
solc-0.4.15 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Low level call in OrganizeFunds.withdraw() (dataset/contracts/transaction_order/37051.sol#180-198):
	- ! addr.call.gas(withdrawGas).value(amount)() (dataset/contracts/transaction_order/37051.sol#188)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#low-level-calls
INFO:Detectors:
Parameter OrganizeFunds.setWitdrawGas(uint256)._withdrawGas (dataset/contracts/transaction_order/37051.sol#86) is not in mixedCase
Parameter OrganizeFunds.addAccount(address,uint256)._addr (dataset/contracts/transaction_order/37051.sol#95) is not in mixedCase
Parameter OrganizeFunds.addAccount(address,uint256)._pctx10 (dataset/contracts/transaction_order/37051.sol#95) is not in mixedCase
Parameter OrganizeFunds.getAccountInfo(address)._addr (dataset/contracts/transaction_order/37051.sol#112) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
OrganizeFunds.slitherConstructorVariables() (dataset/contracts/transaction_order/37051.sol#18-209) uses literals with too many digits:
	- withdrawGas = 100000 (dataset/contracts/transaction_order/37051.sol#41)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#too-many-digits
INFO:Slither:./dataset/contracts/transaction_order/37051.sol analyzed (1 contracts with 100 detectors), 13 result(s) found

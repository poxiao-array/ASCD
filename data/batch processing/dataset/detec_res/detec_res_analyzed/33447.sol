'solc --version' running
'solc ./dataset/contracts/transaction_order/33447.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
Reentrancy in OrganizeFunds.withdraw() (dataset/contracts/transaction_order/33447.sol#181-199):
	External calls:
	- ! addr.call.gas(withdrawGas).value(amount)() (dataset/contracts/transaction_order/33447.sol#189)
	State variables written after the call(s):
	- activityAccounts[i].balance = 0 (dataset/contracts/transaction_order/33447.sol#187)
	OrganizeFunds.activityAccounts (dataset/contracts/transaction_order/33447.sol#33) can be used in cross function reentrancies:
	- OrganizeFunds.addActivityAccount(address,uint256,string) (dataset/contracts/transaction_order/33447.sol#94-106)
	- OrganizeFunds.distribute() (dataset/contracts/transaction_order/33447.sol#151-174)
	- OrganizeFunds.getActivityAccountInfo(address) (dataset/contracts/transaction_order/33447.sol#112-124)
	- OrganizeFunds.getTotalPctx10() (dataset/contracts/transaction_order/33447.sol#130-135)
	- OrganizeFunds.withdraw() (dataset/contracts/transaction_order/33447.sol#181-199)
	- totalFundsWithdrawn += amount (dataset/contracts/transaction_order/33447.sol#188)
	OrganizeFunds.totalFundsWithdrawn (dataset/contracts/transaction_order/33447.sol#37) can be used in cross function reentrancies:
	- OrganizeFunds.reset() (dataset/contracts/transaction_order/33447.sol#72-78)
	- OrganizeFunds.totalFundsWithdrawn (dataset/contracts/transaction_order/33447.sol#37)
	- OrganizeFunds.withdraw() (dataset/contracts/transaction_order/33447.sol#181-199)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#reentrancy-vulnerabilities
INFO:Detectors:
OrganizeFunds.withdraw() (dataset/contracts/transaction_order/33447.sol#181-199) has external calls inside a loop: ! addr.call.gas(withdrawGas).value(amount)() (dataset/contracts/transaction_order/33447.sol#189)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation/#calls-inside-a-loop
INFO:Detectors:
OrganizeFunds.distribute() (dataset/contracts/transaction_order/33447.sol#151-174) has costly operations inside a loop:
	- totalFundsDistributed += acctDist (dataset/contracts/transaction_order/33447.sol#171)
OrganizeFunds.withdraw() (dataset/contracts/transaction_order/33447.sol#181-199) has costly operations inside a loop:
	- totalFundsWithdrawn += amount (dataset/contracts/transaction_order/33447.sol#188)
OrganizeFunds.withdraw() (dataset/contracts/transaction_order/33447.sol#181-199) has costly operations inside a loop:
	- totalFundsWithdrawn -= amount (dataset/contracts/transaction_order/33447.sol#192)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#costly-operations-inside-a-loop
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
	- ^0.4.18 (dataset/contracts/transaction_order/33447.sol#1)
solc-0.4.18 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Low level call in OrganizeFunds.withdraw() (dataset/contracts/transaction_order/33447.sol#181-199):
	- ! addr.call.gas(withdrawGas).value(amount)() (dataset/contracts/transaction_order/33447.sol#189)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#low-level-calls
INFO:Detectors:
Parameter OrganizeFunds.setName(string)._name (dataset/contracts/transaction_order/33447.sol#63) is not in mixedCase
Parameter OrganizeFunds.setWitdrawGas(uint256)._withdrawGas (dataset/contracts/transaction_order/33447.sol#85) is not in mixedCase
Parameter OrganizeFunds.addActivityAccount(address,uint256,string)._addr (dataset/contracts/transaction_order/33447.sol#94) is not in mixedCase
Parameter OrganizeFunds.addActivityAccount(address,uint256,string)._pctx10 (dataset/contracts/transaction_order/33447.sol#94) is not in mixedCase
Parameter OrganizeFunds.addActivityAccount(address,uint256,string)._name (dataset/contracts/transaction_order/33447.sol#94) is not in mixedCase
Parameter OrganizeFunds.getActivityAccountInfo(address)._addr (dataset/contracts/transaction_order/33447.sol#112) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
OrganizeFunds.slitherConstructorVariables() (dataset/contracts/transaction_order/33447.sol#13-210) uses literals with too many digits:
	- withdrawGas = 100000 (dataset/contracts/transaction_order/33447.sol#38)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#too-many-digits
INFO:Detectors:
setName(string) should be declared external:
	- OrganizeFunds.setName(string) (dataset/contracts/transaction_order/33447.sol#63-65)
addActivityAccount(address,uint256,string) should be declared external:
	- OrganizeFunds.addActivityAccount(address,uint256,string) (dataset/contracts/transaction_order/33447.sol#94-106)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#public-function-that-could-be-declared-external
INFO:Slither:./dataset/contracts/transaction_order/33447.sol analyzed (1 contracts with 100 detectors), 17 result(s) found

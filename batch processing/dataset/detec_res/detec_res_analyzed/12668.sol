'solc --version' running
'solc ./dataset/contracts/transaction_order/12668.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
Compilation warnings/errors on ./dataset/contracts/transaction_order/12668.sol:
./dataset/contracts/transaction_order/12668.sol:119:41: Warning: "sha3" has been deprecated in favour of "keccak256"
            uint indexgladiator2 = uint(sha3(_result)) % queue.length; // this is an efficient way to get the uint out in the [0, maxRange] range
                                        ^-----------^
./dataset/contracts/transaction_order/12668.sol:120:38: Warning: "sha3" has been deprecated in favour of "keccak256"
            uint randomNumber = uint(sha3(_result)) % 1000;
                                     ^-----------^

INFO:Detectors:
Gladiethers (dataset/contracts/transaction_order/12668.sol#3-225) contract sets array length with a user-controlled value:
	- queue.push(gladiator1) (dataset/contracts/transaction_order/12668.sol#114)
Gladiethers (dataset/contracts/transaction_order/12668.sol#3-225) contract sets array length with a user-controlled value:
	- queue.length = queue.length - (1) (dataset/contracts/transaction_order/12668.sol#79)
Gladiethers (dataset/contracts/transaction_order/12668.sol#3-225) contract sets array length with a user-controlled value:
	- queue.push(gladiator) (dataset/contracts/transaction_order/12668.sol#63)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#array-length-assignment
INFO:Detectors:
Gladiethers.setPartner(address).contract_partner (dataset/contracts/transaction_order/12668.sol#34) lacks a zero-check on :
		- partner = contract_partner (dataset/contracts/transaction_order/12668.sol#35)
Gladiethers.setOraclize(address).contract_oraclize (dataset/contracts/transaction_order/12668.sol#38) lacks a zero-check on :
		- oraclizeContract = contract_oraclize (dataset/contracts/transaction_order/12668.sol#40)
Gladiethers.fight(address,string).gladiator1 (dataset/contracts/transaction_order/12668.sol#107) lacks a zero-check on :
		- kingGladiator = gladiator1 (dataset/contracts/transaction_order/12668.sol#116)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-zero-address-validation
INFO:Detectors:
Gladiethers.withdraw(uint256) (dataset/contracts/transaction_order/12668.sol#177-222) uses timestamp for comparisons
	Dangerous comparisons:
	- gladiatorToCooldown[msg.sender] < now && gladiatorToPower[withdrawalAccount] >= withdrawalAmount (dataset/contracts/transaction_order/12668.sol#200)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#block-timestamp
INFO:Detectors:
Gladiethers.setCooldown(address,uint256) (dataset/contracts/transaction_order/12668.sol#95-97) is never used and should be removed
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#dead-code
INFO:Detectors:
Deprecated standard detected indexgladiator2 = uint256(sha3()(_result)) % queue.length (dataset/contracts/transaction_order/12668.sol#119):
	- Usage of "sha3()" should be replaced with "keccak256()"
Deprecated standard detected randomNumber = uint256(sha3()(_result)) % 1000 (dataset/contracts/transaction_order/12668.sol#120):
	- Usage of "sha3()" should be replaced with "keccak256()"
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#deprecated-standards
INFO:Detectors:
Version constraint ^0.4.20 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
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
	- ABIEncoderV2PackedStorage_0.4.x
	- ExpExponentCleanup
	- EventStructWrongData
	- NestedArrayFunctionCallDecoder.
It is used by:
	- ^0.4.20 (dataset/contracts/transaction_order/12668.sol#1)
solc-0.4.20 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Event Gladiethers.fightEvent(address,address,uint256,uint256,uint256) (dataset/contracts/transaction_order/12668.sol#20) is not in CapWords
Function Gladiethers.ChangeAddressTrust(address,bool) (dataset/contracts/transaction_order/12668.sol#25-28) is not in mixedCase
Parameter Gladiethers.ChangeAddressTrust(address,bool).contract_address (dataset/contracts/transaction_order/12668.sol#25) is not in mixedCase
Parameter Gladiethers.ChangeAddressTrust(address,bool).trust_flag (dataset/contracts/transaction_order/12668.sol#25) is not in mixedCase
Parameter Gladiethers.setPartner(address).contract_partner (dataset/contracts/transaction_order/12668.sol#34) is not in mixedCase
Parameter Gladiethers.setOraclize(address).contract_oraclize (dataset/contracts/transaction_order/12668.sol#38) is not in mixedCase
Parameter Gladiethers.removeOrc(address)._gladiator (dataset/contracts/transaction_order/12668.sol#90) is not in mixedCase
Parameter Gladiethers.fight(address,string)._result (dataset/contracts/transaction_order/12668.sol#107) is not in mixedCase
Variable Gladiethers.m_Owner (dataset/contracts/transaction_order/12668.sol#5) is not in mixedCase
Variable Gladiethers.m_OwnerFees (dataset/contracts/transaction_order/12668.sol#12) is not in mixedCase
Modifier Gladiethers.OnlyOwnerAndContracts() (dataset/contracts/transaction_order/12668.sol#21-24) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
fight(address,string) should be declared external:
	- Gladiethers.fight(address,string) (dataset/contracts/transaction_order/12668.sol#107-174)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#public-function-that-could-be-declared-external
INFO:Slither:./dataset/contracts/transaction_order/12668.sol analyzed (2 contracts with 100 detectors), 24 result(s) found

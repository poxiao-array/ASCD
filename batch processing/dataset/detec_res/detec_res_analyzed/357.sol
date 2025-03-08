'solc --version' running
'solc ./dataset/contracts/transaction_order/357.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
Control.Withdraw(uint256,address) (dataset/contracts/transaction_order/357.sol#870-881) sends eth to arbitrary user
	Dangerous calls:
	- target.transfer(reward) (dataset/contracts/transaction_order/357.sol#880)
Control.CreatorWithdraw(uint256) (dataset/contracts/transaction_order/357.sol#890-916) sends eth to arbitrary user
	Dangerous calls:
	- owner.transfer(oMatch.allbet) (dataset/contracts/transaction_order/357.sol#909)
	- owner.transfer(alltax) (dataset/contracts/transaction_order/357.sol#914)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#functions-that-send-ether-to-arbitrary-destinations
INFO:Detectors:
Control.kill() (dataset/contracts/transaction_order/357.sol#744-748) allows anyone to destruct the contract
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#suicidal
INFO:Detectors:
strings.memcpy(uint256,uint256,uint256) (dataset/contracts/transaction_order/357.sol#48-65) is declared view but contains assembly code
strings.toSlice(string) (dataset/contracts/transaction_order/357.sol#72-78) is declared view but contains assembly code
strings.toSliceB32(bytes32) (dataset/contracts/transaction_order/357.sol#118-127) is declared view but contains assembly code
strings.toString(strings.slice) (dataset/contracts/transaction_order/357.sol#143-150) is declared view but contains assembly code
strings.len(strings.slice) (dataset/contracts/transaction_order/357.sol#160-181) is declared view but contains assembly code
strings.compare(strings.slice,strings.slice) (dataset/contracts/transaction_order/357.sol#201-229) is declared view but contains assembly code
strings.nextRune(strings.slice,strings.slice) (dataset/contracts/transaction_order/357.sol#248-282) is declared view but contains assembly code
strings.ord(strings.slice) (dataset/contracts/transaction_order/357.sol#299-341) is declared view but contains assembly code
strings.keccak(strings.slice) (dataset/contracts/transaction_order/357.sol#348-352) is declared view but contains assembly code
strings.startsWith(strings.slice,strings.slice) (dataset/contracts/transaction_order/357.sol#360-377) is declared view but contains assembly code
strings.beyond(strings.slice,strings.slice) (dataset/contracts/transaction_order/357.sol#386-407) is declared view but contains assembly code
strings.endsWith(strings.slice,strings.slice) (dataset/contracts/transaction_order/357.sol#415-434) is declared view but contains assembly code
strings.until(strings.slice,strings.slice) (dataset/contracts/transaction_order/357.sol#443-463) is declared view but contains assembly code
strings.findPtr(uint256,uint256,uint256,uint256) (dataset/contracts/transaction_order/357.sol#467-504) is declared view but contains assembly code
strings.rfindPtr(uint256,uint256,uint256,uint256) (dataset/contracts/transaction_order/357.sol#508-544) is declared view but contains assembly code
strings.concat(strings.slice,strings.slice) (dataset/contracts/transaction_order/357.sol#679-686) is declared view but contains assembly code
strings.join(strings.slice,strings.slice[]) (dataset/contracts/transaction_order/357.sol#696-718) is declared view but contains assembly code
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#constant-functions-using-assembly-code
INFO:Detectors:
Control.CalReward(Control.MatchBet,Control.PlayerBet) (dataset/contracts/transaction_order/357.sol#849-868) performs a multiplication on the result of a division:
	- myWinBet + (oMatch.allbet - allWinBet) * myWinBet / allWinBet * REWARD_GET / REWARD_BASE (dataset/contracts/transaction_order/357.sol#867)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#divide-before-multiply
INFO:Detectors:
strings.len(bytes32).ret (dataset/contracts/transaction_order/357.sol#86) is a local variable never initialized
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#uninitialized-local-variables
INFO:Detectors:
strings.memcpy(uint256,uint256,uint256).len (dataset/contracts/transaction_order/357.sol#48) shadows:
	- strings.len(bytes32) (dataset/contracts/transaction_order/357.sol#85-109) (function)
	- strings.len(strings.slice) (dataset/contracts/transaction_order/357.sol#160-181) (function)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#local-variable-shadowing
INFO:Detectors:
Control.constructor(address).target (dataset/contracts/transaction_order/357.sol#736) lacks a zero-check on :
		- owner = target (dataset/contracts/transaction_order/357.sol#739)
Control.Withdraw(uint256,address).target (dataset/contracts/transaction_order/357.sol#870) lacks a zero-check on :
		- target.transfer(reward) (dataset/contracts/transaction_order/357.sol#880)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-zero-address-validation
INFO:Detectors:
Control.Withdraw(uint256,address) (dataset/contracts/transaction_order/357.sol#870-881) has external calls inside a loop: target.transfer(reward) (dataset/contracts/transaction_order/357.sol#880)
Control.CreatorWithdraw(uint256) (dataset/contracts/transaction_order/357.sol#890-916) has external calls inside a loop: owner.transfer(oMatch.allbet) (dataset/contracts/transaction_order/357.sol#909)
Control.CreatorWithdraw(uint256) (dataset/contracts/transaction_order/357.sol#890-916) has external calls inside a loop: owner.transfer(alltax) (dataset/contracts/transaction_order/357.sol#914)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation/#calls-inside-a-loop
INFO:Detectors:
Control.kill() (dataset/contracts/transaction_order/357.sol#744-748) uses timestamp for comparisons
	Dangerous comparisons:
	- require(bool)(now >= destroy_time) (dataset/contracts/transaction_order/357.sol#746)
Control.Bet(uint256,string) (dataset/contracts/transaction_order/357.sol#816-847) uses timestamp for comparisons
	Dangerous comparisons:
	- require(bool)(oMatch.SHA_WIN == 0 && oMatch.betDeadline >= now) (dataset/contracts/transaction_order/357.sol#825)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#block-timestamp
INFO:Detectors:
strings.memcpy(uint256,uint256,uint256) (dataset/contracts/transaction_order/357.sol#48-65) uses assembly
	- INLINE ASM (dataset/contracts/transaction_order/357.sol#51-54)
	- INLINE ASM (dataset/contracts/transaction_order/357.sol#60-65)
strings.toSlice(string) (dataset/contracts/transaction_order/357.sol#72-78) uses assembly
	- INLINE ASM (dataset/contracts/transaction_order/357.sol#74-77)
strings.toSliceB32(bytes32) (dataset/contracts/transaction_order/357.sol#118-127) uses assembly
	- INLINE ASM (dataset/contracts/transaction_order/357.sol#120-126)
strings.toString(strings.slice) (dataset/contracts/transaction_order/357.sol#143-150) uses assembly
	- INLINE ASM (dataset/contracts/transaction_order/357.sol#146-148)
strings.len(strings.slice) (dataset/contracts/transaction_order/357.sol#160-181) uses assembly
	- INLINE ASM (dataset/contracts/transaction_order/357.sol#166-167)
strings.compare(strings.slice,strings.slice) (dataset/contracts/transaction_order/357.sol#201-229) uses assembly
	- INLINE ASM (dataset/contracts/transaction_order/357.sol#211-215)
strings.nextRune(strings.slice,strings.slice) (dataset/contracts/transaction_order/357.sol#248-282) uses assembly
	- INLINE ASM (dataset/contracts/transaction_order/357.sol#259-260)
strings.ord(strings.slice) (dataset/contracts/transaction_order/357.sol#299-341) uses assembly
	- INLINE ASM (dataset/contracts/transaction_order/357.sol#309-310)
strings.keccak(strings.slice) (dataset/contracts/transaction_order/357.sol#348-352) uses assembly
	- INLINE ASM (dataset/contracts/transaction_order/357.sol#349-352)
strings.startsWith(strings.slice,strings.slice) (dataset/contracts/transaction_order/357.sol#360-377) uses assembly
	- INLINE ASM (dataset/contracts/transaction_order/357.sol#370-376)
strings.beyond(strings.slice,strings.slice) (dataset/contracts/transaction_order/357.sol#386-407) uses assembly
	- INLINE ASM (dataset/contracts/transaction_order/357.sol#393-399)
strings.endsWith(strings.slice,strings.slice) (dataset/contracts/transaction_order/357.sol#415-434) uses assembly
	- INLINE ASM (dataset/contracts/transaction_order/357.sol#427-433)
strings.until(strings.slice,strings.slice) (dataset/contracts/transaction_order/357.sol#443-463) uses assembly
	- INLINE ASM (dataset/contracts/transaction_order/357.sol#451-456)
strings.findPtr(uint256,uint256,uint256,uint256) (dataset/contracts/transaction_order/357.sol#467-504) uses assembly
	- INLINE ASM (dataset/contracts/transaction_order/357.sol#476-478)
	- INLINE ASM (dataset/contracts/transaction_order/357.sol#480-482)
	- INLINE ASM (dataset/contracts/transaction_order/357.sol#486-487)
	- INLINE ASM (dataset/contracts/transaction_order/357.sol#492-494)
	- INLINE ASM (dataset/contracts/transaction_order/357.sol#496-497)
strings.rfindPtr(uint256,uint256,uint256,uint256) (dataset/contracts/transaction_order/357.sol#508-544) uses assembly
	- INLINE ASM (dataset/contracts/transaction_order/357.sol#516-518)
	- INLINE ASM (dataset/contracts/transaction_order/357.sol#520-522)
	- INLINE ASM (dataset/contracts/transaction_order/357.sol#526-527)
	- INLINE ASM (dataset/contracts/transaction_order/357.sol#532-533)
	- INLINE ASM (dataset/contracts/transaction_order/357.sol#536-537)
strings.concat(strings.slice,strings.slice) (dataset/contracts/transaction_order/357.sol#679-686) uses assembly
	- INLINE ASM (dataset/contracts/transaction_order/357.sol#682-683)
strings.join(strings.slice,strings.slice[]) (dataset/contracts/transaction_order/357.sol#696-718) uses assembly
	- INLINE ASM (dataset/contracts/transaction_order/357.sol#706-708)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#assembly-usage
INFO:Detectors:
Version constraint ^0.4.24 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
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
	- EventStructWrongData.
It is used by:
	- ^0.4.24 (dataset/contracts/transaction_order/357.sol#1)
solc-0.4.24 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Contract strings (dataset/contracts/transaction_order/357.sol#42-719) is not in CapWords
Struct strings.slice (dataset/contracts/transaction_order/357.sol#43-46) is not in CapWords
Function Control.AddMatch(string,string,uint256) (dataset/contracts/transaction_order/357.sol#782-796) is not in mixedCase
Function Control.MatchResetDeadline(uint256,uint256) (dataset/contracts/transaction_order/357.sol#799-804) is not in mixedCase
Function Control.MatchEnd(uint256,string) (dataset/contracts/transaction_order/357.sol#806-814) is not in mixedCase
Function Control.Bet(uint256,string) (dataset/contracts/transaction_order/357.sol#816-847) is not in mixedCase
Function Control.CalReward(Control.MatchBet,Control.PlayerBet) (dataset/contracts/transaction_order/357.sol#849-868) is not in mixedCase
Function Control.Withdraw(uint256,address) (dataset/contracts/transaction_order/357.sol#870-881) is not in mixedCase
Function Control.WithdrawAll(address) (dataset/contracts/transaction_order/357.sol#883-888) is not in mixedCase
Function Control.CreatorWithdraw(uint256) (dataset/contracts/transaction_order/357.sol#890-916) is not in mixedCase
Function Control.CreatorWithdrawAll() (dataset/contracts/transaction_order/357.sol#918-923) is not in mixedCase
Function Control.GetMatchLength() (dataset/contracts/transaction_order/357.sol#925-929) is not in mixedCase
Function Control.GetInfo(Control.MatchBet,uint256,address) (dataset/contracts/transaction_order/357.sol#949-968) is not in mixedCase
Function Control.GetDetail(address) (dataset/contracts/transaction_order/357.sol#970-978) is not in mixedCase
Variable Control.destroy_time (dataset/contracts/transaction_order/357.sol#734) is not in mixedCase
Variable Control.MatchList (dataset/contracts/transaction_order/357.sol#770) is not in mixedCase
Modifier Control.MatchExist(uint256) (dataset/contracts/transaction_order/357.sol#777-780) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
strings.len(bytes32) (dataset/contracts/transaction_order/357.sol#85-109) uses literals with too many digits:
	- self = bytes32(uint256(self) / 0x100000000000000000000000000000000) (dataset/contracts/transaction_order/357.sol#91)
strings.len(bytes32) (dataset/contracts/transaction_order/357.sol#85-109) uses literals with too many digits:
	- self = bytes32(uint256(self) / 0x10000000000000000) (dataset/contracts/transaction_order/357.sol#95)
strings.len(bytes32) (dataset/contracts/transaction_order/357.sol#85-109) uses literals with too many digits:
	- self = bytes32(uint256(self) / 0x100000000) (dataset/contracts/transaction_order/357.sol#99)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#too-many-digits
INFO:Detectors:
Loop condition i < MatchList.length (dataset/contracts/transaction_order/357.sol#920) should use cached array length instead of referencing `length` member of the storage array.
 Loop condition i < MatchList.length (dataset/contracts/transaction_order/357.sol#974) should use cached array length instead of referencing `length` member of the storage array.
 Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#cache-array-length
INFO:Slither:./dataset/contracts/transaction_order/357.sol analyzed (2 contracts with 100 detectors), 71 result(s) found

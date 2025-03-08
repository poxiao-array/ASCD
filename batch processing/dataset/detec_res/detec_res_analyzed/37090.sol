'solc --version' running
'solc ./dataset/contracts/transaction_order/37090.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
Ethraffle_v3b.endRaffle() (dataset/contracts/transaction_order/37090.sol#130-146) has external calls inside a loop: contestants[i].addr.transfer(pricePerTicket) (dataset/contracts/transaction_order/37090.sol#137)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation/#calls-inside-a-loop
INFO:Detectors:
Ethraffle_v3b.buyTickets() (dataset/contracts/transaction_order/37090.sol#56-87) has costly operations inside a loop:
	- currTicket = nextTicket ++ (dataset/contracts/transaction_order/37090.sol#70)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#costly-operations-inside-a-loop
INFO:Detectors:
Version constraint ^0.4.16 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
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
	- NestedArrayFunctionCallDecoder
	- ZeroFunctionSelector.
It is used by:
	- ^0.4.16 (dataset/contracts/transaction_order/37090.sol#1)
solc-0.4.16 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Contract Ethraffle_v3b (dataset/contracts/transaction_order/37090.sol#3-160) is not in CapWords
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
Reentrancy in Ethraffle_v3b.endRaffle() (dataset/contracts/transaction_order/37090.sol#130-146):
	External calls:
	- contestants[i].addr.transfer(pricePerTicket) (dataset/contracts/transaction_order/37090.sol#137)
	State variables written after the call(s):
	- gaps.length = 0 (dataset/contracts/transaction_order/37090.sol#144)
	- nextTicket = 0 (dataset/contracts/transaction_order/37090.sol#143)
	- raffleId ++ (dataset/contracts/transaction_order/37090.sol#142)
	Event emitted after the call(s):
	- RaffleResult(raffleId,block.number,totalTickets,address(0),address(0),address(0),0,0) (dataset/contracts/transaction_order/37090.sol#141)
	- TicketRefund(raffleId,contestants[i].addr,i) (dataset/contracts/transaction_order/37090.sol#136)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#reentrancy-vulnerabilities-4
INFO:Slither:./dataset/contracts/transaction_order/37090.sol analyzed (1 contracts with 100 detectors), 6 result(s) found

'solc --version' running
'solc ./dataset/contracts/transaction_order/37423.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
Ethraffle.endRaffle() (dataset/contracts/transaction_order/37423.sol#124-140) has external calls inside a loop: contestants[i].addr.transfer(pricePerTicket) (dataset/contracts/transaction_order/37423.sol#131)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation/#calls-inside-a-loop
INFO:Detectors:
Ethraffle.buyTickets() (dataset/contracts/transaction_order/37423.sol#55-86) has costly operations inside a loop:
	- currTicket = nextTicket ++ (dataset/contracts/transaction_order/37423.sol#69)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#costly-operations-inside-a-loop
INFO:Detectors:
Deprecated standard detected contestants[currTicket] = Contestant(msg.sender,raffleId,msg.gas) (dataset/contracts/transaction_order/37423.sol#72):
	- Usage of "msg.gas" should be replaced with "gasleft()"
Deprecated standard detected randCt1 = contestants[uint256(msg.gas) % totalTickets] (dataset/contracts/transaction_order/37423.sol#90):
	- Usage of "msg.gas" should be replaced with "gasleft()"
Deprecated standard detected sha = sha3()(randCt1.addr,randCt2.addr,randCt3.addr,randCt3.remainingGas) (dataset/contracts/transaction_order/37423.sol#93):
	- Usage of "sha3()" should be replaced with "keccak256()"
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#deprecated-standards
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
	- ^0.4.15 (dataset/contracts/transaction_order/37423.sol#1)
solc-0.4.15 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Reentrancy in Ethraffle.endRaffle() (dataset/contracts/transaction_order/37423.sol#124-140):
	External calls:
	- contestants[i].addr.transfer(pricePerTicket) (dataset/contracts/transaction_order/37423.sol#131)
	State variables written after the call(s):
	- gaps.length = 0 (dataset/contracts/transaction_order/37423.sol#138)
	- nextTicket = 0 (dataset/contracts/transaction_order/37423.sol#137)
	- raffleId ++ (dataset/contracts/transaction_order/37423.sol#136)
	Event emitted after the call(s):
	- RaffleResult(raffleId,totalTickets + 1,address(0)) (dataset/contracts/transaction_order/37423.sol#135)
	- TicketRefund(raffleId,contestants[i].addr,i) (dataset/contracts/transaction_order/37423.sol#130)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#reentrancy-vulnerabilities-4
INFO:Slither:./dataset/contracts/transaction_order/37423.sol analyzed (1 contracts with 100 detectors), 8 result(s) found

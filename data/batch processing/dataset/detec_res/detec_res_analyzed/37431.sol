'solc --version' running
'solc ./dataset/contracts/transaction_order/37431.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
Ethraffle.endRaffle() (dataset/contracts/transaction_order/37431.sol#135-151) has external calls inside a loop: contestants[i].addr.transfer(pricePerTicket) (dataset/contracts/transaction_order/37431.sol#142)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation/#calls-inside-a-loop
INFO:Detectors:
Ethraffle.buyTickets() (dataset/contracts/transaction_order/37431.sol#54-85) has costly operations inside a loop:
	- currTicket = nextTicket ++ (dataset/contracts/transaction_order/37431.sol#68)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#costly-operations-inside-a-loop
INFO:Detectors:
Deprecated standard detected remainingGas = msg.gas (dataset/contracts/transaction_order/37431.sol#89):
	- Usage of "msg.gas" should be replaced with "gasleft()"
Deprecated standard detected sha = sha3()(block.coinbase,msg.sender,remainingGas,gasPrice) (dataset/contracts/transaction_order/37431.sol#92-97):
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
	- ^0.4.15 (dataset/contracts/transaction_order/37431.sol#1)
solc-0.4.15 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Reentrancy in Ethraffle.endRaffle() (dataset/contracts/transaction_order/37431.sol#135-151):
	External calls:
	- contestants[i].addr.transfer(pricePerTicket) (dataset/contracts/transaction_order/37431.sol#142)
	State variables written after the call(s):
	- gaps.length = 0 (dataset/contracts/transaction_order/37431.sol#149)
	- nextTicket = 1 (dataset/contracts/transaction_order/37431.sol#148)
	- raffleId ++ (dataset/contracts/transaction_order/37431.sol#147)
	Event emitted after the call(s):
	- RaffleResult(raffleId,0,address(0),0,0,0) (dataset/contracts/transaction_order/37431.sol#146)
	- TicketRefund(raffleId,contestants[i].addr,i) (dataset/contracts/transaction_order/37431.sol#141)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#reentrancy-vulnerabilities-4
INFO:Slither:./dataset/contracts/transaction_order/37431.sol analyzed (1 contracts with 100 detectors), 7 result(s) found

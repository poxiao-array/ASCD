'solc --version' running
'solc ./dataset/contracts/transaction_order/38160.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
Postman (dataset/contracts/transaction_order/38160.sol#3-36) contract sets array length with a user-controlled value:
	- que.push(data({delivered:false,home:x,reward:((msg.value - (msg.value * fee) / 100) * percent) / 1000,value:msg.value - (msg.value * fee) / 100 - (((msg.value - (msg.value * fee) / 100) * percent) / 1000)})) (dataset/contracts/transaction_order/38160.sol#22)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#array-length-assignment
INFO:Detectors:
Reentrancy in Postman.deliver(uint256,uint256) (dataset/contracts/transaction_order/38160.sol#25-35):
	External calls:
	- w.boom.value(que[index].value)(que[index].home) (dataset/contracts/transaction_order/38160.sol#29)
	- this.post.value(que[index].reward)(msg.sender,fee2) (dataset/contracts/transaction_order/38160.sol#30)
	External calls sending eth:
	- w.boom.value(que[index].value)(que[index].home) (dataset/contracts/transaction_order/38160.sol#29)
	- this.post.value(que[index].reward)(msg.sender,fee2) (dataset/contracts/transaction_order/38160.sol#30)
	- msg.sender.transfer(que[index].reward) (dataset/contracts/transaction_order/38160.sol#31)
	State variables written after the call(s):
	- delete que[index] (dataset/contracts/transaction_order/38160.sol#34)
	Postman.que (dataset/contracts/transaction_order/38160.sol#9) can be used in cross function reentrancies:
	- Postman.deliver(uint256,uint256) (dataset/contracts/transaction_order/38160.sol#25-35)
	- Postman.get_mail(uint256) (dataset/contracts/transaction_order/38160.sol#16)
	- Postman.post(address,uint256) (dataset/contracts/transaction_order/38160.sol#18-24)
	- delete undelivered[index] (dataset/contracts/transaction_order/38160.sol#33)
	Postman.undelivered (dataset/contracts/transaction_order/38160.sol#10) can be used in cross function reentrancies:
	- Postman.deliver(uint256,uint256) (dataset/contracts/transaction_order/38160.sol#25-35)
	- Postman.mails_to_deliver() (dataset/contracts/transaction_order/38160.sol#15)
	- Postman.post(address,uint256) (dataset/contracts/transaction_order/38160.sol#18-24)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#reentrancy-vulnerabilities
INFO:Detectors:
W.boom(address) (dataset/contracts/transaction_order/38160.sol#38) allows anyone to destruct the contract
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#suicidal
INFO:Detectors:
Postman.update_fee(uint256,uint256) (dataset/contracts/transaction_order/38160.sol#17) should emit an event for: 
	- fee = new_fee (dataset/contracts/transaction_order/38160.sol#17) 
	- fee2 = new_fee2 (dataset/contracts/transaction_order/38160.sol#17) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-arithmetic
INFO:Detectors:
Reentrancy in Postman.deliver(uint256,uint256) (dataset/contracts/transaction_order/38160.sol#25-35):
	External calls:
	- w.boom.value(que[index].value)(que[index].home) (dataset/contracts/transaction_order/38160.sol#29)
	- this.post.value(que[index].reward)(msg.sender,fee2) (dataset/contracts/transaction_order/38160.sol#30)
	External calls sending eth:
	- w.boom.value(que[index].value)(que[index].home) (dataset/contracts/transaction_order/38160.sol#29)
	- this.post.value(que[index].reward)(msg.sender,fee2) (dataset/contracts/transaction_order/38160.sol#30)
	- msg.sender.transfer(que[index].reward) (dataset/contracts/transaction_order/38160.sol#31)
	Event emitted after the call(s):
	- Report(Message Delivered:,index) (dataset/contracts/transaction_order/38160.sol#32)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#reentrancy-vulnerabilities-3
INFO:Detectors:
Deprecated standard detected (que[index].reward * 2) > msg.gas && direct == 1 (dataset/contracts/transaction_order/38160.sol#30):
	- Usage of "msg.gas" should be replaced with "gasleft()"
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#deprecated-standards
INFO:Detectors:
Version constraint ^0.4.13 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
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
	- ECRecoverMalformedInput.
It is used by:
	- ^0.4.13 (dataset/contracts/transaction_order/38160.sol#1)
solc-0.4.13 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Struct Postman.data (dataset/contracts/transaction_order/38160.sol#4) is not in CapWords
Function Postman.mails_to_deliver() (dataset/contracts/transaction_order/38160.sol#15) is not in mixedCase
Function Postman.get_mail(uint256) (dataset/contracts/transaction_order/38160.sol#16) is not in mixedCase
Function Postman.update_fee(uint256,uint256) (dataset/contracts/transaction_order/38160.sol#17) is not in mixedCase
Parameter Postman.update_fee(uint256,uint256).new_fee (dataset/contracts/transaction_order/38160.sol#17) is not in mixedCase
Parameter Postman.update_fee(uint256,uint256).new_fee2 (dataset/contracts/transaction_order/38160.sol#17) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
Reentrancy in Postman.deliver(uint256,uint256) (dataset/contracts/transaction_order/38160.sol#25-35):
	External calls:
	- msg.sender.transfer(que[index].reward) (dataset/contracts/transaction_order/38160.sol#31)
	External calls sending eth:
	- w.boom.value(que[index].value)(que[index].home) (dataset/contracts/transaction_order/38160.sol#29)
	- this.post.value(que[index].reward)(msg.sender,fee2) (dataset/contracts/transaction_order/38160.sol#30)
	- msg.sender.transfer(que[index].reward) (dataset/contracts/transaction_order/38160.sol#31)
	State variables written after the call(s):
	- delete que[index] (dataset/contracts/transaction_order/38160.sol#34)
	- delete undelivered[index] (dataset/contracts/transaction_order/38160.sol#33)
	Event emitted after the call(s):
	- Report(Message Delivered:,index) (dataset/contracts/transaction_order/38160.sol#32)
Reentrancy in Postman.draw() (dataset/contracts/transaction_order/38160.sol#14):
	External calls:
	- owner.transfer(balance) (dataset/contracts/transaction_order/38160.sol#14)
	State variables written after the call(s):
	- balance -= balance (dataset/contracts/transaction_order/38160.sol#14)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#reentrancy-vulnerabilities-4
INFO:Slither:./dataset/contracts/transaction_order/38160.sol analyzed (2 contracts with 100 detectors), 16 result(s) found

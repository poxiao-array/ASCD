'solc --version' running
'solc ./dataset/contracts/transaction_order/21277.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
Managed.withdrawBalance() (dataset/contracts/transaction_order/21277.sol#29-31) sends eth to arbitrary user
	Dangerous calls:
	- manager.transfer(address(this).balance) (dataset/contracts/transaction_order/21277.sol#30)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#functions-that-send-ether-to-arbitrary-destinations
INFO:Detectors:
EthernameRaw._stringToBytes32(string) (dataset/contracts/transaction_order/21277.sol#266-275) is declared view but contains assembly code
EthernameRaw._bytes32ToString(bytes32) (dataset/contracts/transaction_order/21277.sol#277-289) is declared view but contains assembly code
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#constant-functions-using-assembly-code
INFO:Detectors:
Managed.transferPower(address) (dataset/contracts/transaction_order/21277.sol#33-35) should emit an event for: 
	- manager = _newManager (dataset/contracts/transaction_order/21277.sol#34) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-access-control
INFO:Detectors:
Managed.transferPower(address)._newManager (dataset/contracts/transaction_order/21277.sol#33) lacks a zero-check on :
		- manager = _newManager (dataset/contracts/transaction_order/21277.sol#34)
Managed.callFor(address,uint256,uint256,bytes)._to (dataset/contracts/transaction_order/21277.sol#37) lacks a zero-check on :
		- _to.call.value(_value).gas(_gas)(_code) (dataset/contracts/transaction_order/21277.sol#43)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-zero-address-validation
INFO:Detectors:
Managed.callFor(address,uint256,uint256,bytes) (dataset/contracts/transaction_order/21277.sol#37-44) tries to limit the gas of an external call that controls implicit decoding
	_to.call.value(_value).gas(_gas)(_code) (dataset/contracts/transaction_order/21277.sol#43)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#return-bomb
INFO:Detectors:
EthernameRaw._stringToBytes32(string) (dataset/contracts/transaction_order/21277.sol#266-275) uses assembly
	- INLINE ASM (dataset/contracts/transaction_order/21277.sol#272-275)
EthernameRaw._bytes32ToString(bytes32) (dataset/contracts/transaction_order/21277.sol#277-289) uses assembly
	- INLINE ASM (dataset/contracts/transaction_order/21277.sol#282-289)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#assembly-usage
INFO:Detectors:
Version constraint ^0.4.21 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
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
	- ^0.4.21 (dataset/contracts/transaction_order/21277.sol#1)
solc-0.4.21 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Low level call in Managed.callFor(address,uint256,uint256,bytes) (dataset/contracts/transaction_order/21277.sol#37-44):
	- _to.call.value(_value).gas(_gas)(_code) (dataset/contracts/transaction_order/21277.sol#43)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#low-level-calls
INFO:Detectors:
Parameter Managed.setCommission(uint256)._commission (dataset/contracts/transaction_order/21277.sol#22) is not in mixedCase
Parameter Managed.transferPower(address)._newManager (dataset/contracts/transaction_order/21277.sol#33) is not in mixedCase
Parameter Managed.callFor(address,uint256,uint256,bytes)._to (dataset/contracts/transaction_order/21277.sol#37) is not in mixedCase
Parameter Managed.callFor(address,uint256,uint256,bytes)._value (dataset/contracts/transaction_order/21277.sol#37) is not in mixedCase
Parameter Managed.callFor(address,uint256,uint256,bytes)._gas (dataset/contracts/transaction_order/21277.sol#37) is not in mixedCase
Parameter Managed.callFor(address,uint256,uint256,bytes)._code (dataset/contracts/transaction_order/21277.sol#37) is not in mixedCase
Parameter EthernameRaw.rawRegister(bytes32)._name (dataset/contracts/transaction_order/21277.sol#105) is not in mixedCase
Parameter EthernameRaw.rawTransfer(address,bytes32)._to (dataset/contracts/transaction_order/21277.sol#109) is not in mixedCase
Parameter EthernameRaw.rawTransfer(address,bytes32)._name (dataset/contracts/transaction_order/21277.sol#109) is not in mixedCase
Parameter EthernameRaw.rawApprove(address,bytes32)._to (dataset/contracts/transaction_order/21277.sol#116) is not in mixedCase
Parameter EthernameRaw.rawApprove(address,bytes32)._name (dataset/contracts/transaction_order/21277.sol#116) is not in mixedCase
Parameter EthernameRaw.rawTransferFrom(address,address,bytes32)._from (dataset/contracts/transaction_order/21277.sol#123) is not in mixedCase
Parameter EthernameRaw.rawTransferFrom(address,address,bytes32)._to (dataset/contracts/transaction_order/21277.sol#123) is not in mixedCase
Parameter EthernameRaw.rawTransferFrom(address,address,bytes32)._name (dataset/contracts/transaction_order/21277.sol#123) is not in mixedCase
Parameter EthernameRaw.rawSetPrice(bytes32,uint256)._name (dataset/contracts/transaction_order/21277.sol#131) is not in mixedCase
Parameter EthernameRaw.rawSetPrice(bytes32,uint256)._price (dataset/contracts/transaction_order/21277.sol#131) is not in mixedCase
Parameter EthernameRaw.rawBuy(bytes32)._name (dataset/contracts/transaction_order/21277.sol#141) is not in mixedCase
Parameter EthernameRaw.rawUseName(bytes32)._name (dataset/contracts/transaction_order/21277.sol#154) is not in mixedCase
Parameter EthernameRaw.rawSetAttribute(bytes32,bytes32,bytes)._name (dataset/contracts/transaction_order/21277.sol#158) is not in mixedCase
Parameter EthernameRaw.rawSetAttribute(bytes32,bytes32,bytes)._key (dataset/contracts/transaction_order/21277.sol#158) is not in mixedCase
Parameter EthernameRaw.rawSetAttribute(bytes32,bytes32,bytes)._value (dataset/contracts/transaction_order/21277.sol#158) is not in mixedCase
Parameter EthernameRaw.rawWipeAttributes(bytes32,bytes32[])._name (dataset/contracts/transaction_order/21277.sol#167) is not in mixedCase
Parameter EthernameRaw.rawWipeAttributes(bytes32,bytes32[])._keys (dataset/contracts/transaction_order/21277.sol#167) is not in mixedCase
Parameter EthernameRaw.rawSendEther(bytes32)._name (dataset/contracts/transaction_order/21277.sol#179) is not in mixedCase
Parameter EthernameRaw.rawNameOf(address)._address (dataset/contracts/transaction_order/21277.sol#197) is not in mixedCase
Parameter EthernameRaw.rawOwnerOf(bytes32)._name (dataset/contracts/transaction_order/21277.sol#201) is not in mixedCase
Parameter EthernameRaw.rawDetailsOf(bytes32,bytes32)._name (dataset/contracts/transaction_order/21277.sol#205) is not in mixedCase
Parameter EthernameRaw.rawDetailsOf(bytes32,bytes32)._key (dataset/contracts/transaction_order/21277.sol#205) is not in mixedCase
Parameter Ethername.register(string)._name (dataset/contracts/transaction_order/21277.sol#328) is not in mixedCase
Parameter Ethername.transfer(address,string)._to (dataset/contracts/transaction_order/21277.sol#332) is not in mixedCase
Parameter Ethername.transfer(address,string)._name (dataset/contracts/transaction_order/21277.sol#332) is not in mixedCase
Parameter Ethername.approve(address,string)._to (dataset/contracts/transaction_order/21277.sol#336) is not in mixedCase
Parameter Ethername.approve(address,string)._name (dataset/contracts/transaction_order/21277.sol#336) is not in mixedCase
Parameter Ethername.transferFrom(address,address,string)._from (dataset/contracts/transaction_order/21277.sol#340) is not in mixedCase
Parameter Ethername.transferFrom(address,address,string)._to (dataset/contracts/transaction_order/21277.sol#340) is not in mixedCase
Parameter Ethername.transferFrom(address,address,string)._name (dataset/contracts/transaction_order/21277.sol#340) is not in mixedCase
Parameter Ethername.setPrice(string,uint256)._name (dataset/contracts/transaction_order/21277.sol#344) is not in mixedCase
Parameter Ethername.setPrice(string,uint256)._price (dataset/contracts/transaction_order/21277.sol#344) is not in mixedCase
Parameter Ethername.buy(string)._name (dataset/contracts/transaction_order/21277.sol#348) is not in mixedCase
Parameter Ethername.useName(string)._name (dataset/contracts/transaction_order/21277.sol#352) is not in mixedCase
Parameter Ethername.setAttribute(string,string,bytes)._name (dataset/contracts/transaction_order/21277.sol#356) is not in mixedCase
Parameter Ethername.setAttribute(string,string,bytes)._key (dataset/contracts/transaction_order/21277.sol#356) is not in mixedCase
Parameter Ethername.setAttribute(string,string,bytes)._value (dataset/contracts/transaction_order/21277.sol#356) is not in mixedCase
Parameter Ethername.wipeAttributes(string,bytes32[])._name (dataset/contracts/transaction_order/21277.sol#360) is not in mixedCase
Parameter Ethername.wipeAttributes(string,bytes32[])._keys (dataset/contracts/transaction_order/21277.sol#360) is not in mixedCase
Parameter Ethername.sendEther(string)._name (dataset/contracts/transaction_order/21277.sol#364) is not in mixedCase
Parameter Ethername.nameOf(address)._address (dataset/contracts/transaction_order/21277.sol#370) is not in mixedCase
Parameter Ethername.ownerOf(string)._name (dataset/contracts/transaction_order/21277.sol#374) is not in mixedCase
Parameter Ethername.detailsOf(string,string)._name (dataset/contracts/transaction_order/21277.sol#378) is not in mixedCase
Parameter Ethername.detailsOf(string,string)._key (dataset/contracts/transaction_order/21277.sol#378) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
Reentrancy in EthernameRaw.rawBuy(bytes32) (dataset/contracts/transaction_order/21277.sol#141-152):
	External calls:
	- _record.owner.transfer(_record.price) (dataset/contracts/transaction_order/21277.sol#147)
	State variables written after the call(s):
	- _transfer(_record.owner,msg.sender,_name) (dataset/contracts/transaction_order/21277.sol#148)
		- nameToApproved[_name] = _to (dataset/contracts/transaction_order/21277.sol#253)
	- _transfer(_record.owner,msg.sender,_name) (dataset/contracts/transaction_order/21277.sol#148)
		- nameToRecord[_name] = Record(_to,0) (dataset/contracts/transaction_order/21277.sol#243)
	- _transfer(_record.owner,msg.sender,_name) (dataset/contracts/transaction_order/21277.sol#148)
		- ownerToName[_owner] = _name (dataset/contracts/transaction_order/21277.sol#258)
	Event emitted after the call(s):
	- Approval(_owner,_to,_name) (dataset/contracts/transaction_order/21277.sol#254)
		- _transfer(_record.owner,msg.sender,_name) (dataset/contracts/transaction_order/21277.sol#148)
	- Name(_owner,_name) (dataset/contracts/transaction_order/21277.sol#259)
		- _transfer(_record.owner,msg.sender,_name) (dataset/contracts/transaction_order/21277.sol#148)
	- Transfer(_from,_to,_name) (dataset/contracts/transaction_order/21277.sol#249)
		- _transfer(_record.owner,msg.sender,_name) (dataset/contracts/transaction_order/21277.sol#148)
Reentrancy in EthernameRaw.rawBuy(bytes32) (dataset/contracts/transaction_order/21277.sol#141-152):
	External calls:
	- _record.owner.transfer(_record.price) (dataset/contracts/transaction_order/21277.sol#147)
	- msg.sender.transfer(msg.value - _price) (dataset/contracts/transaction_order/21277.sol#149)
	Event emitted after the call(s):
	- Buy(_name,msg.sender,_price) (dataset/contracts/transaction_order/21277.sol#151)
Reentrancy in EthernameRaw.rawSendEther(bytes32) (dataset/contracts/transaction_order/21277.sol#179-193):
	External calls:
	- _result = (_name != bytes32(0)) && (_to != address(0)) && _to.send(msg.value) (dataset/contracts/transaction_order/21277.sol#181-183)
	Event emitted after the call(s):
	- SendEther(msg.sender,_to,rawNameOf(msg.sender),_name,msg.value) (dataset/contracts/transaction_order/21277.sol#185-191)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#reentrancy-vulnerabilities-4
INFO:Slither:./dataset/contracts/transaction_order/21277.sol analyzed (3 contracts with 100 detectors), 65 result(s) found

'solc --version' running
'solc ./dataset/contracts/transaction_order/14967.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
MonarchyGame.sendPrize(uint256) (dataset/contracts/transaction_order/14967.sol#233-280) sends eth to arbitrary user
	Dangerous calls:
	- _paySuccessful = _winner.call.value(_prize)() (dataset/contracts/transaction_order/14967.sol#254)
	- _paySuccessful = _winner.call.value(_prize).gas(_gasLimit)() (dataset/contracts/transaction_order/14967.sol#256)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#functions-that-send-ether-to-arbitrary-destinations
INFO:Detectors:
Reentrancy in MonarchyGame.sendPrize(uint256) (dataset/contracts/transaction_order/14967.sol#233-280):
	External calls:
	- _paySuccessful = _winner.call.value(_prize)() (dataset/contracts/transaction_order/14967.sol#254)
	- _paySuccessful = _winner.call.value(_prize).gas(_gasLimit)() (dataset/contracts/transaction_order/14967.sol#256)
	State variables written after the call(s):
	- vars.isPaid = false (dataset/contracts/transaction_order/14967.sol#270)
	MonarchyGame.vars (dataset/contracts/transaction_order/14967.sol#61) can be used in cross function reentrancies:
	- MonarchyGame.blockEnded() (dataset/contracts/transaction_order/14967.sol#309-311)
	- MonarchyGame.constructor(address,uint256,uint256,int256,uint256,uint256) (dataset/contracts/transaction_order/14967.sol#74-115)
	- MonarchyGame.decree() (dataset/contracts/transaction_order/14967.sol#318-320)
	- MonarchyGame.fees() (dataset/contracts/transaction_order/14967.sol#349-352)
	- MonarchyGame.getBlocksRemaining() (dataset/contracts/transaction_order/14967.sol#345-348)
	- MonarchyGame.isEnded() (dataset/contracts/transaction_order/14967.sol#342-344)
	- MonarchyGame.isPaid() (dataset/contracts/transaction_order/14967.sol#315-317)
	- MonarchyGame.monarch() (dataset/contracts/transaction_order/14967.sol#300-302)
	- MonarchyGame.numOverthrows() (dataset/contracts/transaction_order/14967.sol#306-308)
	- MonarchyGame.overthrow(bytes23) (dataset/contracts/transaction_order/14967.sol#157-217)
	- MonarchyGame.prevBlock() (dataset/contracts/transaction_order/14967.sol#312-314)
	- MonarchyGame.prize() (dataset/contracts/transaction_order/14967.sol#303-305)
	- MonarchyGame.sendPrize(uint256) (dataset/contracts/transaction_order/14967.sol#233-280)
	- MonarchyGame.totalFees() (dataset/contracts/transaction_order/14967.sol#353-356)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#reentrancy-vulnerabilities
INFO:Detectors:
MonarchyGame.sendFees() (dataset/contracts/transaction_order/14967.sol#283-291) uses a dangerous strict equality:
	- _feesSent == 0 (dataset/contracts/transaction_order/14967.sol#288)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#dangerous-strict-equalities
INFO:Detectors:
MonarchyGame.overthrow(bytes23)._wasRefundSuccess (dataset/contracts/transaction_order/14967.sol#180) is a local variable never initialized
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#uninitialized-local-variables
INFO:Detectors:
Reentrancy in MonarchyGame.errorAndRefund(string) (dataset/contracts/transaction_order/14967.sol#220-225):
	External calls:
	- require(bool)(msg.sender.call.value(msg.value)()) (dataset/contracts/transaction_order/14967.sol#223)
	Event emitted after the call(s):
	- OverthrowRefundSuccess(now,_msg,msg.sender,msg.value) (dataset/contracts/transaction_order/14967.sol#224)
Reentrancy in MonarchyGame.sendFees() (dataset/contracts/transaction_order/14967.sol#283-291):
	External calls:
	- require(bool)(settings.collector.call.value(_feesSent)()) (dataset/contracts/transaction_order/14967.sol#289)
	Event emitted after the call(s):
	- FeesSent(now,settings.collector,_feesSent) (dataset/contracts/transaction_order/14967.sol#290)
Reentrancy in MonarchyGame.sendPrize(uint256) (dataset/contracts/transaction_order/14967.sol#233-280):
	External calls:
	- _paySuccessful = _winner.call.value(_prize)() (dataset/contracts/transaction_order/14967.sol#254)
	- _paySuccessful = _winner.call.value(_prize).gas(_gasLimit)() (dataset/contracts/transaction_order/14967.sol#256)
	Event emitted after the call(s):
	- SendPrizeFailure({time:now,redeemer:msg.sender,recipient:_winner,amount:_prize,gasLimit:_gasLimit}) (dataset/contracts/transaction_order/14967.sol#271-277)
	- SendPrizeSuccess({time:now,redeemer:msg.sender,recipient:_winner,amount:_prize,gasLimit:_gasLimit}) (dataset/contracts/transaction_order/14967.sol#261-267)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#reentrancy-vulnerabilities-3
INFO:Detectors:
MonarchyGame.sendPrize(uint256) (dataset/contracts/transaction_order/14967.sol#233-280) tries to limit the gas of an external call that controls implicit decoding
	_paySuccessful = _winner.call.value(_prize).gas(_gasLimit)() (dataset/contracts/transaction_order/14967.sol#256)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#return-bomb
INFO:Detectors:
Version constraint ^0.4.23 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
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
	- ^0.4.23 (dataset/contracts/transaction_order/14967.sol#1)
solc-0.4.23 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Low level call in MonarchyGame.errorAndRefund(string) (dataset/contracts/transaction_order/14967.sol#220-225):
	- require(bool)(msg.sender.call.value(msg.value)()) (dataset/contracts/transaction_order/14967.sol#223)
Low level call in MonarchyGame.sendPrize(uint256) (dataset/contracts/transaction_order/14967.sol#233-280):
	- _paySuccessful = _winner.call.value(_prize)() (dataset/contracts/transaction_order/14967.sol#254)
	- _paySuccessful = _winner.call.value(_prize).gas(_gasLimit)() (dataset/contracts/transaction_order/14967.sol#256)
Low level call in MonarchyGame.sendFees() (dataset/contracts/transaction_order/14967.sol#283-291):
	- require(bool)(settings.collector.call.value(_feesSent)()) (dataset/contracts/transaction_order/14967.sol#289)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#low-level-calls
INFO:Detectors:
Parameter MonarchyGame.overthrow(bytes23)._decree (dataset/contracts/transaction_order/14967.sol#157) is not in mixedCase
Parameter MonarchyGame.errorAndRefund(string)._msg (dataset/contracts/transaction_order/14967.sol#220) is not in mixedCase
Parameter MonarchyGame.sendPrize(uint256)._gasLimit (dataset/contracts/transaction_order/14967.sol#233) is not in mixedCase
Constant MonarchyGame.version (dataset/contracts/transaction_order/14967.sol#63) is not in UPPER_CASE_WITH_UNDERSCORES
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
Reentrancy in MonarchyGame.overthrow(bytes23) (dataset/contracts/transaction_order/14967.sol#157-217):
	External calls:
	- _wasRefundSuccess = _prevMonarch.send(msg.value) (dataset/contracts/transaction_order/14967.sol#182)
	State variables written after the call(s):
	- vars.monarch = msg.sender (dataset/contracts/transaction_order/14967.sol#189)
	- vars.numOverthrows = _newNumOverthrows (dataset/contracts/transaction_order/14967.sol#190)
	- vars.prizeGwei = uint64(_newPrizeGwei) (dataset/contracts/transaction_order/14967.sol#191)
	- vars.blockEnded = _newBlockEnded (dataset/contracts/transaction_order/14967.sol#192)
	- vars.prevBlock = uint32(block.number) (dataset/contracts/transaction_order/14967.sol#193)
	- vars.decree = _decree (dataset/contracts/transaction_order/14967.sol#194)
	- vars.monarch = msg.sender (dataset/contracts/transaction_order/14967.sol#199)
	- vars.decree = _decree (dataset/contracts/transaction_order/14967.sol#200)
	- vars.monarch = msg.sender (dataset/contracts/transaction_order/14967.sol#203)
	- vars.prizeGwei = uint64(_newPrizeGwei) (dataset/contracts/transaction_order/14967.sol#204)
	- vars.numOverthrows = _newNumOverthrows (dataset/contracts/transaction_order/14967.sol#205)
	- vars.decree = _decree (dataset/contracts/transaction_order/14967.sol#206)
	Event emitted after the call(s):
	- OverthrowOccurred(now,msg.sender,_decree,_prevMonarch,msg.value) (dataset/contracts/transaction_order/14967.sol#216)
	- OverthrowRefundFailure(now,.send() failed.,_prevMonarch,msg.value) (dataset/contracts/transaction_order/14967.sol#214)
	- OverthrowRefundSuccess(now,Another overthrow occurred on the same block.,_prevMonarch,msg.value) (dataset/contracts/transaction_order/14967.sol#212)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#reentrancy-vulnerabilities-4
INFO:Detectors:
MonarchyGame.version (dataset/contracts/transaction_order/14967.sol#63) is never used in MonarchyGame (dataset/contracts/transaction_order/14967.sol#27-359)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#unused-state-variable
INFO:Slither:./dataset/contracts/transaction_order/14967.sol analyzed (1 contracts with 100 detectors), 19 result(s) found

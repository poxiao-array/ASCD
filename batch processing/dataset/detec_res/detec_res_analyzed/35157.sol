'solc --version' running
'solc ./dataset/contracts/transaction_order/35157.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
LocalEthereumEscrows.transferTokenFrom(Token,address,address,uint256) (dataset/contracts/transaction_order/35157.sol#426-432) uses arbitrary from in transferFrom: _tokenContract.transferFrom(_transferTo,_transferFrom,_value) (dataset/contracts/transaction_order/35157.sol#431)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#arbitrary-from-in-transferfrom
INFO:Detectors:
LocalEthereumEscrows.transferMinusFees(address,uint256,uint128,uint16) (dataset/contracts/transaction_order/35157.sol#371-376) sends eth to arbitrary user
	Dangerous calls:
	- _to.transfer(_value - _totalFees) (dataset/contracts/transaction_order/35157.sol#375)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#functions-that-send-ether-to-arbitrary-destinations
INFO:Detectors:
LocalEthereumEscrows.transferToken(Token,address,uint256) (dataset/contracts/transaction_order/35157.sol#419-425) ignores return value by _tokenContract.transfer(_transferTo,_value) (dataset/contracts/transaction_order/35157.sol#424)
LocalEthereumEscrows.transferTokenFrom(Token,address,address,uint256) (dataset/contracts/transaction_order/35157.sol#426-432) ignores return value by _tokenContract.transferFrom(_transferTo,_transferFrom,_value) (dataset/contracts/transaction_order/35157.sol#431)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#unchecked-transfer
INFO:Detectors:
LocalEthereumEscrows.approveToken(Token,address,uint256) (dataset/contracts/transaction_order/35157.sol#433-439) ignores return value by _tokenContract.approve(_spender,_value) (dataset/contracts/transaction_order/35157.sol#438)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#unused-return
INFO:Detectors:
LocalEthereumEscrows.setArbitrator(address) (dataset/contracts/transaction_order/35157.sol#387-393) should emit an event for: 
	- arbitrator = _newArbitrator (dataset/contracts/transaction_order/35157.sol#392) 
LocalEthereumEscrows.setOwner(address) (dataset/contracts/transaction_order/35157.sol#395-401) should emit an event for: 
	- owner = _newOwner (dataset/contracts/transaction_order/35157.sol#400) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-access-control
INFO:Detectors:
LocalEthereumEscrows.withdrawFees(address,uint256) (dataset/contracts/transaction_order/35157.sol#378-385) should emit an event for: 
	- feesAvailableForWithdraw -= _amount (dataset/contracts/transaction_order/35157.sol#383) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-arithmetic
INFO:Detectors:
LocalEthereumEscrows.withdrawFees(address,uint256)._to (dataset/contracts/transaction_order/35157.sol#378) lacks a zero-check on :
		- _to.transfer(_amount) (dataset/contracts/transaction_order/35157.sol#384)
LocalEthereumEscrows.setArbitrator(address)._newArbitrator (dataset/contracts/transaction_order/35157.sol#387) lacks a zero-check on :
		- arbitrator = _newArbitrator (dataset/contracts/transaction_order/35157.sol#392)
LocalEthereumEscrows.setOwner(address)._newOwner (dataset/contracts/transaction_order/35157.sol#395) lacks a zero-check on :
		- owner = _newOwner (dataset/contracts/transaction_order/35157.sol#400)
LocalEthereumEscrows.setRelayer(address)._newRelayer (dataset/contracts/transaction_order/35157.sol#403) lacks a zero-check on :
		- relayer = _newRelayer (dataset/contracts/transaction_order/35157.sol#408)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-zero-address-validation
INFO:Detectors:
LocalEthereumEscrows.transferMinusFees(address,uint256,uint128,uint16) (dataset/contracts/transaction_order/35157.sol#371-376) has external calls inside a loop: _to.transfer(_value - _totalFees) (dataset/contracts/transaction_order/35157.sol#375)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation/#calls-inside-a-loop
INFO:Detectors:
LocalEthereumEscrows.createEscrow(bytes16,address,address,uint256,uint16,uint32,uint32,uint8,bytes32,bytes32) (dataset/contracts/transaction_order/35157.sol#92-117) uses timestamp for comparisons
	Dangerous comparisons:
	- require(bool)(! escrows[_tradeHash].exists) (dataset/contracts/transaction_order/35157.sol#110)
	- require(bool)(block.timestamp < _expiry) (dataset/contracts/transaction_order/35157.sol#112)
LocalEthereumEscrows.doSellerCancel(bytes16,address,address,uint256,uint16,uint128) (dataset/contracts/transaction_order/35157.sol#189-210) uses timestamp for comparisons
	Dangerous comparisons:
	- _escrow.sellerCanCancelAfter <= 1 || _escrow.sellerCanCancelAfter > block.timestamp (dataset/contracts/transaction_order/35157.sol#204)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#block-timestamp
INFO:Detectors:
LocalEthereumEscrows.doBuyerCancel(bytes16,address,address,uint256,uint16,uint128) (dataset/contracts/transaction_order/35157.sol#167-186) has costly operations inside a loop:
	- delete escrows[_tradeHash] (dataset/contracts/transaction_order/35157.sol#182)
LocalEthereumEscrows.transferMinusFees(address,uint256,uint128,uint16) (dataset/contracts/transaction_order/35157.sol#371-376) has costly operations inside a loop:
	- feesAvailableForWithdraw += _totalFees (dataset/contracts/transaction_order/35157.sol#374)
LocalEthereumEscrows.doRelease(bytes16,address,address,uint256,uint16,uint128) (dataset/contracts/transaction_order/35157.sol#120-139) has costly operations inside a loop:
	- delete escrows[_tradeHash] (dataset/contracts/transaction_order/35157.sol#135)
LocalEthereumEscrows.doSellerCancel(bytes16,address,address,uint256,uint16,uint128) (dataset/contracts/transaction_order/35157.sol#189-210) has costly operations inside a loop:
	- delete escrows[_tradeHash] (dataset/contracts/transaction_order/35157.sol#206)
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
	- ^0.4.18 (dataset/contracts/transaction_order/35157.sol#1)
solc-0.4.18 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Parameter LocalEthereumEscrows.getRelayedSender(bytes16,uint8,uint128,uint8,bytes32,bytes32)._tradeID (dataset/contracts/transaction_order/35157.sol#55) is not in mixedCase
Parameter LocalEthereumEscrows.getRelayedSender(bytes16,uint8,uint128,uint8,bytes32,bytes32)._actionByte (dataset/contracts/transaction_order/35157.sol#56) is not in mixedCase
Parameter LocalEthereumEscrows.getRelayedSender(bytes16,uint8,uint128,uint8,bytes32,bytes32)._maximumGasPrice (dataset/contracts/transaction_order/35157.sol#57) is not in mixedCase
Parameter LocalEthereumEscrows.getRelayedSender(bytes16,uint8,uint128,uint8,bytes32,bytes32)._v (dataset/contracts/transaction_order/35157.sol#58) is not in mixedCase
Parameter LocalEthereumEscrows.getRelayedSender(bytes16,uint8,uint128,uint8,bytes32,bytes32)._r (dataset/contracts/transaction_order/35157.sol#59) is not in mixedCase
Parameter LocalEthereumEscrows.getRelayedSender(bytes16,uint8,uint128,uint8,bytes32,bytes32)._s (dataset/contracts/transaction_order/35157.sol#60) is not in mixedCase
Parameter LocalEthereumEscrows.getEscrowAndHash(bytes16,address,address,uint256,uint16)._tradeID (dataset/contracts/transaction_order/35157.sol#82) is not in mixedCase
Parameter LocalEthereumEscrows.getEscrowAndHash(bytes16,address,address,uint256,uint16)._seller (dataset/contracts/transaction_order/35157.sol#83) is not in mixedCase
Parameter LocalEthereumEscrows.getEscrowAndHash(bytes16,address,address,uint256,uint16)._buyer (dataset/contracts/transaction_order/35157.sol#84) is not in mixedCase
Parameter LocalEthereumEscrows.getEscrowAndHash(bytes16,address,address,uint256,uint16)._value (dataset/contracts/transaction_order/35157.sol#85) is not in mixedCase
Parameter LocalEthereumEscrows.getEscrowAndHash(bytes16,address,address,uint256,uint16)._fee (dataset/contracts/transaction_order/35157.sol#86) is not in mixedCase
Parameter LocalEthereumEscrows.createEscrow(bytes16,address,address,uint256,uint16,uint32,uint32,uint8,bytes32,bytes32)._tradeID (dataset/contracts/transaction_order/35157.sol#98) is not in mixedCase
Parameter LocalEthereumEscrows.createEscrow(bytes16,address,address,uint256,uint16,uint32,uint32,uint8,bytes32,bytes32)._seller (dataset/contracts/transaction_order/35157.sol#99) is not in mixedCase
Parameter LocalEthereumEscrows.createEscrow(bytes16,address,address,uint256,uint16,uint32,uint32,uint8,bytes32,bytes32)._buyer (dataset/contracts/transaction_order/35157.sol#100) is not in mixedCase
Parameter LocalEthereumEscrows.createEscrow(bytes16,address,address,uint256,uint16,uint32,uint32,uint8,bytes32,bytes32)._value (dataset/contracts/transaction_order/35157.sol#101) is not in mixedCase
Parameter LocalEthereumEscrows.createEscrow(bytes16,address,address,uint256,uint16,uint32,uint32,uint8,bytes32,bytes32)._fee (dataset/contracts/transaction_order/35157.sol#102) is not in mixedCase
Parameter LocalEthereumEscrows.createEscrow(bytes16,address,address,uint256,uint16,uint32,uint32,uint8,bytes32,bytes32)._paymentWindowInSeconds (dataset/contracts/transaction_order/35157.sol#103) is not in mixedCase
Parameter LocalEthereumEscrows.createEscrow(bytes16,address,address,uint256,uint16,uint32,uint32,uint8,bytes32,bytes32)._expiry (dataset/contracts/transaction_order/35157.sol#104) is not in mixedCase
Parameter LocalEthereumEscrows.createEscrow(bytes16,address,address,uint256,uint16,uint32,uint32,uint8,bytes32,bytes32)._v (dataset/contracts/transaction_order/35157.sol#105) is not in mixedCase
Parameter LocalEthereumEscrows.createEscrow(bytes16,address,address,uint256,uint16,uint32,uint32,uint8,bytes32,bytes32)._r (dataset/contracts/transaction_order/35157.sol#106) is not in mixedCase
Parameter LocalEthereumEscrows.createEscrow(bytes16,address,address,uint256,uint16,uint32,uint32,uint8,bytes32,bytes32)._s (dataset/contracts/transaction_order/35157.sol#107) is not in mixedCase
Parameter LocalEthereumEscrows.doRelease(bytes16,address,address,uint256,uint16,uint128)._tradeID (dataset/contracts/transaction_order/35157.sol#125) is not in mixedCase
Parameter LocalEthereumEscrows.doRelease(bytes16,address,address,uint256,uint16,uint128)._seller (dataset/contracts/transaction_order/35157.sol#126) is not in mixedCase
Parameter LocalEthereumEscrows.doRelease(bytes16,address,address,uint256,uint16,uint128)._buyer (dataset/contracts/transaction_order/35157.sol#127) is not in mixedCase
Parameter LocalEthereumEscrows.doRelease(bytes16,address,address,uint256,uint16,uint128)._value (dataset/contracts/transaction_order/35157.sol#128) is not in mixedCase
Parameter LocalEthereumEscrows.doRelease(bytes16,address,address,uint256,uint16,uint128)._fee (dataset/contracts/transaction_order/35157.sol#129) is not in mixedCase
Parameter LocalEthereumEscrows.doRelease(bytes16,address,address,uint256,uint16,uint128)._additionalGas (dataset/contracts/transaction_order/35157.sol#130) is not in mixedCase
Parameter LocalEthereumEscrows.doDisableSellerCancel(bytes16,address,address,uint256,uint16,uint128)._tradeID (dataset/contracts/transaction_order/35157.sol#148) is not in mixedCase
Parameter LocalEthereumEscrows.doDisableSellerCancel(bytes16,address,address,uint256,uint16,uint128)._seller (dataset/contracts/transaction_order/35157.sol#149) is not in mixedCase
Parameter LocalEthereumEscrows.doDisableSellerCancel(bytes16,address,address,uint256,uint16,uint128)._buyer (dataset/contracts/transaction_order/35157.sol#150) is not in mixedCase
Parameter LocalEthereumEscrows.doDisableSellerCancel(bytes16,address,address,uint256,uint16,uint128)._value (dataset/contracts/transaction_order/35157.sol#151) is not in mixedCase
Parameter LocalEthereumEscrows.doDisableSellerCancel(bytes16,address,address,uint256,uint16,uint128)._fee (dataset/contracts/transaction_order/35157.sol#152) is not in mixedCase
Parameter LocalEthereumEscrows.doDisableSellerCancel(bytes16,address,address,uint256,uint16,uint128)._additionalGas (dataset/contracts/transaction_order/35157.sol#153) is not in mixedCase
Parameter LocalEthereumEscrows.doBuyerCancel(bytes16,address,address,uint256,uint16,uint128)._tradeID (dataset/contracts/transaction_order/35157.sol#172) is not in mixedCase
Parameter LocalEthereumEscrows.doBuyerCancel(bytes16,address,address,uint256,uint16,uint128)._seller (dataset/contracts/transaction_order/35157.sol#173) is not in mixedCase
Parameter LocalEthereumEscrows.doBuyerCancel(bytes16,address,address,uint256,uint16,uint128)._buyer (dataset/contracts/transaction_order/35157.sol#174) is not in mixedCase
Parameter LocalEthereumEscrows.doBuyerCancel(bytes16,address,address,uint256,uint16,uint128)._value (dataset/contracts/transaction_order/35157.sol#175) is not in mixedCase
Parameter LocalEthereumEscrows.doBuyerCancel(bytes16,address,address,uint256,uint16,uint128)._fee (dataset/contracts/transaction_order/35157.sol#176) is not in mixedCase
Parameter LocalEthereumEscrows.doBuyerCancel(bytes16,address,address,uint256,uint16,uint128)._additionalGas (dataset/contracts/transaction_order/35157.sol#177) is not in mixedCase
Parameter LocalEthereumEscrows.doSellerCancel(bytes16,address,address,uint256,uint16,uint128)._tradeID (dataset/contracts/transaction_order/35157.sol#195) is not in mixedCase
Parameter LocalEthereumEscrows.doSellerCancel(bytes16,address,address,uint256,uint16,uint128)._seller (dataset/contracts/transaction_order/35157.sol#196) is not in mixedCase
Parameter LocalEthereumEscrows.doSellerCancel(bytes16,address,address,uint256,uint16,uint128)._buyer (dataset/contracts/transaction_order/35157.sol#197) is not in mixedCase
Parameter LocalEthereumEscrows.doSellerCancel(bytes16,address,address,uint256,uint16,uint128)._value (dataset/contracts/transaction_order/35157.sol#198) is not in mixedCase
Parameter LocalEthereumEscrows.doSellerCancel(bytes16,address,address,uint256,uint16,uint128)._fee (dataset/contracts/transaction_order/35157.sol#199) is not in mixedCase
Parameter LocalEthereumEscrows.doSellerCancel(bytes16,address,address,uint256,uint16,uint128)._additionalGas (dataset/contracts/transaction_order/35157.sol#200) is not in mixedCase
Parameter LocalEthereumEscrows.doSellerRequestCancel(bytes16,address,address,uint256,uint16,uint128)._tradeID (dataset/contracts/transaction_order/35157.sol#219) is not in mixedCase
Parameter LocalEthereumEscrows.doSellerRequestCancel(bytes16,address,address,uint256,uint16,uint128)._seller (dataset/contracts/transaction_order/35157.sol#220) is not in mixedCase
Parameter LocalEthereumEscrows.doSellerRequestCancel(bytes16,address,address,uint256,uint16,uint128)._buyer (dataset/contracts/transaction_order/35157.sol#221) is not in mixedCase
Parameter LocalEthereumEscrows.doSellerRequestCancel(bytes16,address,address,uint256,uint16,uint128)._value (dataset/contracts/transaction_order/35157.sol#222) is not in mixedCase
Parameter LocalEthereumEscrows.doSellerRequestCancel(bytes16,address,address,uint256,uint16,uint128)._fee (dataset/contracts/transaction_order/35157.sol#223) is not in mixedCase
Parameter LocalEthereumEscrows.doSellerRequestCancel(bytes16,address,address,uint256,uint16,uint128)._additionalGas (dataset/contracts/transaction_order/35157.sol#224) is not in mixedCase
Parameter LocalEthereumEscrows.resolveDispute(bytes16,address,address,uint256,uint16,uint8,bytes32,bytes32,uint8)._tradeID (dataset/contracts/transaction_order/35157.sol#244) is not in mixedCase
Parameter LocalEthereumEscrows.resolveDispute(bytes16,address,address,uint256,uint16,uint8,bytes32,bytes32,uint8)._seller (dataset/contracts/transaction_order/35157.sol#245) is not in mixedCase
Parameter LocalEthereumEscrows.resolveDispute(bytes16,address,address,uint256,uint16,uint8,bytes32,bytes32,uint8)._buyer (dataset/contracts/transaction_order/35157.sol#246) is not in mixedCase
Parameter LocalEthereumEscrows.resolveDispute(bytes16,address,address,uint256,uint16,uint8,bytes32,bytes32,uint8)._value (dataset/contracts/transaction_order/35157.sol#247) is not in mixedCase
Parameter LocalEthereumEscrows.resolveDispute(bytes16,address,address,uint256,uint16,uint8,bytes32,bytes32,uint8)._fee (dataset/contracts/transaction_order/35157.sol#248) is not in mixedCase
Parameter LocalEthereumEscrows.resolveDispute(bytes16,address,address,uint256,uint16,uint8,bytes32,bytes32,uint8)._v (dataset/contracts/transaction_order/35157.sol#249) is not in mixedCase
Parameter LocalEthereumEscrows.resolveDispute(bytes16,address,address,uint256,uint16,uint8,bytes32,bytes32,uint8)._r (dataset/contracts/transaction_order/35157.sol#250) is not in mixedCase
Parameter LocalEthereumEscrows.resolveDispute(bytes16,address,address,uint256,uint16,uint8,bytes32,bytes32,uint8)._s (dataset/contracts/transaction_order/35157.sol#251) is not in mixedCase
Parameter LocalEthereumEscrows.resolveDispute(bytes16,address,address,uint256,uint16,uint8,bytes32,bytes32,uint8)._buyerPercent (dataset/contracts/transaction_order/35157.sol#252) is not in mixedCase
Parameter LocalEthereumEscrows.release(bytes16,address,address,uint256,uint16)._tradeID (dataset/contracts/transaction_order/35157.sol#271) is not in mixedCase
Parameter LocalEthereumEscrows.release(bytes16,address,address,uint256,uint16)._seller (dataset/contracts/transaction_order/35157.sol#271) is not in mixedCase
Parameter LocalEthereumEscrows.release(bytes16,address,address,uint256,uint16)._buyer (dataset/contracts/transaction_order/35157.sol#271) is not in mixedCase
Parameter LocalEthereumEscrows.release(bytes16,address,address,uint256,uint16)._value (dataset/contracts/transaction_order/35157.sol#271) is not in mixedCase
Parameter LocalEthereumEscrows.release(bytes16,address,address,uint256,uint16)._fee (dataset/contracts/transaction_order/35157.sol#271) is not in mixedCase
Parameter LocalEthereumEscrows.disableSellerCancel(bytes16,address,address,uint256,uint16)._tradeID (dataset/contracts/transaction_order/35157.sol#275) is not in mixedCase
Parameter LocalEthereumEscrows.disableSellerCancel(bytes16,address,address,uint256,uint16)._seller (dataset/contracts/transaction_order/35157.sol#275) is not in mixedCase
Parameter LocalEthereumEscrows.disableSellerCancel(bytes16,address,address,uint256,uint16)._buyer (dataset/contracts/transaction_order/35157.sol#275) is not in mixedCase
Parameter LocalEthereumEscrows.disableSellerCancel(bytes16,address,address,uint256,uint16)._value (dataset/contracts/transaction_order/35157.sol#275) is not in mixedCase
Parameter LocalEthereumEscrows.disableSellerCancel(bytes16,address,address,uint256,uint16)._fee (dataset/contracts/transaction_order/35157.sol#275) is not in mixedCase
Parameter LocalEthereumEscrows.buyerCancel(bytes16,address,address,uint256,uint16)._tradeID (dataset/contracts/transaction_order/35157.sol#279) is not in mixedCase
Parameter LocalEthereumEscrows.buyerCancel(bytes16,address,address,uint256,uint16)._seller (dataset/contracts/transaction_order/35157.sol#279) is not in mixedCase
Parameter LocalEthereumEscrows.buyerCancel(bytes16,address,address,uint256,uint16)._buyer (dataset/contracts/transaction_order/35157.sol#279) is not in mixedCase
Parameter LocalEthereumEscrows.buyerCancel(bytes16,address,address,uint256,uint16)._value (dataset/contracts/transaction_order/35157.sol#279) is not in mixedCase
Parameter LocalEthereumEscrows.buyerCancel(bytes16,address,address,uint256,uint16)._fee (dataset/contracts/transaction_order/35157.sol#279) is not in mixedCase
Parameter LocalEthereumEscrows.sellerCancel(bytes16,address,address,uint256,uint16)._tradeID (dataset/contracts/transaction_order/35157.sol#283) is not in mixedCase
Parameter LocalEthereumEscrows.sellerCancel(bytes16,address,address,uint256,uint16)._seller (dataset/contracts/transaction_order/35157.sol#283) is not in mixedCase
Parameter LocalEthereumEscrows.sellerCancel(bytes16,address,address,uint256,uint16)._buyer (dataset/contracts/transaction_order/35157.sol#283) is not in mixedCase
Parameter LocalEthereumEscrows.sellerCancel(bytes16,address,address,uint256,uint16)._value (dataset/contracts/transaction_order/35157.sol#283) is not in mixedCase
Parameter LocalEthereumEscrows.sellerCancel(bytes16,address,address,uint256,uint16)._fee (dataset/contracts/transaction_order/35157.sol#283) is not in mixedCase
Parameter LocalEthereumEscrows.sellerRequestCancel(bytes16,address,address,uint256,uint16)._tradeID (dataset/contracts/transaction_order/35157.sol#287) is not in mixedCase
Parameter LocalEthereumEscrows.sellerRequestCancel(bytes16,address,address,uint256,uint16)._seller (dataset/contracts/transaction_order/35157.sol#287) is not in mixedCase
Parameter LocalEthereumEscrows.sellerRequestCancel(bytes16,address,address,uint256,uint16)._buyer (dataset/contracts/transaction_order/35157.sol#287) is not in mixedCase
Parameter LocalEthereumEscrows.sellerRequestCancel(bytes16,address,address,uint256,uint16)._value (dataset/contracts/transaction_order/35157.sol#287) is not in mixedCase
Parameter LocalEthereumEscrows.sellerRequestCancel(bytes16,address,address,uint256,uint16)._fee (dataset/contracts/transaction_order/35157.sol#287) is not in mixedCase
Parameter LocalEthereumEscrows.relaySellerCannotCancel(bytes16,address,address,uint256,uint16,uint128,uint8,bytes32,bytes32)._tradeID (dataset/contracts/transaction_order/35157.sol#292) is not in mixedCase
Parameter LocalEthereumEscrows.relaySellerCannotCancel(bytes16,address,address,uint256,uint16,uint128,uint8,bytes32,bytes32)._seller (dataset/contracts/transaction_order/35157.sol#292) is not in mixedCase
Parameter LocalEthereumEscrows.relaySellerCannotCancel(bytes16,address,address,uint256,uint16,uint128,uint8,bytes32,bytes32)._buyer (dataset/contracts/transaction_order/35157.sol#292) is not in mixedCase
Parameter LocalEthereumEscrows.relaySellerCannotCancel(bytes16,address,address,uint256,uint16,uint128,uint8,bytes32,bytes32)._value (dataset/contracts/transaction_order/35157.sol#292) is not in mixedCase
Parameter LocalEthereumEscrows.relaySellerCannotCancel(bytes16,address,address,uint256,uint16,uint128,uint8,bytes32,bytes32)._fee (dataset/contracts/transaction_order/35157.sol#292) is not in mixedCase
Parameter LocalEthereumEscrows.relaySellerCannotCancel(bytes16,address,address,uint256,uint16,uint128,uint8,bytes32,bytes32)._maximumGasPrice (dataset/contracts/transaction_order/35157.sol#292) is not in mixedCase
Parameter LocalEthereumEscrows.relaySellerCannotCancel(bytes16,address,address,uint256,uint16,uint128,uint8,bytes32,bytes32)._v (dataset/contracts/transaction_order/35157.sol#292) is not in mixedCase
Parameter LocalEthereumEscrows.relaySellerCannotCancel(bytes16,address,address,uint256,uint16,uint128,uint8,bytes32,bytes32)._r (dataset/contracts/transaction_order/35157.sol#292) is not in mixedCase
Parameter LocalEthereumEscrows.relaySellerCannotCancel(bytes16,address,address,uint256,uint16,uint128,uint8,bytes32,bytes32)._s (dataset/contracts/transaction_order/35157.sol#292) is not in mixedCase
Parameter LocalEthereumEscrows.relayBuyerCancel(bytes16,address,address,uint256,uint16,uint128,uint8,bytes32,bytes32)._tradeID (dataset/contracts/transaction_order/35157.sol#295) is not in mixedCase
Parameter LocalEthereumEscrows.relayBuyerCancel(bytes16,address,address,uint256,uint16,uint128,uint8,bytes32,bytes32)._seller (dataset/contracts/transaction_order/35157.sol#295) is not in mixedCase
Parameter LocalEthereumEscrows.relayBuyerCancel(bytes16,address,address,uint256,uint16,uint128,uint8,bytes32,bytes32)._buyer (dataset/contracts/transaction_order/35157.sol#295) is not in mixedCase
Parameter LocalEthereumEscrows.relayBuyerCancel(bytes16,address,address,uint256,uint16,uint128,uint8,bytes32,bytes32)._value (dataset/contracts/transaction_order/35157.sol#295) is not in mixedCase
Parameter LocalEthereumEscrows.relayBuyerCancel(bytes16,address,address,uint256,uint16,uint128,uint8,bytes32,bytes32)._fee (dataset/contracts/transaction_order/35157.sol#295) is not in mixedCase
Parameter LocalEthereumEscrows.relayBuyerCancel(bytes16,address,address,uint256,uint16,uint128,uint8,bytes32,bytes32)._maximumGasPrice (dataset/contracts/transaction_order/35157.sol#295) is not in mixedCase
Parameter LocalEthereumEscrows.relayBuyerCancel(bytes16,address,address,uint256,uint16,uint128,uint8,bytes32,bytes32)._v (dataset/contracts/transaction_order/35157.sol#295) is not in mixedCase
Parameter LocalEthereumEscrows.relayBuyerCancel(bytes16,address,address,uint256,uint16,uint128,uint8,bytes32,bytes32)._r (dataset/contracts/transaction_order/35157.sol#295) is not in mixedCase
Parameter LocalEthereumEscrows.relayBuyerCancel(bytes16,address,address,uint256,uint16,uint128,uint8,bytes32,bytes32)._s (dataset/contracts/transaction_order/35157.sol#295) is not in mixedCase
Parameter LocalEthereumEscrows.relayRelease(bytes16,address,address,uint256,uint16,uint128,uint8,bytes32,bytes32)._tradeID (dataset/contracts/transaction_order/35157.sol#298) is not in mixedCase
Parameter LocalEthereumEscrows.relayRelease(bytes16,address,address,uint256,uint16,uint128,uint8,bytes32,bytes32)._seller (dataset/contracts/transaction_order/35157.sol#298) is not in mixedCase
Parameter LocalEthereumEscrows.relayRelease(bytes16,address,address,uint256,uint16,uint128,uint8,bytes32,bytes32)._buyer (dataset/contracts/transaction_order/35157.sol#298) is not in mixedCase
Parameter LocalEthereumEscrows.relayRelease(bytes16,address,address,uint256,uint16,uint128,uint8,bytes32,bytes32)._value (dataset/contracts/transaction_order/35157.sol#298) is not in mixedCase
Parameter LocalEthereumEscrows.relayRelease(bytes16,address,address,uint256,uint16,uint128,uint8,bytes32,bytes32)._fee (dataset/contracts/transaction_order/35157.sol#298) is not in mixedCase
Parameter LocalEthereumEscrows.relayRelease(bytes16,address,address,uint256,uint16,uint128,uint8,bytes32,bytes32)._maximumGasPrice (dataset/contracts/transaction_order/35157.sol#298) is not in mixedCase
Parameter LocalEthereumEscrows.relayRelease(bytes16,address,address,uint256,uint16,uint128,uint8,bytes32,bytes32)._v (dataset/contracts/transaction_order/35157.sol#298) is not in mixedCase
Parameter LocalEthereumEscrows.relayRelease(bytes16,address,address,uint256,uint16,uint128,uint8,bytes32,bytes32)._r (dataset/contracts/transaction_order/35157.sol#298) is not in mixedCase
Parameter LocalEthereumEscrows.relayRelease(bytes16,address,address,uint256,uint16,uint128,uint8,bytes32,bytes32)._s (dataset/contracts/transaction_order/35157.sol#298) is not in mixedCase
Parameter LocalEthereumEscrows.relaySellerCancel(bytes16,address,address,uint256,uint16,uint128,uint8,bytes32,bytes32)._tradeID (dataset/contracts/transaction_order/35157.sol#301) is not in mixedCase
Parameter LocalEthereumEscrows.relaySellerCancel(bytes16,address,address,uint256,uint16,uint128,uint8,bytes32,bytes32)._seller (dataset/contracts/transaction_order/35157.sol#301) is not in mixedCase
Parameter LocalEthereumEscrows.relaySellerCancel(bytes16,address,address,uint256,uint16,uint128,uint8,bytes32,bytes32)._buyer (dataset/contracts/transaction_order/35157.sol#301) is not in mixedCase
Parameter LocalEthereumEscrows.relaySellerCancel(bytes16,address,address,uint256,uint16,uint128,uint8,bytes32,bytes32)._value (dataset/contracts/transaction_order/35157.sol#301) is not in mixedCase
Parameter LocalEthereumEscrows.relaySellerCancel(bytes16,address,address,uint256,uint16,uint128,uint8,bytes32,bytes32)._fee (dataset/contracts/transaction_order/35157.sol#301) is not in mixedCase
Parameter LocalEthereumEscrows.relaySellerCancel(bytes16,address,address,uint256,uint16,uint128,uint8,bytes32,bytes32)._maximumGasPrice (dataset/contracts/transaction_order/35157.sol#301) is not in mixedCase
Parameter LocalEthereumEscrows.relaySellerCancel(bytes16,address,address,uint256,uint16,uint128,uint8,bytes32,bytes32)._v (dataset/contracts/transaction_order/35157.sol#301) is not in mixedCase
Parameter LocalEthereumEscrows.relaySellerCancel(bytes16,address,address,uint256,uint16,uint128,uint8,bytes32,bytes32)._r (dataset/contracts/transaction_order/35157.sol#301) is not in mixedCase
Parameter LocalEthereumEscrows.relaySellerCancel(bytes16,address,address,uint256,uint16,uint128,uint8,bytes32,bytes32)._s (dataset/contracts/transaction_order/35157.sol#301) is not in mixedCase
Parameter LocalEthereumEscrows.relaySellerRequestCancel(bytes16,address,address,uint256,uint16,uint128,uint8,bytes32,bytes32)._tradeID (dataset/contracts/transaction_order/35157.sol#304) is not in mixedCase
Parameter LocalEthereumEscrows.relaySellerRequestCancel(bytes16,address,address,uint256,uint16,uint128,uint8,bytes32,bytes32)._seller (dataset/contracts/transaction_order/35157.sol#304) is not in mixedCase
Parameter LocalEthereumEscrows.relaySellerRequestCancel(bytes16,address,address,uint256,uint16,uint128,uint8,bytes32,bytes32)._buyer (dataset/contracts/transaction_order/35157.sol#304) is not in mixedCase
Parameter LocalEthereumEscrows.relaySellerRequestCancel(bytes16,address,address,uint256,uint16,uint128,uint8,bytes32,bytes32)._value (dataset/contracts/transaction_order/35157.sol#304) is not in mixedCase
Parameter LocalEthereumEscrows.relaySellerRequestCancel(bytes16,address,address,uint256,uint16,uint128,uint8,bytes32,bytes32)._fee (dataset/contracts/transaction_order/35157.sol#304) is not in mixedCase
Parameter LocalEthereumEscrows.relaySellerRequestCancel(bytes16,address,address,uint256,uint16,uint128,uint8,bytes32,bytes32)._maximumGasPrice (dataset/contracts/transaction_order/35157.sol#304) is not in mixedCase
Parameter LocalEthereumEscrows.relaySellerRequestCancel(bytes16,address,address,uint256,uint16,uint128,uint8,bytes32,bytes32)._v (dataset/contracts/transaction_order/35157.sol#304) is not in mixedCase
Parameter LocalEthereumEscrows.relaySellerRequestCancel(bytes16,address,address,uint256,uint16,uint128,uint8,bytes32,bytes32)._r (dataset/contracts/transaction_order/35157.sol#304) is not in mixedCase
Parameter LocalEthereumEscrows.relaySellerRequestCancel(bytes16,address,address,uint256,uint16,uint128,uint8,bytes32,bytes32)._s (dataset/contracts/transaction_order/35157.sol#304) is not in mixedCase
Parameter LocalEthereumEscrows.relay(bytes16,address,address,uint256,uint16,uint128,uint8,bytes32,bytes32,uint8,uint128)._tradeID (dataset/contracts/transaction_order/35157.sol#309) is not in mixedCase
Parameter LocalEthereumEscrows.relay(bytes16,address,address,uint256,uint16,uint128,uint8,bytes32,bytes32,uint8,uint128)._seller (dataset/contracts/transaction_order/35157.sol#310) is not in mixedCase
Parameter LocalEthereumEscrows.relay(bytes16,address,address,uint256,uint16,uint128,uint8,bytes32,bytes32,uint8,uint128)._buyer (dataset/contracts/transaction_order/35157.sol#311) is not in mixedCase
Parameter LocalEthereumEscrows.relay(bytes16,address,address,uint256,uint16,uint128,uint8,bytes32,bytes32,uint8,uint128)._value (dataset/contracts/transaction_order/35157.sol#312) is not in mixedCase
Parameter LocalEthereumEscrows.relay(bytes16,address,address,uint256,uint16,uint128,uint8,bytes32,bytes32,uint8,uint128)._fee (dataset/contracts/transaction_order/35157.sol#313) is not in mixedCase
Parameter LocalEthereumEscrows.relay(bytes16,address,address,uint256,uint16,uint128,uint8,bytes32,bytes32,uint8,uint128)._maximumGasPrice (dataset/contracts/transaction_order/35157.sol#314) is not in mixedCase
Parameter LocalEthereumEscrows.relay(bytes16,address,address,uint256,uint16,uint128,uint8,bytes32,bytes32,uint8,uint128)._v (dataset/contracts/transaction_order/35157.sol#315) is not in mixedCase
Parameter LocalEthereumEscrows.relay(bytes16,address,address,uint256,uint16,uint128,uint8,bytes32,bytes32,uint8,uint128)._r (dataset/contracts/transaction_order/35157.sol#316) is not in mixedCase
Parameter LocalEthereumEscrows.relay(bytes16,address,address,uint256,uint16,uint128,uint8,bytes32,bytes32,uint8,uint128)._s (dataset/contracts/transaction_order/35157.sol#317) is not in mixedCase
Parameter LocalEthereumEscrows.relay(bytes16,address,address,uint256,uint16,uint128,uint8,bytes32,bytes32,uint8,uint128)._actionByte (dataset/contracts/transaction_order/35157.sol#318) is not in mixedCase
Parameter LocalEthereumEscrows.relay(bytes16,address,address,uint256,uint16,uint128,uint8,bytes32,bytes32,uint8,uint128)._additionalGas (dataset/contracts/transaction_order/35157.sol#319) is not in mixedCase
Parameter LocalEthereumEscrows.batchRelay(bytes16[],address[],address[],uint256[],uint16[],uint128[],uint8[],bytes32[],bytes32[],uint8[])._tradeID (dataset/contracts/transaction_order/35157.sol#346) is not in mixedCase
Parameter LocalEthereumEscrows.batchRelay(bytes16[],address[],address[],uint256[],uint16[],uint128[],uint8[],bytes32[],bytes32[],uint8[])._seller (dataset/contracts/transaction_order/35157.sol#347) is not in mixedCase
Parameter LocalEthereumEscrows.batchRelay(bytes16[],address[],address[],uint256[],uint16[],uint128[],uint8[],bytes32[],bytes32[],uint8[])._buyer (dataset/contracts/transaction_order/35157.sol#348) is not in mixedCase
Parameter LocalEthereumEscrows.batchRelay(bytes16[],address[],address[],uint256[],uint16[],uint128[],uint8[],bytes32[],bytes32[],uint8[])._value (dataset/contracts/transaction_order/35157.sol#349) is not in mixedCase
Parameter LocalEthereumEscrows.batchRelay(bytes16[],address[],address[],uint256[],uint16[],uint128[],uint8[],bytes32[],bytes32[],uint8[])._fee (dataset/contracts/transaction_order/35157.sol#350) is not in mixedCase
Parameter LocalEthereumEscrows.batchRelay(bytes16[],address[],address[],uint256[],uint16[],uint128[],uint8[],bytes32[],bytes32[],uint8[])._maximumGasPrice (dataset/contracts/transaction_order/35157.sol#351) is not in mixedCase
Parameter LocalEthereumEscrows.batchRelay(bytes16[],address[],address[],uint256[],uint16[],uint128[],uint8[],bytes32[],bytes32[],uint8[])._v (dataset/contracts/transaction_order/35157.sol#352) is not in mixedCase
Parameter LocalEthereumEscrows.batchRelay(bytes16[],address[],address[],uint256[],uint16[],uint128[],uint8[],bytes32[],bytes32[],uint8[])._r (dataset/contracts/transaction_order/35157.sol#353) is not in mixedCase
Parameter LocalEthereumEscrows.batchRelay(bytes16[],address[],address[],uint256[],uint16[],uint128[],uint8[],bytes32[],bytes32[],uint8[])._s (dataset/contracts/transaction_order/35157.sol#354) is not in mixedCase
Parameter LocalEthereumEscrows.batchRelay(bytes16[],address[],address[],uint256[],uint16[],uint128[],uint8[],bytes32[],bytes32[],uint8[])._actionByte (dataset/contracts/transaction_order/35157.sol#355) is not in mixedCase
Parameter LocalEthereumEscrows.increaseGasSpent(bytes32,uint128)._tradeHash (dataset/contracts/transaction_order/35157.sol#365) is not in mixedCase
Parameter LocalEthereumEscrows.increaseGasSpent(bytes32,uint128)._gas (dataset/contracts/transaction_order/35157.sol#365) is not in mixedCase
Parameter LocalEthereumEscrows.transferMinusFees(address,uint256,uint128,uint16)._to (dataset/contracts/transaction_order/35157.sol#371) is not in mixedCase
Parameter LocalEthereumEscrows.transferMinusFees(address,uint256,uint128,uint16)._value (dataset/contracts/transaction_order/35157.sol#371) is not in mixedCase
Parameter LocalEthereumEscrows.transferMinusFees(address,uint256,uint128,uint16)._totalGasFeesSpentByRelayer (dataset/contracts/transaction_order/35157.sol#371) is not in mixedCase
Parameter LocalEthereumEscrows.transferMinusFees(address,uint256,uint128,uint16)._fee (dataset/contracts/transaction_order/35157.sol#371) is not in mixedCase
Parameter LocalEthereumEscrows.withdrawFees(address,uint256)._to (dataset/contracts/transaction_order/35157.sol#378) is not in mixedCase
Parameter LocalEthereumEscrows.withdrawFees(address,uint256)._amount (dataset/contracts/transaction_order/35157.sol#378) is not in mixedCase
Parameter LocalEthereumEscrows.setArbitrator(address)._newArbitrator (dataset/contracts/transaction_order/35157.sol#387) is not in mixedCase
Parameter LocalEthereumEscrows.setOwner(address)._newOwner (dataset/contracts/transaction_order/35157.sol#395) is not in mixedCase
Parameter LocalEthereumEscrows.setRelayer(address)._newRelayer (dataset/contracts/transaction_order/35157.sol#403) is not in mixedCase
Parameter LocalEthereumEscrows.setRequestCancellationMinimumTime(uint32)._newRequestCancellationMinimumTime (dataset/contracts/transaction_order/35157.sol#411) is not in mixedCase
Parameter LocalEthereumEscrows.transferToken(Token,address,uint256)._tokenContract (dataset/contracts/transaction_order/35157.sol#419) is not in mixedCase
Parameter LocalEthereumEscrows.transferToken(Token,address,uint256)._transferTo (dataset/contracts/transaction_order/35157.sol#419) is not in mixedCase
Parameter LocalEthereumEscrows.transferToken(Token,address,uint256)._value (dataset/contracts/transaction_order/35157.sol#419) is not in mixedCase
Parameter LocalEthereumEscrows.transferTokenFrom(Token,address,address,uint256)._tokenContract (dataset/contracts/transaction_order/35157.sol#426) is not in mixedCase
Parameter LocalEthereumEscrows.transferTokenFrom(Token,address,address,uint256)._transferTo (dataset/contracts/transaction_order/35157.sol#426) is not in mixedCase
Parameter LocalEthereumEscrows.transferTokenFrom(Token,address,address,uint256)._transferFrom (dataset/contracts/transaction_order/35157.sol#426) is not in mixedCase
Parameter LocalEthereumEscrows.transferTokenFrom(Token,address,address,uint256)._value (dataset/contracts/transaction_order/35157.sol#426) is not in mixedCase
Parameter LocalEthereumEscrows.approveToken(Token,address,uint256)._tokenContract (dataset/contracts/transaction_order/35157.sol#433) is not in mixedCase
Parameter LocalEthereumEscrows.approveToken(Token,address,uint256)._spender (dataset/contracts/transaction_order/35157.sol#433) is not in mixedCase
Parameter LocalEthereumEscrows.approveToken(Token,address,uint256)._value (dataset/contracts/transaction_order/35157.sol#433) is not in mixedCase
Constant LocalEthereumEscrows.GAS_doRelease (dataset/contracts/transaction_order/35157.sol#119) is not in UPPER_CASE_WITH_UNDERSCORES
Constant LocalEthereumEscrows.GAS_doDisableSellerCancel (dataset/contracts/transaction_order/35157.sol#141) is not in UPPER_CASE_WITH_UNDERSCORES
Constant LocalEthereumEscrows.GAS_doBuyerCancel (dataset/contracts/transaction_order/35157.sol#166) is not in UPPER_CASE_WITH_UNDERSCORES
Constant LocalEthereumEscrows.GAS_doSellerCancel (dataset/contracts/transaction_order/35157.sol#188) is not in UPPER_CASE_WITH_UNDERSCORES
Constant LocalEthereumEscrows.GAS_doSellerRequestCancel (dataset/contracts/transaction_order/35157.sol#212) is not in UPPER_CASE_WITH_UNDERSCORES
Constant LocalEthereumEscrows.GAS_doResolveDispute (dataset/contracts/transaction_order/35157.sol#238) is not in UPPER_CASE_WITH_UNDERSCORES
Constant LocalEthereumEscrows.GAS_batchRelayBaseCost (dataset/contracts/transaction_order/35157.sol#341) is not in UPPER_CASE_WITH_UNDERSCORES
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
batchRelay(bytes16[],address[],address[],uint256[],uint16[],uint128[],uint8[],bytes32[],bytes32[],uint8[]) should be declared external:
	- LocalEthereumEscrows.batchRelay(bytes16[],address[],address[],uint256[],uint16[],uint128[],uint8[],bytes32[],bytes32[],uint8[]) (dataset/contracts/transaction_order/35157.sol#342-363)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#public-function-that-could-be-declared-external
INFO:Slither:./dataset/contracts/transaction_order/35157.sol analyzed (2 contracts with 100 detectors), 202 result(s) found

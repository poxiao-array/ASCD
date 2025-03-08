'solc --version' running
'solc ./dataset/contracts/transaction_order/5723.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
EIP20Wrapper.eip20TransferFrom(address,address,address,uint256) (dataset/contracts/transaction_order/5723.sol#376-401) uses arbitrary from in transferFrom: NonCompliantEIP20(token).transferFrom(from,to,value) (dataset/contracts/transaction_order/5723.sol#384)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#arbitrary-from-in-transferfrom
INFO:Detectors:
BZxOracle._doTrade(address,address,uint256,uint256) (dataset/contracts/transaction_order/5723.sol#1392-1493) sends eth to arbitrary user
	Dangerous calls:
	- destTokenAmount = KyberNetwork_Interface(kyberContract).trade.value(sourceTokenAmount)(KYBER_ETH_TOKEN_ADDRESS,sourceTokenAmount,destTokenAddress,vaultContract,maxDestTokenAmount,0,address(0)) (dataset/contracts/transaction_order/5723.sol#1410-1419)
	- WETH_Interface(wethContract).deposit.value(destTokenAmount)() (dataset/contracts/transaction_order/5723.sol#1441)
	- destTokenAmount = KyberNetwork_Interface(kyberContract).trade.value(destEtherAmount)(KYBER_ETH_TOKEN_ADDRESS,destEtherAmount,destTokenAddress,vaultContract,maxDestTokenAmount,0,address(0)) (dataset/contracts/transaction_order/5723.sol#1481-1490)
BZxOracle._doTradeWithEth(address,uint256,address) (dataset/contracts/transaction_order/5723.sol#1535-1577) sends eth to arbitrary user
	Dangerous calls:
	- result = kyberContract.call.gas(gasleft()()).value(ethToSend)(0xcb3c28c7,KYBER_ETH_TOKEN_ADDRESS,ethToSend,destTokenAddress,receiver,destTokenAmountNeeded,0,address(0)) (dataset/contracts/transaction_order/5723.sol#1556-1567)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#functions-that-send-ether-to-arbitrary-destinations
INFO:Detectors:
BZxOracle (dataset/contracts/transaction_order/5723.sol#736-1594) contract sets array length with a user-controlled value:
	- gasRefunds[loanOrderHash].push(GasData({payer:taker,gasUsed:gasUsed.sub(gasleft()()),isPaid:false})) (dataset/contracts/transaction_order/5723.sol#806-810)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#array-length-assignment
INFO:Detectors:
EMACollector.updateEMA(uint256) (dataset/contracts/transaction_order/5723.sol#275-293) performs a multiplication on the result of a division:
	- emaValue = SafeMath.sub(SafeMath.add(value / (emaPeriods + 1) * 2,emaValue),emaValue / (emaPeriods + 1) * 2) (dataset/contracts/transaction_order/5723.sol#285-292)
BZxOracle._doTradeWithEth(address,uint256,address) (dataset/contracts/transaction_order/5723.sol#1535-1577) performs a multiplication on the result of a division:
	- ethToSend = destTokenAmountNeeded.mul(10 ** 18).div(etherToDest).mul(105).div(100) (dataset/contracts/transaction_order/5723.sol#1550)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#divide-before-multiply
INFO:Detectors:
NonCompliantEIP20 (dataset/contracts/transaction_order/5723.sol#337-341) has incorrect ERC20 function interface:NonCompliantEIP20.transfer(address,uint256) (dataset/contracts/transaction_order/5723.sol#338)
NonCompliantEIP20 (dataset/contracts/transaction_order/5723.sol#337-341) has incorrect ERC20 function interface:NonCompliantEIP20.transferFrom(address,address,uint256) (dataset/contracts/transaction_order/5723.sol#339)
NonCompliantEIP20 (dataset/contracts/transaction_order/5723.sol#337-341) has incorrect ERC20 function interface:NonCompliantEIP20.approve(address,uint256) (dataset/contracts/transaction_order/5723.sol#340)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-erc20-interface
INFO:Detectors:
BZxOracle.setInterestFeePercent(uint256) (dataset/contracts/transaction_order/5723.sol#1211-1218) contains a tautology or contradiction:
	- require(bool)(newRate != interestFeePercent && newRate >= 0 && newRate <= 100) (dataset/contracts/transaction_order/5723.sol#1216)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#tautology-or-contradiction
INFO:Detectors:
BZxOracle._doTrade(address,address,uint256,uint256) (dataset/contracts/transaction_order/5723.sol#1392-1493) ignores return value by (etherToDest,None) = KyberNetwork_Interface(kyberContract).getExpectedRate(KYBER_ETH_TOKEN_ADDRESS,destTokenAddress,0) (dataset/contracts/transaction_order/5723.sol#1463-1467)
BZxOracle._doTradeWithEth(address,uint256,address) (dataset/contracts/transaction_order/5723.sol#1535-1577) ignores return value by (etherToDest,None) = KyberNetwork_Interface(kyberContract).getExpectedRate(KYBER_ETH_TOKEN_ADDRESS,destTokenAddress,0) (dataset/contracts/transaction_order/5723.sol#1543-1547)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#unused-return
INFO:Detectors:
BZxOracle.setLiquidationThresholdPercent(uint256) (dataset/contracts/transaction_order/5723.sol#1220-1227) should emit an event for: 
	- liquidationThresholdPercent = newValue (dataset/contracts/transaction_order/5723.sol#1226) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-arithmetic
INFO:Detectors:
BZxOracle.constructor(address,address,address,address)._vaultContract (dataset/contracts/transaction_order/5723.sol#776) lacks a zero-check on :
		- vaultContract = _vaultContract (dataset/contracts/transaction_order/5723.sol#783)
BZxOracle.constructor(address,address,address,address)._kyberContract (dataset/contracts/transaction_order/5723.sol#777) lacks a zero-check on :
		- kyberContract = _kyberContract (dataset/contracts/transaction_order/5723.sol#784)
BZxOracle.constructor(address,address,address,address)._wethContract (dataset/contracts/transaction_order/5723.sol#778) lacks a zero-check on :
		- wethContract = _wethContract (dataset/contracts/transaction_order/5723.sol#785)
BZxOracle.constructor(address,address,address,address)._bZRxTokenContract (dataset/contracts/transaction_order/5723.sol#779) lacks a zero-check on :
		- bZRxTokenContract = _bZRxTokenContract (dataset/contracts/transaction_order/5723.sol#786)
BZxOracle.transferEther(address,uint256).to (dataset/contracts/transaction_order/5723.sol#1312) lacks a zero-check on :
		- (to.send(amount)) (dataset/contracts/transaction_order/5723.sol#1323)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-zero-address-validation
INFO:Detectors:
GasRefunder.sendRefund(address,uint256,uint256,uint256) (dataset/contracts/transaction_order/5723.sol#227-260) has external calls inside a loop: payer.transfer(refundAmount) (dataset/contracts/transaction_order/5723.sol#241)
GasRefunder.sendRefund(address,uint256,uint256,uint256) (dataset/contracts/transaction_order/5723.sol#227-260) has external calls inside a loop: GasRefund(payer,gasUsed,gasPrice,refundAmount,payer.send(refundAmount)) (dataset/contracts/transaction_order/5723.sol#250-256)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation/#calls-inside-a-loop
INFO:Detectors:
BZxOracle._doTradeForEth(address,uint256,address) (dataset/contracts/transaction_order/5723.sol#1495-1533) tries to limit the gas of an external call that controls implicit decoding
	result = kyberContract.call.gas(gasleft()())(0xcb3c28c7,sourceTokenAddress,sourceTokenAmount,KYBER_ETH_TOKEN_ADDRESS,receiver,MAX_FOR_KYBER,0,address(0)) (dataset/contracts/transaction_order/5723.sol#1513-1523)
BZxOracle._doTradeWithEth(address,uint256,address) (dataset/contracts/transaction_order/5723.sol#1535-1577) tries to limit the gas of an external call that controls implicit decoding
	result = kyberContract.call.gas(gasleft()()).value(ethToSend)(0xcb3c28c7,KYBER_ETH_TOKEN_ADDRESS,ethToSend,destTokenAddress,receiver,destTokenAmountNeeded,0,address(0)) (dataset/contracts/transaction_order/5723.sol#1556-1567)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#return-bomb
INFO:Detectors:
EIP20Wrapper.eip20Transfer(address,address,uint256) (dataset/contracts/transaction_order/5723.sol#350-374) uses assembly
	- INLINE ASM (dataset/contracts/transaction_order/5723.sol#359-373)
EIP20Wrapper.eip20TransferFrom(address,address,address,uint256) (dataset/contracts/transaction_order/5723.sol#376-401) uses assembly
	- INLINE ASM (dataset/contracts/transaction_order/5723.sol#386-400)
EIP20Wrapper.eip20Approve(address,address,uint256) (dataset/contracts/transaction_order/5723.sol#403-427) uses assembly
	- INLINE ASM (dataset/contracts/transaction_order/5723.sol#412-426)
BZxOracle._doTradeForEth(address,uint256,address) (dataset/contracts/transaction_order/5723.sol#1495-1533) uses assembly
	- INLINE ASM (dataset/contracts/transaction_order/5723.sol#1525-1533)
BZxOracle._doTradeWithEth(address,uint256,address) (dataset/contracts/transaction_order/5723.sol#1535-1577) uses assembly
	- INLINE ASM (dataset/contracts/transaction_order/5723.sol#1569-1577)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#assembly-usage
INFO:Detectors:
EIP20Wrapper.eip20TransferFrom(address,address,address,uint256) (dataset/contracts/transaction_order/5723.sol#376-401) is never used and should be removed
Ownable._transferOwnership(address) (dataset/contracts/transaction_order/5723.sol#123-127) is never used and should be removed
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#dead-code
INFO:Detectors:
Version constraint 0.4.24 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
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
	- 0.4.24 (dataset/contracts/transaction_order/5723.sol#19)
solc-0.4.24 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Low level call in BZxOracle._doTradeForEth(address,uint256,address) (dataset/contracts/transaction_order/5723.sol#1495-1533):
	- result = kyberContract.call.gas(gasleft()())(0xcb3c28c7,sourceTokenAddress,sourceTokenAmount,KYBER_ETH_TOKEN_ADDRESS,receiver,MAX_FOR_KYBER,0,address(0)) (dataset/contracts/transaction_order/5723.sol#1513-1523)
Low level call in BZxOracle._doTradeWithEth(address,uint256,address) (dataset/contracts/transaction_order/5723.sol#1535-1577):
	- result = kyberContract.call.gas(gasleft()()).value(ethToSend)(0xcb3c28c7,KYBER_ETH_TOKEN_ADDRESS,ethToSend,destTokenAddress,receiver,destTokenAmountNeeded,0,address(0)) (dataset/contracts/transaction_order/5723.sol#1556-1567)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#low-level-calls
INFO:Detectors:
Parameter Ownable.transferOwnership(address)._newOwner (dataset/contracts/transaction_order/5723.sol#115) is not in mixedCase
Contract WETH_Interface (dataset/contracts/transaction_order/5723.sol#697-700) is not in CapWords
Contract KyberNetwork_Interface (dataset/contracts/transaction_order/5723.sol#702-734) is not in CapWords
Parameter BZxOracle.setManualTradingAllowed(bool)._isManualTradingAllowed (dataset/contracts/transaction_order/5723.sol#1259) is not in mixedCase
Parameter BZxOracle.setEMAPeriods(uint256)._newEMAPeriods (dataset/contracts/transaction_order/5723.sol#1304) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
Reentrancy in BZxOracle.didCloseLoan(bytes32,address,bool,uint256) (dataset/contracts/transaction_order/5723.sol#917-951):
	External calls:
	- sendRefund(gasData.payer,gasData.gasUsed,emaValue,gasRewardPercent) (dataset/contracts/transaction_order/5723.sol#932-936)
		- payer.transfer(refundAmount) (dataset/contracts/transaction_order/5723.sol#241)
		- GasRefund(payer,gasUsed,gasPrice,refundAmount,payer.send(refundAmount)) (dataset/contracts/transaction_order/5723.sol#250-256)
	State variables written after the call(s):
	- gasData.isPaid = true (dataset/contracts/transaction_order/5723.sol#937)
Reentrancy in BZxOracle.didCloseLoan(bytes32,address,bool,uint256) (dataset/contracts/transaction_order/5723.sol#917-951):
	External calls:
	- sendRefund(gasData.payer,gasData.gasUsed,emaValue,gasRewardPercent) (dataset/contracts/transaction_order/5723.sol#932-936)
		- payer.transfer(refundAmount) (dataset/contracts/transaction_order/5723.sol#241)
		- GasRefund(payer,gasUsed,gasPrice,refundAmount,payer.send(refundAmount)) (dataset/contracts/transaction_order/5723.sol#250-256)
	- calculateAndSendRefund(loanCloser,gasUsed,emaValue,bountyRewardPercent) (dataset/contracts/transaction_order/5723.sol#943-947)
		- payer.transfer(refundAmount) (dataset/contracts/transaction_order/5723.sol#241)
		- GasRefund(payer,gasUsed,gasPrice,refundAmount,payer.send(refundAmount)) (dataset/contracts/transaction_order/5723.sol#250-256)
	Event emitted after the call(s):
	- GasRefund(payer,gasUsed,gasPrice,refundAmount,true) (dataset/contracts/transaction_order/5723.sol#242-248)
		- calculateAndSendRefund(loanCloser,gasUsed,emaValue,bountyRewardPercent) (dataset/contracts/transaction_order/5723.sol#943-947)
	- GasRefund(payer,gasUsed,gasPrice,refundAmount,payer.send(refundAmount)) (dataset/contracts/transaction_order/5723.sol#250-256)
		- calculateAndSendRefund(loanCloser,gasUsed,emaValue,bountyRewardPercent) (dataset/contracts/transaction_order/5723.sol#943-947)
Reentrancy in GasRefunder.sendRefund(address,uint256,uint256,uint256) (dataset/contracts/transaction_order/5723.sol#227-260):
	External calls:
	- payer.transfer(refundAmount) (dataset/contracts/transaction_order/5723.sol#241)
	Event emitted after the call(s):
	- GasRefund(payer,gasUsed,gasPrice,refundAmount,true) (dataset/contracts/transaction_order/5723.sol#242-248)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#reentrancy-vulnerabilities-4
INFO:Detectors:
GasRefunder.throwOnGasRefundFail (dataset/contracts/transaction_order/5723.sol#173) should be constant 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#state-variables-that-could-be-declared-constant
INFO:Slither:./dataset/contracts/transaction_order/5723.sol analyzed (14 contracts with 100 detectors), 42 result(s) found

'solc --version' running
'solc ./dataset/contracts/transaction_order/2533.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
Compilation warnings/errors on ./dataset/contracts/transaction_order/2533.sol:
./dataset/contracts/transaction_order/2533.sol:21:3: Warning: No visibility specified. Defaulting to "public".
  function Ownable() {
  ^
Spanning multiple lines.
./dataset/contracts/transaction_order/2533.sol:448:3: Warning: No visibility specified. Defaulting to "public".
  function Destructible() payable { }
  ^---------------------------------^
./dataset/contracts/transaction_order/2533.sol:469:3: Warning: Function state mutability can be restricted to pure
  function mul(uint256 a, uint256 b) internal constant returns (uint256) {
  ^
Spanning multiple lines.
./dataset/contracts/transaction_order/2533.sol:475:3: Warning: Function state mutability can be restricted to pure
  function div(uint256 a, uint256 b) internal constant returns (uint256) {
  ^
Spanning multiple lines.
./dataset/contracts/transaction_order/2533.sol:482:3: Warning: Function state mutability can be restricted to pure
  function sub(uint256 a, uint256 b) internal constant returns (uint256) {
  ^
Spanning multiple lines.
./dataset/contracts/transaction_order/2533.sol:487:3: Warning: Function state mutability can be restricted to pure
  function add(uint256 a, uint256 b) internal constant returns (uint256) {
  ^
Spanning multiple lines.

INFO:Detectors:
MerchantWallet.doWithdrawal(address,uint256) (dataset/contracts/transaction_order/2533.sol#406-409) sends eth to arbitrary user
	Dangerous calls:
	- beneficiary.transfer(amount) (dataset/contracts/transaction_order/2533.sol#408)
MonethaGateway.acceptPayment(address,uint256) (dataset/contracts/transaction_order/2533.sol#542-552) sends eth to arbitrary user
	Dangerous calls:
	- monethaVault.transfer(_monethaFee) (dataset/contracts/transaction_order/2533.sol#549)
PaymentProcessor.processPayment(uint256,uint32,uint32,uint256) (dataset/contracts/transaction_order/2533.sol#823-841) sends eth to arbitrary user
	Dangerous calls:
	- monethaGateway.acceptPayment.value(orders[_orderId].price)(merchantWallet,orders[_orderId].fee) (dataset/contracts/transaction_order/2533.sol#832)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#functions-that-send-ether-to-arbitrary-destinations
INFO:Detectors:
SafeDestructible.destroy() (dataset/contracts/transaction_order/2533.sol#245-248) uses a dangerous strict equality:
	- require(bool)(this.balance == 0) (dataset/contracts/transaction_order/2533.sol#246)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#dangerous-strict-equalities
INFO:Detectors:
MonethaGateway.acceptPayment(address,uint256) (dataset/contracts/transaction_order/2533.sol#542-552) contains a tautology or contradiction:
	- require(bool)(_monethaFee >= 0 && _monethaFee <= FEE_PERMILLE.mul(msg.value).div(1000)) (dataset/contracts/transaction_order/2533.sol#544)
PaymentProcessor.addOrder(uint256,uint256,address,address,uint256) (dataset/contracts/transaction_order/2533.sol#687-706) contains a tautology or contradiction:
	- require(bool)(_fee >= 0 && _fee <= FEE_PERMILLE.mul(_price).div(1000)) (dataset/contracts/transaction_order/2533.sol#697)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#tautology-or-contradiction
INFO:Detectors:
MerchantWallet.changeMerchantAccount(address) (dataset/contracts/transaction_order/2533.sol#435-437) should emit an event for: 
	- merchantAccount = newAccount (dataset/contracts/transaction_order/2533.sol#436) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-access-control
INFO:Detectors:
MerchantWallet.changeMerchantAccount(address).newAccount (dataset/contracts/transaction_order/2533.sol#435) lacks a zero-check on :
		- merchantAccount = newAccount (dataset/contracts/transaction_order/2533.sol#436)
MonethaGateway.changeMonethaVault(address).newVault (dataset/contracts/transaction_order/2533.sol#558) lacks a zero-check on :
		- monethaVault = newVault (dataset/contracts/transaction_order/2533.sol#559)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-zero-address-validation
INFO:Detectors:
Reentrancy in PaymentProcessor.setMerchantDealsHistory(MerchantDealsHistory) (dataset/contracts/transaction_order/2533.sol#868-873):
	External calls:
	- require(bool)(_merchantHistory.merchantIdHash() == merchantIdHash) (dataset/contracts/transaction_order/2533.sol#870)
	State variables written after the call(s):
	- merchantHistory = _merchantHistory (dataset/contracts/transaction_order/2533.sol#872)
Reentrancy in PaymentProcessor.setMerchantWallet(MerchantWallet) (dataset/contracts/transaction_order/2533.sol#857-862):
	External calls:
	- require(bool)(_newWallet.merchantIdHash() == merchantIdHash) (dataset/contracts/transaction_order/2533.sol#859)
	State variables written after the call(s):
	- merchantWallet = _newWallet (dataset/contracts/transaction_order/2533.sol#861)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#reentrancy-vulnerabilities-2
INFO:Detectors:
Version constraint 0.4.18 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
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
	- 0.4.18 (dataset/contracts/transaction_order/2533.sol#1)
solc-0.4.18 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Parameter Restricted.setMonethaAddress(address,bool)._address (dataset/contracts/transaction_order/2533.sol#73) is not in mixedCase
Parameter Restricted.setMonethaAddress(address,bool)._isMonethaAddress (dataset/contracts/transaction_order/2533.sol#73) is not in mixedCase
Parameter MerchantDealsHistory.recordDeal(uint256,address,uint32,uint32,bool,uint256)._orderId (dataset/contracts/transaction_order/2533.sol#162) is not in mixedCase
Parameter MerchantDealsHistory.recordDeal(uint256,address,uint32,uint32,bool,uint256)._clientAddress (dataset/contracts/transaction_order/2533.sol#163) is not in mixedCase
Parameter MerchantDealsHistory.recordDeal(uint256,address,uint32,uint32,bool,uint256)._clientReputation (dataset/contracts/transaction_order/2533.sol#164) is not in mixedCase
Parameter MerchantDealsHistory.recordDeal(uint256,address,uint32,uint32,bool,uint256)._merchantReputation (dataset/contracts/transaction_order/2533.sol#165) is not in mixedCase
Parameter MerchantDealsHistory.recordDeal(uint256,address,uint32,uint32,bool,uint256)._isSuccess (dataset/contracts/transaction_order/2533.sol#166) is not in mixedCase
Parameter MerchantDealsHistory.recordDeal(uint256,address,uint32,uint32,bool,uint256)._dealHash (dataset/contracts/transaction_order/2533.sol#167) is not in mixedCase
Parameter MerchantDealsHistory.recordDealCancelReason(uint256,address,uint32,uint32,uint256,string)._orderId (dataset/contracts/transaction_order/2533.sol#190) is not in mixedCase
Parameter MerchantDealsHistory.recordDealCancelReason(uint256,address,uint32,uint32,uint256,string)._clientAddress (dataset/contracts/transaction_order/2533.sol#191) is not in mixedCase
Parameter MerchantDealsHistory.recordDealCancelReason(uint256,address,uint32,uint32,uint256,string)._clientReputation (dataset/contracts/transaction_order/2533.sol#192) is not in mixedCase
Parameter MerchantDealsHistory.recordDealCancelReason(uint256,address,uint32,uint32,uint256,string)._merchantReputation (dataset/contracts/transaction_order/2533.sol#193) is not in mixedCase
Parameter MerchantDealsHistory.recordDealCancelReason(uint256,address,uint32,uint32,uint256,string)._dealHash (dataset/contracts/transaction_order/2533.sol#194) is not in mixedCase
Parameter MerchantDealsHistory.recordDealCancelReason(uint256,address,uint32,uint32,uint256,string)._cancelReason (dataset/contracts/transaction_order/2533.sol#195) is not in mixedCase
Parameter MerchantDealsHistory.recordDealRefundReason(uint256,address,uint32,uint32,uint256,string)._orderId (dataset/contracts/transaction_order/2533.sol#218) is not in mixedCase
Parameter MerchantDealsHistory.recordDealRefundReason(uint256,address,uint32,uint32,uint256,string)._clientAddress (dataset/contracts/transaction_order/2533.sol#219) is not in mixedCase
Parameter MerchantDealsHistory.recordDealRefundReason(uint256,address,uint32,uint32,uint256,string)._clientReputation (dataset/contracts/transaction_order/2533.sol#220) is not in mixedCase
Parameter MerchantDealsHistory.recordDealRefundReason(uint256,address,uint32,uint32,uint256,string)._merchantReputation (dataset/contracts/transaction_order/2533.sol#221) is not in mixedCase
Parameter MerchantDealsHistory.recordDealRefundReason(uint256,address,uint32,uint32,uint256,string)._dealHash (dataset/contracts/transaction_order/2533.sol#222) is not in mixedCase
Parameter MerchantDealsHistory.recordDealRefundReason(uint256,address,uint32,uint32,uint256,string)._refundReason (dataset/contracts/transaction_order/2533.sol#223) is not in mixedCase
Parameter Destructible.destroyAndSend(address)._recipient (dataset/contracts/transaction_order/2533.sol#457) is not in mixedCase
Parameter MonethaGateway.acceptPayment(address,uint256)._merchantWallet (dataset/contracts/transaction_order/2533.sol#542) is not in mixedCase
Parameter MonethaGateway.acceptPayment(address,uint256)._monethaFee (dataset/contracts/transaction_order/2533.sol#542) is not in mixedCase
Parameter MonethaGateway.setMonethaAddress(address,bool)._address (dataset/contracts/transaction_order/2533.sol#565) is not in mixedCase
Parameter MonethaGateway.setMonethaAddress(address,bool)._isMonethaAddress (dataset/contracts/transaction_order/2533.sol#565) is not in mixedCase
Parameter MonethaGateway.setAdmin(address)._admin (dataset/contracts/transaction_order/2533.sol#577) is not in mixedCase
Parameter PaymentProcessor.addOrder(uint256,uint256,address,address,uint256)._orderId (dataset/contracts/transaction_order/2533.sol#688) is not in mixedCase
Parameter PaymentProcessor.addOrder(uint256,uint256,address,address,uint256)._price (dataset/contracts/transaction_order/2533.sol#689) is not in mixedCase
Parameter PaymentProcessor.addOrder(uint256,uint256,address,address,uint256)._paymentAcceptor (dataset/contracts/transaction_order/2533.sol#690) is not in mixedCase
Parameter PaymentProcessor.addOrder(uint256,uint256,address,address,uint256)._originAddress (dataset/contracts/transaction_order/2533.sol#691) is not in mixedCase
Parameter PaymentProcessor.addOrder(uint256,uint256,address,address,uint256)._fee (dataset/contracts/transaction_order/2533.sol#692) is not in mixedCase
Parameter PaymentProcessor.securePay(uint256)._orderId (dataset/contracts/transaction_order/2533.sol#713) is not in mixedCase
Parameter PaymentProcessor.cancelOrder(uint256,uint32,uint32,uint256,string)._orderId (dataset/contracts/transaction_order/2533.sol#732) is not in mixedCase
Parameter PaymentProcessor.cancelOrder(uint256,uint32,uint32,uint256,string)._clientReputation (dataset/contracts/transaction_order/2533.sol#733) is not in mixedCase
Parameter PaymentProcessor.cancelOrder(uint256,uint32,uint32,uint256,string)._merchantReputation (dataset/contracts/transaction_order/2533.sol#734) is not in mixedCase
Parameter PaymentProcessor.cancelOrder(uint256,uint32,uint32,uint256,string)._dealHash (dataset/contracts/transaction_order/2533.sol#735) is not in mixedCase
Parameter PaymentProcessor.cancelOrder(uint256,uint32,uint32,uint256,string)._cancelReason (dataset/contracts/transaction_order/2533.sol#736) is not in mixedCase
Parameter PaymentProcessor.refundPayment(uint256,uint32,uint32,uint256,string)._orderId (dataset/contracts/transaction_order/2533.sol#773) is not in mixedCase
Parameter PaymentProcessor.refundPayment(uint256,uint32,uint32,uint256,string)._clientReputation (dataset/contracts/transaction_order/2533.sol#774) is not in mixedCase
Parameter PaymentProcessor.refundPayment(uint256,uint32,uint32,uint256,string)._merchantReputation (dataset/contracts/transaction_order/2533.sol#775) is not in mixedCase
Parameter PaymentProcessor.refundPayment(uint256,uint32,uint32,uint256,string)._dealHash (dataset/contracts/transaction_order/2533.sol#776) is not in mixedCase
Parameter PaymentProcessor.refundPayment(uint256,uint32,uint32,uint256,string)._refundReason (dataset/contracts/transaction_order/2533.sol#777) is not in mixedCase
Parameter PaymentProcessor.withdrawRefund(uint256)._orderId (dataset/contracts/transaction_order/2533.sol#808) is not in mixedCase
Parameter PaymentProcessor.processPayment(uint256,uint32,uint32,uint256)._orderId (dataset/contracts/transaction_order/2533.sol#824) is not in mixedCase
Parameter PaymentProcessor.processPayment(uint256,uint32,uint32,uint256)._clientReputation (dataset/contracts/transaction_order/2533.sol#825) is not in mixedCase
Parameter PaymentProcessor.processPayment(uint256,uint32,uint32,uint256)._merchantReputation (dataset/contracts/transaction_order/2533.sol#826) is not in mixedCase
Parameter PaymentProcessor.processPayment(uint256,uint32,uint32,uint256)._dealHash (dataset/contracts/transaction_order/2533.sol#827) is not in mixedCase
Parameter PaymentProcessor.setMonethaGateway(MonethaGateway)._newGateway (dataset/contracts/transaction_order/2533.sol#847) is not in mixedCase
Parameter PaymentProcessor.setMerchantWallet(MerchantWallet)._newWallet (dataset/contracts/transaction_order/2533.sol#857) is not in mixedCase
Parameter PaymentProcessor.setMerchantDealsHistory(MerchantDealsHistory)._merchantHistory (dataset/contracts/transaction_order/2533.sol#868) is not in mixedCase
Parameter PaymentProcessor.updateDealConditions(uint256,uint32,uint32,bool,uint256)._orderId (dataset/contracts/transaction_order/2533.sol#885) is not in mixedCase
Parameter PaymentProcessor.updateDealConditions(uint256,uint32,uint32,bool,uint256)._clientReputation (dataset/contracts/transaction_order/2533.sol#886) is not in mixedCase
Parameter PaymentProcessor.updateDealConditions(uint256,uint32,uint32,bool,uint256)._merchantReputation (dataset/contracts/transaction_order/2533.sol#887) is not in mixedCase
Parameter PaymentProcessor.updateDealConditions(uint256,uint32,uint32,bool,uint256)._isSuccess (dataset/contracts/transaction_order/2533.sol#888) is not in mixedCase
Parameter PaymentProcessor.updateDealConditions(uint256,uint32,uint32,bool,uint256)._dealHash (dataset/contracts/transaction_order/2533.sol#889) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
Reentrancy in MonethaGateway.acceptPayment(address,uint256) (dataset/contracts/transaction_order/2533.sol#542-552):
	External calls:
	- _merchantWallet.transfer(merchantIncome) (dataset/contracts/transaction_order/2533.sol#548)
	- monethaVault.transfer(_monethaFee) (dataset/contracts/transaction_order/2533.sol#549)
	Event emitted after the call(s):
	- PaymentProcessed(_merchantWallet,merchantIncome,_monethaFee) (dataset/contracts/transaction_order/2533.sol#551)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#reentrancy-vulnerabilities-4
INFO:Detectors:
MerchantDealsHistory.VERSION (dataset/contracts/transaction_order/2533.sol#109) is never used in MerchantDealsHistory (dataset/contracts/transaction_order/2533.sol#107-235)
MerchantWallet.VERSION (dataset/contracts/transaction_order/2533.sol#308) is never used in MerchantWallet (dataset/contracts/transaction_order/2533.sol#306-438)
MonethaGateway.VERSION (dataset/contracts/transaction_order/2533.sol#505) is never used in MonethaGateway (dataset/contracts/transaction_order/2533.sol#501-581)
PaymentProcessor.VERSION (dataset/contracts/transaction_order/2533.sol#603) is never used in PaymentProcessor (dataset/contracts/transaction_order/2533.sol#599-905)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#unused-state-variable
INFO:Detectors:
setContactInformation(string) should be declared external:
	- Contactable.setContactInformation(string) (dataset/contracts/transaction_order/2533.sol#95-97)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#public-function-that-could-be-declared-external
INFO:Slither:./dataset/contracts/transaction_order/2533.sol analyzed (11 contracts with 100 detectors), 74 result(s) found

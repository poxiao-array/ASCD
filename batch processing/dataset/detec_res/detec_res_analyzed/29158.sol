'solc --version' running
'solc ./dataset/contracts/transaction_order/29158.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
Compilation warnings/errors on ./dataset/contracts/transaction_order/29158.sol:
./dataset/contracts/transaction_order/29158.sol:21:3: Warning: No visibility specified. Defaulting to "public".
  function Ownable() {
  ^
Spanning multiple lines.
./dataset/contracts/transaction_order/29158.sol:427:3: Warning: No visibility specified. Defaulting to "public".
  function Destructible() payable { }
  ^---------------------------------^
./dataset/contracts/transaction_order/29158.sol:448:3: Warning: Function state mutability can be restricted to pure
  function mul(uint256 a, uint256 b) internal constant returns (uint256) {
  ^
Spanning multiple lines.
./dataset/contracts/transaction_order/29158.sol:454:3: Warning: Function state mutability can be restricted to pure
  function div(uint256 a, uint256 b) internal constant returns (uint256) {
  ^
Spanning multiple lines.
./dataset/contracts/transaction_order/29158.sol:461:3: Warning: Function state mutability can be restricted to pure
  function sub(uint256 a, uint256 b) internal constant returns (uint256) {
  ^
Spanning multiple lines.
./dataset/contracts/transaction_order/29158.sol:466:3: Warning: Function state mutability can be restricted to pure
  function add(uint256 a, uint256 b) internal constant returns (uint256) {
  ^
Spanning multiple lines.

INFO:Detectors:
PaymentProcessor.processPayment(uint256,uint32,uint32,uint256) (dataset/contracts/transaction_order/29158.sol#791-810) sends eth to arbitrary user
	Dangerous calls:
	- monethaGateway.acceptPayment.value(orders[_orderId].price)(merchantWallet) (dataset/contracts/transaction_order/29158.sol#801)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#functions-that-send-ether-to-arbitrary-destinations
INFO:Detectors:
SafeDestructible.destroy() (dataset/contracts/transaction_order/29158.sol#238-241) uses a dangerous strict equality:
	- require(bool)(this.balance == 0) (dataset/contracts/transaction_order/29158.sol#239)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#dangerous-strict-equalities
INFO:Detectors:
MerchantWallet.changeMerchantAccount(address) (dataset/contracts/transaction_order/29158.sol#414-416) should emit an event for: 
	- merchantAccount = newAccount (dataset/contracts/transaction_order/29158.sol#415) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-access-control
INFO:Detectors:
MerchantWallet.changeMerchantAccount(address).newAccount (dataset/contracts/transaction_order/29158.sol#414) lacks a zero-check on :
		- merchantAccount = newAccount (dataset/contracts/transaction_order/29158.sol#415)
MonethaGateway.changeMonethaVault(address).newVault (dataset/contracts/transaction_order/29158.sol#536) lacks a zero-check on :
		- monethaVault = newVault (dataset/contracts/transaction_order/29158.sol#537)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-zero-address-validation
INFO:Detectors:
Reentrancy in PaymentProcessor.setMerchantDealsHistory(MerchantDealsHistory) (dataset/contracts/transaction_order/29158.sol#837-842):
	External calls:
	- require(bool)(_merchantHistory.merchantIdHash() == merchantIdHash) (dataset/contracts/transaction_order/29158.sol#839)
	State variables written after the call(s):
	- merchantHistory = _merchantHistory (dataset/contracts/transaction_order/29158.sol#841)
Reentrancy in PaymentProcessor.setMerchantWallet(MerchantWallet) (dataset/contracts/transaction_order/29158.sol#826-831):
	External calls:
	- require(bool)(_newWallet.merchantIdHash() == merchantIdHash) (dataset/contracts/transaction_order/29158.sol#828)
	State variables written after the call(s):
	- merchantWallet = _newWallet (dataset/contracts/transaction_order/29158.sol#830)
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
	- 0.4.18 (dataset/contracts/transaction_order/29158.sol#1)
solc-0.4.18 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Parameter Restricted.setMonethaAddress(address,bool)._address (dataset/contracts/transaction_order/29158.sol#67) is not in mixedCase
Parameter Restricted.setMonethaAddress(address,bool)._isMonethaAddress (dataset/contracts/transaction_order/29158.sol#67) is not in mixedCase
Parameter MerchantDealsHistory.recordDeal(uint256,address,uint32,uint32,bool,uint256)._orderId (dataset/contracts/transaction_order/29158.sol#155) is not in mixedCase
Parameter MerchantDealsHistory.recordDeal(uint256,address,uint32,uint32,bool,uint256)._clientAddress (dataset/contracts/transaction_order/29158.sol#156) is not in mixedCase
Parameter MerchantDealsHistory.recordDeal(uint256,address,uint32,uint32,bool,uint256)._clientReputation (dataset/contracts/transaction_order/29158.sol#157) is not in mixedCase
Parameter MerchantDealsHistory.recordDeal(uint256,address,uint32,uint32,bool,uint256)._merchantReputation (dataset/contracts/transaction_order/29158.sol#158) is not in mixedCase
Parameter MerchantDealsHistory.recordDeal(uint256,address,uint32,uint32,bool,uint256)._isSuccess (dataset/contracts/transaction_order/29158.sol#159) is not in mixedCase
Parameter MerchantDealsHistory.recordDeal(uint256,address,uint32,uint32,bool,uint256)._dealHash (dataset/contracts/transaction_order/29158.sol#160) is not in mixedCase
Parameter MerchantDealsHistory.recordDealCancelReason(uint256,address,uint32,uint32,uint256,string)._orderId (dataset/contracts/transaction_order/29158.sol#183) is not in mixedCase
Parameter MerchantDealsHistory.recordDealCancelReason(uint256,address,uint32,uint32,uint256,string)._clientAddress (dataset/contracts/transaction_order/29158.sol#184) is not in mixedCase
Parameter MerchantDealsHistory.recordDealCancelReason(uint256,address,uint32,uint32,uint256,string)._clientReputation (dataset/contracts/transaction_order/29158.sol#185) is not in mixedCase
Parameter MerchantDealsHistory.recordDealCancelReason(uint256,address,uint32,uint32,uint256,string)._merchantReputation (dataset/contracts/transaction_order/29158.sol#186) is not in mixedCase
Parameter MerchantDealsHistory.recordDealCancelReason(uint256,address,uint32,uint32,uint256,string)._dealHash (dataset/contracts/transaction_order/29158.sol#187) is not in mixedCase
Parameter MerchantDealsHistory.recordDealCancelReason(uint256,address,uint32,uint32,uint256,string)._cancelReason (dataset/contracts/transaction_order/29158.sol#188) is not in mixedCase
Parameter MerchantDealsHistory.recordDealRefundReason(uint256,address,uint32,uint32,uint256,string)._orderId (dataset/contracts/transaction_order/29158.sol#211) is not in mixedCase
Parameter MerchantDealsHistory.recordDealRefundReason(uint256,address,uint32,uint32,uint256,string)._clientAddress (dataset/contracts/transaction_order/29158.sol#212) is not in mixedCase
Parameter MerchantDealsHistory.recordDealRefundReason(uint256,address,uint32,uint32,uint256,string)._clientReputation (dataset/contracts/transaction_order/29158.sol#213) is not in mixedCase
Parameter MerchantDealsHistory.recordDealRefundReason(uint256,address,uint32,uint32,uint256,string)._merchantReputation (dataset/contracts/transaction_order/29158.sol#214) is not in mixedCase
Parameter MerchantDealsHistory.recordDealRefundReason(uint256,address,uint32,uint32,uint256,string)._dealHash (dataset/contracts/transaction_order/29158.sol#215) is not in mixedCase
Parameter MerchantDealsHistory.recordDealRefundReason(uint256,address,uint32,uint32,uint256,string)._refundReason (dataset/contracts/transaction_order/29158.sol#216) is not in mixedCase
Parameter Destructible.destroyAndSend(address)._recipient (dataset/contracts/transaction_order/29158.sol#436) is not in mixedCase
Parameter MonethaGateway.acceptPayment(address)._merchantWallet (dataset/contracts/transaction_order/29158.sol#520) is not in mixedCase
Parameter MonethaGateway.setMonethaAddress(address,bool)._address (dataset/contracts/transaction_order/29158.sol#543) is not in mixedCase
Parameter MonethaGateway.setMonethaAddress(address,bool)._isMonethaAddress (dataset/contracts/transaction_order/29158.sol#543) is not in mixedCase
Parameter MonethaGateway.setAdmin(address)._admin (dataset/contracts/transaction_order/29158.sol#553) is not in mixedCase
Parameter PaymentProcessor.addOrder(uint256,uint256,address,address,uint256)._orderId (dataset/contracts/transaction_order/29158.sol#657) is not in mixedCase
Parameter PaymentProcessor.addOrder(uint256,uint256,address,address,uint256)._price (dataset/contracts/transaction_order/29158.sol#658) is not in mixedCase
Parameter PaymentProcessor.addOrder(uint256,uint256,address,address,uint256)._paymentAcceptor (dataset/contracts/transaction_order/29158.sol#659) is not in mixedCase
Parameter PaymentProcessor.addOrder(uint256,uint256,address,address,uint256)._originAddress (dataset/contracts/transaction_order/29158.sol#660) is not in mixedCase
Parameter PaymentProcessor.addOrder(uint256,uint256,address,address,uint256)._orderCreationTime (dataset/contracts/transaction_order/29158.sol#661) is not in mixedCase
Parameter PaymentProcessor.securePay(uint256)._orderId (dataset/contracts/transaction_order/29158.sol#681) is not in mixedCase
Parameter PaymentProcessor.cancelOrder(uint256,uint32,uint32,uint256,string)._orderId (dataset/contracts/transaction_order/29158.sol#700) is not in mixedCase
Parameter PaymentProcessor.cancelOrder(uint256,uint32,uint32,uint256,string)._clientReputation (dataset/contracts/transaction_order/29158.sol#701) is not in mixedCase
Parameter PaymentProcessor.cancelOrder(uint256,uint32,uint32,uint256,string)._merchantReputation (dataset/contracts/transaction_order/29158.sol#702) is not in mixedCase
Parameter PaymentProcessor.cancelOrder(uint256,uint32,uint32,uint256,string)._dealHash (dataset/contracts/transaction_order/29158.sol#703) is not in mixedCase
Parameter PaymentProcessor.cancelOrder(uint256,uint32,uint32,uint256,string)._cancelReason (dataset/contracts/transaction_order/29158.sol#704) is not in mixedCase
Parameter PaymentProcessor.refundPayment(uint256,uint32,uint32,uint256,string)._orderId (dataset/contracts/transaction_order/29158.sol#741) is not in mixedCase
Parameter PaymentProcessor.refundPayment(uint256,uint32,uint32,uint256,string)._clientReputation (dataset/contracts/transaction_order/29158.sol#742) is not in mixedCase
Parameter PaymentProcessor.refundPayment(uint256,uint32,uint32,uint256,string)._merchantReputation (dataset/contracts/transaction_order/29158.sol#743) is not in mixedCase
Parameter PaymentProcessor.refundPayment(uint256,uint32,uint32,uint256,string)._dealHash (dataset/contracts/transaction_order/29158.sol#744) is not in mixedCase
Parameter PaymentProcessor.refundPayment(uint256,uint32,uint32,uint256,string)._refundReason (dataset/contracts/transaction_order/29158.sol#745) is not in mixedCase
Parameter PaymentProcessor.withdrawRefund(uint256)._orderId (dataset/contracts/transaction_order/29158.sol#776) is not in mixedCase
Parameter PaymentProcessor.processPayment(uint256,uint32,uint32,uint256)._orderId (dataset/contracts/transaction_order/29158.sol#792) is not in mixedCase
Parameter PaymentProcessor.processPayment(uint256,uint32,uint32,uint256)._clientReputation (dataset/contracts/transaction_order/29158.sol#793) is not in mixedCase
Parameter PaymentProcessor.processPayment(uint256,uint32,uint32,uint256)._merchantReputation (dataset/contracts/transaction_order/29158.sol#794) is not in mixedCase
Parameter PaymentProcessor.processPayment(uint256,uint32,uint32,uint256)._dealHash (dataset/contracts/transaction_order/29158.sol#795) is not in mixedCase
Parameter PaymentProcessor.setMonethaGateway(MonethaGateway)._newGateway (dataset/contracts/transaction_order/29158.sol#816) is not in mixedCase
Parameter PaymentProcessor.setMerchantWallet(MerchantWallet)._newWallet (dataset/contracts/transaction_order/29158.sol#826) is not in mixedCase
Parameter PaymentProcessor.setMerchantDealsHistory(MerchantDealsHistory)._merchantHistory (dataset/contracts/transaction_order/29158.sol#837) is not in mixedCase
Parameter PaymentProcessor.updateDealConditions(uint256,uint32,uint32,bool,uint256)._orderId (dataset/contracts/transaction_order/29158.sol#854) is not in mixedCase
Parameter PaymentProcessor.updateDealConditions(uint256,uint32,uint32,bool,uint256)._clientReputation (dataset/contracts/transaction_order/29158.sol#855) is not in mixedCase
Parameter PaymentProcessor.updateDealConditions(uint256,uint32,uint32,bool,uint256)._merchantReputation (dataset/contracts/transaction_order/29158.sol#856) is not in mixedCase
Parameter PaymentProcessor.updateDealConditions(uint256,uint32,uint32,bool,uint256)._isSuccess (dataset/contracts/transaction_order/29158.sol#857) is not in mixedCase
Parameter PaymentProcessor.updateDealConditions(uint256,uint32,uint32,bool,uint256)._dealHash (dataset/contracts/transaction_order/29158.sol#858) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
Reentrancy in MonethaGateway.acceptPayment(address) (dataset/contracts/transaction_order/29158.sol#520-530):
	External calls:
	- _merchantWallet.transfer(merchantIncome) (dataset/contracts/transaction_order/29158.sol#526)
	- monethaVault.transfer(monethaIncome) (dataset/contracts/transaction_order/29158.sol#527)
	Event emitted after the call(s):
	- PaymentProcessed(_merchantWallet,merchantIncome,monethaIncome) (dataset/contracts/transaction_order/29158.sol#529)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#reentrancy-vulnerabilities-4
INFO:Detectors:
MerchantDealsHistory.VERSION (dataset/contracts/transaction_order/29158.sol#102) is never used in MerchantDealsHistory (dataset/contracts/transaction_order/29158.sol#100-228)
MerchantWallet.VERSION (dataset/contracts/transaction_order/29158.sol#301) is never used in MerchantWallet (dataset/contracts/transaction_order/29158.sol#299-417)
MonethaGateway.VERSION (dataset/contracts/transaction_order/29158.sol#484) is never used in MonethaGateway (dataset/contracts/transaction_order/29158.sol#480-557)
PaymentProcessor.VERSION (dataset/contracts/transaction_order/29158.sol#579) is never used in PaymentProcessor (dataset/contracts/transaction_order/29158.sol#575-874)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#unused-state-variable
INFO:Detectors:
setContactInformation(string) should be declared external:
	- Contactable.setContactInformation(string) (dataset/contracts/transaction_order/29158.sol#88-90)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#public-function-that-could-be-declared-external
INFO:Slither:./dataset/contracts/transaction_order/29158.sol analyzed (11 contracts with 100 detectors), 69 result(s) found

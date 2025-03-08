'solc --version' running
'solc ./dataset/contracts/transaction_order/20891.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
SimpleSaleToken.setBeneficiary(address,uint256,uint256,uint256) (dataset/contracts/transaction_order/20891.sol#219-224) should emit an event for: 
	- tokenPrice = _tokenPrice (dataset/contracts/transaction_order/20891.sol#222) 
	- tokensRemaining = _tokensRemaining (dataset/contracts/transaction_order/20891.sol#223) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-arithmetic
INFO:Detectors:
SimpleSaleToken.setBeneficiary(address,uint256,uint256,uint256)._beneficiary (dataset/contracts/transaction_order/20891.sol#219) lacks a zero-check on :
		- beneficiary = _beneficiary (dataset/contracts/transaction_order/20891.sol#220)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-zero-address-validation
INFO:Detectors:
Reentrancy in SimpleSaleToken.endSale() (dataset/contracts/transaction_order/20891.sol#231-237):
	External calls:
	- ! beneficiary.call.gas(contractSendGas).value(this.balance)() (dataset/contracts/transaction_order/20891.sol#234)
	State variables written after the call(s):
	- tokensRemaining = 0 (dataset/contracts/transaction_order/20891.sol#236)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#reentrancy-vulnerabilities-2
INFO:Detectors:
SimpleSaleToken.endSale() (dataset/contracts/transaction_order/20891.sol#231-237) tries to limit the gas of an external call that controls implicit decoding
	! beneficiary.call.gas(contractSendGas).value(this.balance)() (dataset/contracts/transaction_order/20891.sol#234)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#return-bomb
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
	- ^0.4.18 (dataset/contracts/transaction_order/20891.sol#1)
	- ^0.4.18 (dataset/contracts/transaction_order/20891.sol#14)
	- ^0.4.18 (dataset/contracts/transaction_order/20891.sol#68)
solc-0.4.18 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Low level call in SimpleSaleToken.endSale() (dataset/contracts/transaction_order/20891.sol#231-237):
	- ! beneficiary.call.gas(contractSendGas).value(this.balance)() (dataset/contracts/transaction_order/20891.sol#234)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#low-level-calls
INFO:Detectors:
Parameter SafeMath.safeAdd(uint256,uint256)._x (dataset/contracts/transaction_order/20891.sol#34) is not in mixedCase
Parameter SafeMath.safeAdd(uint256,uint256)._y (dataset/contracts/transaction_order/20891.sol#34) is not in mixedCase
Parameter SafeMath.safeSub(uint256,uint256)._x (dataset/contracts/transaction_order/20891.sol#48) is not in mixedCase
Parameter SafeMath.safeSub(uint256,uint256)._y (dataset/contracts/transaction_order/20891.sol#48) is not in mixedCase
Parameter SafeMath.safeMul(uint256,uint256)._x (dataset/contracts/transaction_order/20891.sol#61) is not in mixedCase
Parameter SafeMath.safeMul(uint256,uint256)._y (dataset/contracts/transaction_order/20891.sol#61) is not in mixedCase
Contract iERC20Token (dataset/contracts/transaction_order/20891.sol#73-84) is not in CapWords
Parameter SimpleSaleToken.transfer(address,uint256)._to (dataset/contracts/transaction_order/20891.sol#146) is not in mixedCase
Parameter SimpleSaleToken.transfer(address,uint256)._value (dataset/contracts/transaction_order/20891.sol#146) is not in mixedCase
Parameter SimpleSaleToken.transferFrom(address,address,uint256)._from (dataset/contracts/transaction_order/20891.sol#159) is not in mixedCase
Parameter SimpleSaleToken.transferFrom(address,address,uint256)._to (dataset/contracts/transaction_order/20891.sol#159) is not in mixedCase
Parameter SimpleSaleToken.transferFrom(address,address,uint256)._value (dataset/contracts/transaction_order/20891.sol#159) is not in mixedCase
Parameter SimpleSaleToken.balanceOf(address)._owner (dataset/contracts/transaction_order/20891.sol#173) is not in mixedCase
Parameter SimpleSaleToken.approve(address,uint256)._spender (dataset/contracts/transaction_order/20891.sol#178) is not in mixedCase
Parameter SimpleSaleToken.approve(address,uint256)._value (dataset/contracts/transaction_order/20891.sol#178) is not in mixedCase
Parameter SimpleSaleToken.allowance(address,address)._owner (dataset/contracts/transaction_order/20891.sol#185) is not in mixedCase
Parameter SimpleSaleToken.allowance(address,address)._spender (dataset/contracts/transaction_order/20891.sol#185) is not in mixedCase
Parameter SimpleSaleToken.setName(string,string)._name (dataset/contracts/transaction_order/20891.sol#212) is not in mixedCase
Parameter SimpleSaleToken.setName(string,string)._symbol (dataset/contracts/transaction_order/20891.sol#212) is not in mixedCase
Parameter SimpleSaleToken.setBeneficiary(address,uint256,uint256,uint256)._beneficiary (dataset/contracts/transaction_order/20891.sol#219) is not in mixedCase
Parameter SimpleSaleToken.setBeneficiary(address,uint256,uint256,uint256)._decimals (dataset/contracts/transaction_order/20891.sol#219) is not in mixedCase
Parameter SimpleSaleToken.setBeneficiary(address,uint256,uint256,uint256)._tokenPrice (dataset/contracts/transaction_order/20891.sol#219) is not in mixedCase
Parameter SimpleSaleToken.setBeneficiary(address,uint256,uint256,uint256)._tokensRemaining (dataset/contracts/transaction_order/20891.sol#219) is not in mixedCase
Parameter SimpleSaleToken.tune(uint256)._contractSendGas (dataset/contracts/transaction_order/20891.sol#239) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
Reentrancy in SimpleSaleToken.fallback() (dataset/contracts/transaction_order/20891.sol#197-210):
	External calls:
	- msg.sender.transfer(_refund) (dataset/contracts/transaction_order/20891.sol#208)
	Event emitted after the call(s):
	- PaymentEvent(msg.sender,msg.value) (dataset/contracts/transaction_order/20891.sol#209)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#reentrancy-vulnerabilities-4
INFO:Detectors:
SimpleSaleToken.slitherConstructorVariables() (dataset/contracts/transaction_order/20891.sol#86-250) uses literals with too many digits:
	- contractSendGas = 100000 (dataset/contracts/transaction_order/20891.sol#99)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#too-many-digits
INFO:Detectors:
setName(string,string) should be declared external:
	- SimpleSaleToken.setName(string,string) (dataset/contracts/transaction_order/20891.sol#212-215)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#public-function-that-could-be-declared-external
INFO:Slither:./dataset/contracts/transaction_order/20891.sol analyzed (3 contracts with 100 detectors), 34 result(s) found

'solc --version' running
'solc ./dataset/contracts/transaction_order/27751.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
ZTRTokenSale.suicide() (dataset/contracts/transaction_order/27751.sol#491-494) allows anyone to destruct the contract
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#suicidal
INFO:Detectors:
ZTRToken (dataset/contracts/transaction_order/27751.sol#377-395) has incorrect ERC20 function interface:StandardToken.transferFrom(address,address,uint256) (dataset/contracts/transaction_order/27751.sol#141-151)
ZTRToken (dataset/contracts/transaction_order/27751.sol#377-395) has incorrect ERC20 function interface:StandardToken.approve(address,uint256) (dataset/contracts/transaction_order/27751.sol#158-168)
ZTRToken (dataset/contracts/transaction_order/27751.sol#377-395) has incorrect ERC20 function interface:ERC20.transferFrom(address,address,uint256) (dataset/contracts/transaction_order/27751.sol#117)
ZTRToken (dataset/contracts/transaction_order/27751.sol#377-395) has incorrect ERC20 function interface:ERC20.approve(address,uint256) (dataset/contracts/transaction_order/27751.sol#118)
ZTRToken (dataset/contracts/transaction_order/27751.sol#377-395) has incorrect ERC20 function interface:ERC20Basic.transfer(address,uint256) (dataset/contracts/transaction_order/27751.sol#64)
ZTRToken (dataset/contracts/transaction_order/27751.sol#377-395) has incorrect ERC20 function interface:BasicToken.transfer(address,uint256) (dataset/contracts/transaction_order/27751.sol#93-97)
ZTRToken (dataset/contracts/transaction_order/27751.sol#377-395) has incorrect ERC20 function interface:PausableToken.transfer(address,uint256) (dataset/contracts/transaction_order/27751.sol#325-327)
ZTRToken (dataset/contracts/transaction_order/27751.sol#377-395) has incorrect ERC20 function interface:PausableToken.transferFrom(address,address,uint256) (dataset/contracts/transaction_order/27751.sol#329-331)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-erc20-interface
INFO:Detectors:
MintableToken.totalSupply (dataset/contracts/transaction_order/27751.sol#237) shadows:
	- ERC20Basic.totalSupply (dataset/contracts/transaction_order/27751.sol#62)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#state-variable-shadowing-from-abstract-contracts
INFO:Detectors:
ZTRTokenSale.fallback() (dataset/contracts/transaction_order/27751.sol#433-454) ignores return value by remaining.sub(purchase) (dataset/contracts/transaction_order/27751.sol#445)
ZTRTokenSale.fallback() (dataset/contracts/transaction_order/27751.sol#433-454) ignores return value by remaining.sub(purchase) (dataset/contracts/transaction_order/27751.sol#452)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#unused-return
INFO:Detectors:
SafeMath.assert(bool) (dataset/contracts/transaction_order/27751.sol#48-52) (function) shadows built-in symbol"
ZTRTokenSale.suicide() (dataset/contracts/transaction_order/27751.sol#491-494) (function) shadows built-in symbol"
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#builtin-symbol-shadowing
INFO:Detectors:
Ownable.transferOwnership(address) (dataset/contracts/transaction_order/27751.sol#216-220) should emit an event for: 
	- owner = newOwner (dataset/contracts/transaction_order/27751.sol#218) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-access-control
INFO:Detectors:
ZTRTokenSale.setDeadline(uint256) (dataset/contracts/transaction_order/27751.sol#481-484) should emit an event for: 
	- deadline = ti (dataset/contracts/transaction_order/27751.sol#483) 
ZTRTokenSale.setStart(uint256) (dataset/contracts/transaction_order/27751.sol#486-489) should emit an event for: 
	- start = ti (dataset/contracts/transaction_order/27751.sol#488) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-arithmetic
INFO:Detectors:
TokenTimelock.TokenTimelock(ERC20Basic,address,uint256)._beneficiary (dataset/contracts/transaction_order/27751.sol#351) lacks a zero-check on :
		- beneficiary = _beneficiary (dataset/contracts/transaction_order/27751.sol#354)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-zero-address-validation
INFO:Detectors:
Modifier ZTRTokenSale.admin() (dataset/contracts/transaction_order/27751.sol#415) does not always execute _; or revert
Modifier ZTRTokenSale.afterUnlock() (dataset/contracts/transaction_order/27751.sol#416) does not always execute _; or revert
Modifier ZTRTokenSale.afterDeadline() (dataset/contracts/transaction_order/27751.sol#417) does not always execute _; or revert
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-modifier
INFO:Detectors:
TokenTimelock.TokenTimelock(ERC20Basic,address,uint256) (dataset/contracts/transaction_order/27751.sol#351-356) uses timestamp for comparisons
	Dangerous comparisons:
	- require(bool)(_releaseTime > now) (dataset/contracts/transaction_order/27751.sol#352)
TokenTimelock.claim() (dataset/contracts/transaction_order/27751.sol#361-369) uses timestamp for comparisons
	Dangerous comparisons:
	- require(bool)(now >= releaseTime) (dataset/contracts/transaction_order/27751.sol#363)
ZTRTokenSale.fallback() (dataset/contracts/transaction_order/27751.sol#433-454) uses timestamp for comparisons
	Dangerous comparisons:
	- require(bool)(now > start) (dataset/contracts/transaction_order/27751.sol#435)
	- require(bool)(now < deadline) (dataset/contracts/transaction_order/27751.sol#436)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#block-timestamp
INFO:Detectors:
SafeMath.add(uint256,uint256) (dataset/contracts/transaction_order/27751.sol#26-30) is never used and should be removed
SafeMath.div(uint256,uint256) (dataset/contracts/transaction_order/27751.sol#14-19) is never used and should be removed
SafeMath.max256(uint256,uint256) (dataset/contracts/transaction_order/27751.sol#40-42) is never used and should be removed
SafeMath.max64(uint64,uint64) (dataset/contracts/transaction_order/27751.sol#32-34) is never used and should be removed
SafeMath.min256(uint256,uint256) (dataset/contracts/transaction_order/27751.sol#44-46) is never used and should be removed
SafeMath.min64(uint64,uint64) (dataset/contracts/transaction_order/27751.sol#36-38) is never used and should be removed
SafeMath.mul(uint256,uint256) (dataset/contracts/transaction_order/27751.sol#8-12) is never used and should be removed
SafeMath.sub(uint256,uint256) (dataset/contracts/transaction_order/27751.sol#21-24) is never used and should be removed
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#dead-code
INFO:Detectors:
Version constraint ^0.4.11 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
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
	- ECRecoverMalformedInput
	- SkipEmptyStringLiteral.
It is used by:
	- ^0.4.11 (dataset/contracts/transaction_order/27751.sol#1)
solc-0.4.11 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Parameter BasicToken.transfer(address,uint256)._to (dataset/contracts/transaction_order/27751.sol#93) is not in mixedCase
Parameter BasicToken.transfer(address,uint256)._value (dataset/contracts/transaction_order/27751.sol#93) is not in mixedCase
Parameter BasicToken.balanceOf(address)._owner (dataset/contracts/transaction_order/27751.sol#104) is not in mixedCase
Parameter StandardToken.transferFrom(address,address,uint256)._from (dataset/contracts/transaction_order/27751.sol#141) is not in mixedCase
Parameter StandardToken.transferFrom(address,address,uint256)._to (dataset/contracts/transaction_order/27751.sol#141) is not in mixedCase
Parameter StandardToken.transferFrom(address,address,uint256)._value (dataset/contracts/transaction_order/27751.sol#141) is not in mixedCase
Parameter StandardToken.approve(address,uint256)._spender (dataset/contracts/transaction_order/27751.sol#158) is not in mixedCase
Parameter StandardToken.approve(address,uint256)._value (dataset/contracts/transaction_order/27751.sol#158) is not in mixedCase
Parameter StandardToken.allowance(address,address)._owner (dataset/contracts/transaction_order/27751.sol#176) is not in mixedCase
Parameter StandardToken.allowance(address,address)._spender (dataset/contracts/transaction_order/27751.sol#176) is not in mixedCase
Parameter MintableToken.mint(address,uint256)._to (dataset/contracts/transaction_order/27751.sol#251) is not in mixedCase
Parameter MintableToken.mint(address,uint256)._amount (dataset/contracts/transaction_order/27751.sol#251) is not in mixedCase
Parameter PausableToken.transfer(address,uint256)._to (dataset/contracts/transaction_order/27751.sol#325) is not in mixedCase
Parameter PausableToken.transfer(address,uint256)._value (dataset/contracts/transaction_order/27751.sol#325) is not in mixedCase
Parameter PausableToken.transferFrom(address,address,uint256)._from (dataset/contracts/transaction_order/27751.sol#329) is not in mixedCase
Parameter PausableToken.transferFrom(address,address,uint256)._to (dataset/contracts/transaction_order/27751.sol#329) is not in mixedCase
Parameter PausableToken.transferFrom(address,address,uint256)._value (dataset/contracts/transaction_order/27751.sol#329) is not in mixedCase
Parameter ZTRToken.mintTimelocked(address,uint256,uint256)._to (dataset/contracts/transaction_order/27751.sol#387) is not in mixedCase
Parameter ZTRToken.mintTimelocked(address,uint256,uint256)._amount (dataset/contracts/transaction_order/27751.sol#387) is not in mixedCase
Parameter ZTRToken.mintTimelocked(address,uint256,uint256)._releaseTime (dataset/contracts/transaction_order/27751.sol#387) is not in mixedCase
Variable ZTRTokenSale.ZTRTokenContract (dataset/contracts/transaction_order/27751.sol#403) is not in mixedCase
Variable ZTRTokenSale.ZTR_ETH_initial_price (dataset/contracts/transaction_order/27751.sol#411) is not in mixedCase
Variable ZTRTokenSale.ZTR_ETH_extra_price (dataset/contracts/transaction_order/27751.sol#412) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
ZTRTokenSale.ZTRTokenSale() (dataset/contracts/transaction_order/27751.sol#419-432) uses literals with too many digits:
	- remaining = 800000000000000000000000000 (dataset/contracts/transaction_order/27751.sol#431)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#too-many-digits
INFO:Detectors:
ERC20Basic.totalSupply (dataset/contracts/transaction_order/27751.sol#62) should be constant 
ZTRToken.decimals (dataset/contracts/transaction_order/27751.sol#382) should be constant 
ZTRToken.name (dataset/contracts/transaction_order/27751.sol#380) should be constant 
ZTRToken.symbol (dataset/contracts/transaction_order/27751.sol#381) should be constant 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#state-variables-that-could-be-declared-constant
INFO:Slither:./dataset/contracts/transaction_order/27751.sol analyzed (12 contracts with 100 detectors), 62 result(s) found

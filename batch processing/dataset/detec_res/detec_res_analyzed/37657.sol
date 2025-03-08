'solc --version' running
'solc ./dataset/contracts/transaction_order/37657.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
LudumToken.LudumToken(address,address,address,address)._ethDepositAddress (dataset/contracts/transaction_order/37657.sol#151) lacks a zero-check on :
		- ethDepositAddress = _ethDepositAddress (dataset/contracts/transaction_order/37657.sol#158)
LudumToken.LudumToken(address,address,address,address)._teamFundAddress (dataset/contracts/transaction_order/37657.sol#152) lacks a zero-check on :
		- teamFundAddress = _teamFundAddress (dataset/contracts/transaction_order/37657.sol#159)
LudumToken.LudumToken(address,address,address,address)._operationsFundAddress (dataset/contracts/transaction_order/37657.sol#153) lacks a zero-check on :
		- operationsFundAddress = _operationsFundAddress (dataset/contracts/transaction_order/37657.sol#160)
LudumToken.LudumToken(address,address,address,address)._marketingFundAddress (dataset/contracts/transaction_order/37657.sol#154) lacks a zero-check on :
		- marketingFundAddress = _marketingFundAddress (dataset/contracts/transaction_order/37657.sol#161)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-zero-address-validation
INFO:Detectors:
LudumToken.ludumTokensPerEther() (dataset/contracts/transaction_order/37657.sol#132-143) uses timestamp for comparisons
	Dangerous comparisons:
	- now < crowdsaleStart || now > crowdsaleEnd (dataset/contracts/transaction_order/37657.sol#134)
	- now < crowdsaleStart + 60 (dataset/contracts/transaction_order/37657.sol#137)
	- now < crowdsaleStart + 420 (dataset/contracts/transaction_order/37657.sol#138)
	- now < crowdsaleStart + 840 (dataset/contracts/transaction_order/37657.sol#139)
LudumToken.makeTokens() (dataset/contracts/transaction_order/37657.sol#165-193) uses timestamp for comparisons
	Dangerous comparisons:
	- require(bool)(now >= crowdsaleStart) (dataset/contracts/transaction_order/37657.sol#167)
	- require(bool)(now < crowdsaleEnd) (dataset/contracts/transaction_order/37657.sol#168)
LudumToken.finalizeCrowdsale() (dataset/contracts/transaction_order/37657.sol#201-209) uses timestamp for comparisons
	Dangerous comparisons:
	- require(bool)(now >= crowdsaleEnd || totalSupply == maximumSupply) (dataset/contracts/transaction_order/37657.sol#204)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#block-timestamp
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
	- ^0.4.13 (dataset/contracts/transaction_order/37657.sol#1)
solc-0.4.13 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Parameter StandardToken.transfer(address,uint256)._to (dataset/contracts/transaction_order/37657.sol#60) is not in mixedCase
Parameter StandardToken.transfer(address,uint256)._value (dataset/contracts/transaction_order/37657.sol#60) is not in mixedCase
Parameter StandardToken.transferFrom(address,address,uint256)._from (dataset/contracts/transaction_order/37657.sol#72) is not in mixedCase
Parameter StandardToken.transferFrom(address,address,uint256)._to (dataset/contracts/transaction_order/37657.sol#72) is not in mixedCase
Parameter StandardToken.transferFrom(address,address,uint256)._value (dataset/contracts/transaction_order/37657.sol#72) is not in mixedCase
Parameter StandardToken.balanceOf(address)._owner (dataset/contracts/transaction_order/37657.sol#86) is not in mixedCase
Parameter StandardToken.approve(address,uint256)._spender (dataset/contracts/transaction_order/37657.sol#90) is not in mixedCase
Parameter StandardToken.approve(address,uint256)._value (dataset/contracts/transaction_order/37657.sol#90) is not in mixedCase
Parameter StandardToken.allowance(address,address)._owner (dataset/contracts/transaction_order/37657.sol#98) is not in mixedCase
Parameter StandardToken.allowance(address,address)._spender (dataset/contracts/transaction_order/37657.sol#98) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
LudumToken.slitherConstructorConstantVariables() (dataset/contracts/transaction_order/37657.sol#109-212) uses literals with too many digits:
	- maximumSupply = 100000000000000000000000000 (dataset/contracts/transaction_order/37657.sol#116)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#too-many-digits
INFO:Slither:./dataset/contracts/transaction_order/37657.sol analyzed (4 contracts with 100 detectors), 20 result(s) found

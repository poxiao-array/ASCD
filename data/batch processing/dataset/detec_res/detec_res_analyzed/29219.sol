'solc --version' running
'solc ./dataset/contracts/transaction_order/29219.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
PersonalCrowdsaleProxy.withdrawEther() (dataset/contracts/transaction_order/29219.sol#576-578) sends eth to arbitrary user
	Dangerous calls:
	- beneficiary.transfer(this.balance) (dataset/contracts/transaction_order/29219.sol#577)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#functions-that-send-ether-to-arbitrary-destinations
INFO:Detectors:
PersonalCrowdsaleProxy.withdrawTokens() (dataset/contracts/transaction_order/29219.sol#558-561) ignores return value by targetToken.transfer(beneficiary,balance) (dataset/contracts/transaction_order/29219.sol#560)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#unchecked-transfer
INFO:Detectors:
PersonalCrowdsaleProxy.targetCrowdsale (dataset/contracts/transaction_order/29219.sol#481) is never initialized. It is used in:
	- PersonalCrowdsaleProxy.invest() (dataset/contracts/transaction_order/29219.sol#533-535)
	- PersonalCrowdsaleProxy.refund() (dataset/contracts/transaction_order/29219.sol#541-543)
	- PersonalCrowdsaleProxy.updateTokenBalance() (dataset/contracts/transaction_order/29219.sol#550-552)
	- PersonalCrowdsaleProxy.updateEtherBalance() (dataset/contracts/transaction_order/29219.sol#568-570)
PersonalCrowdsaleProxy.targetToken (dataset/contracts/transaction_order/29219.sol#482) is never initialized. It is used in:
	- PersonalCrowdsaleProxy.withdrawTokens() (dataset/contracts/transaction_order/29219.sol#558-561)
PersonalCrowdsaleProxy.passphraseHash (dataset/contracts/transaction_order/29219.sol#486) is never initialized. It is used in:
	- PersonalCrowdsaleProxy.setBeneficiary(address,bytes32) (dataset/contracts/transaction_order/29219.sol#516-519)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#uninitialized-state-variables
INFO:Detectors:
Contract locking ether found:
	Contract PersonalCrowdsaleProxyDispatcher (dataset/contracts/transaction_order/29219.sol#294-319) has payable functions:
	 - SimpleDispatcher.fallback() (dataset/contracts/transaction_order/29219.sol#277-284)
	But does not have a function to withdraw the ether
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#contracts-that-lock-ether
INFO:Detectors:
CrowdsaleProxy.fallback() (dataset/contracts/transaction_order/29219.sol#391-393) ignores return value by target.contributeFor.value(msg.value)(msg.sender) (dataset/contracts/transaction_order/29219.sol#392)
CrowdsaleProxy.contribute() (dataset/contracts/transaction_order/29219.sol#401-403) ignores return value by target.contributeFor.value(msg.value)(msg.sender) (dataset/contracts/transaction_order/29219.sol#402)
CrowdsaleProxy.contributeFor(address) (dataset/contracts/transaction_order/29219.sol#412-414) ignores return value by target.contributeFor.value(msg.value)(_beneficiary) (dataset/contracts/transaction_order/29219.sol#413)
PersonalCrowdsaleProxy.invest() (dataset/contracts/transaction_order/29219.sol#533-535) ignores return value by targetCrowdsale.contribute.value(this.balance)() (dataset/contracts/transaction_order/29219.sol#534)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#unused-return
INFO:Detectors:
SimpleDispatcher.SimpleDispatcher(address)._target (dataset/contracts/transaction_order/29219.sol#269) lacks a zero-check on :
		- target = _target (dataset/contracts/transaction_order/29219.sol#270)
PersonalCrowdsaleProxyDispatcher.PersonalCrowdsaleProxyDispatcher(address,address,address,bytes32)._targetCrowdsale (dataset/contracts/transaction_order/29219.sol#313) lacks a zero-check on :
		- targetCrowdsale = _targetCrowdsale (dataset/contracts/transaction_order/29219.sol#315)
PersonalCrowdsaleProxyDispatcher.PersonalCrowdsaleProxyDispatcher(address,address,address,bytes32)._targetToken (dataset/contracts/transaction_order/29219.sol#313) lacks a zero-check on :
		- targetToken = _targetToken (dataset/contracts/transaction_order/29219.sol#316)
CrowdsaleProxy.CrowdsaleProxy(address,address)._owner (dataset/contracts/transaction_order/29219.sol#378) lacks a zero-check on :
		- owner = _owner (dataset/contracts/transaction_order/29219.sol#380)
PersonalCrowdsaleProxy.setBeneficiary(address,bytes32)._beneficiary (dataset/contracts/transaction_order/29219.sol#516) lacks a zero-check on :
		- beneficiary = _beneficiary (dataset/contracts/transaction_order/29219.sol#518)
CrowdsaleProxyFactory.CrowdsaleProxyFactory(address,address)._targetCrowdsale (dataset/contracts/transaction_order/29219.sol#608) lacks a zero-check on :
		- targetCrowdsale = _targetCrowdsale (dataset/contracts/transaction_order/29219.sol#609)
CrowdsaleProxyFactory.CrowdsaleProxyFactory(address,address)._targetToken (dataset/contracts/transaction_order/29219.sol#608) lacks a zero-check on :
		- targetToken = _targetToken (dataset/contracts/transaction_order/29219.sol#610)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-zero-address-validation
INFO:Detectors:
Reentrancy in CrowdsaleProxyFactory.createPersonalDepositAddressFor(address) (dataset/contracts/transaction_order/29219.sol#670-676):
	External calls:
	- proxy.setBeneficiary(_beneficiary,bytes32(_beneficiary)) (dataset/contracts/transaction_order/29219.sol#673)
	Event emitted after the call(s):
	- ProxyCreated(proxy,_beneficiary) (dataset/contracts/transaction_order/29219.sol#674)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#reentrancy-vulnerabilities-3
INFO:Detectors:
SimpleDispatcher.fallback() (dataset/contracts/transaction_order/29219.sol#277-284) uses assembly
	- INLINE ASM (dataset/contracts/transaction_order/29219.sol#279-284)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#assembly-usage
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
	- ^0.4.18 (dataset/contracts/transaction_order/29219.sol#1)
solc-0.4.18 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Parameter CrowdsaleProxy.contributeFor(address)._beneficiary (dataset/contracts/transaction_order/29219.sol#412) is not in mixedCase
Parameter PersonalCrowdsaleProxy.setBeneficiary(address,bytes32)._beneficiary (dataset/contracts/transaction_order/29219.sol#516) is not in mixedCase
Parameter PersonalCrowdsaleProxy.setBeneficiary(address,bytes32)._passphrase (dataset/contracts/transaction_order/29219.sol#516) is not in mixedCase
Modifier PersonalCrowdsaleProxy.when_beneficiary_is_known() (dataset/contracts/transaction_order/29219.sol#493-496) is not in mixedCase
Modifier PersonalCrowdsaleProxy.when_beneficiary_is_unknown() (dataset/contracts/transaction_order/29219.sol#503-506) is not in mixedCase
Parameter CrowdsaleProxyFactory.createProxyAddressFor(address)._beneficiary (dataset/contracts/transaction_order/29219.sol#635) is not in mixedCase
Parameter CrowdsaleProxyFactory.createPersonalDepositAddress(bytes32)._passphraseHash (dataset/contracts/transaction_order/29219.sol#652) is not in mixedCase
Parameter CrowdsaleProxyFactory.createPersonalDepositAddressFor(address)._beneficiary (dataset/contracts/transaction_order/29219.sol#670) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
Dispatchable.target (dataset/contracts/transaction_order/29219.sol#245) should be constant 
PersonalCrowdsaleProxy.passphraseHash (dataset/contracts/transaction_order/29219.sol#486) should be constant 
PersonalCrowdsaleProxy.targetCrowdsale (dataset/contracts/transaction_order/29219.sol#481) should be constant 
PersonalCrowdsaleProxy.targetToken (dataset/contracts/transaction_order/29219.sol#482) should be constant 
PersonalCrowdsaleProxyDispatcher.beneficiary (dataset/contracts/transaction_order/29219.sol#301) should be constant 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#state-variables-that-could-be-declared-constant
INFO:Slither:./dataset/contracts/transaction_order/29219.sol analyzed (10 contracts with 100 detectors), 34 result(s) found

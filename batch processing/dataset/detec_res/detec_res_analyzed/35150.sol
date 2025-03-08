'solc --version' running
'solc ./dataset/contracts/transaction_order/35150.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
Compilation warnings/errors on ./dataset/contracts/transaction_order/35150.sol:
./dataset/contracts/transaction_order/35150.sol:15:5: Warning: No visibility specified. Defaulting to "public".
    function transferOwnership(address to) onlyOwner { TransferOwnership(Owner, to); Owner = to; }
    ^--------------------------------------------------------------------------------------------^
./dataset/contracts/transaction_order/35150.sol:22:5: Warning: No visibility specified. Defaulting to "public".
    function Vault() open payable {
    ^
Spanning multiple lines.
./dataset/contracts/transaction_order/35150.sol:28:5: Warning: No visibility specified. Defaulting to "public".
    function SetReleaseDate(uint NewDate) {
    ^
Spanning multiple lines.

INFO:Detectors:
ERC20 (dataset/contracts/transaction_order/35150.sol#3-6) has incorrect ERC20 function interface:ERC20.transfer(address,uint256) (dataset/contracts/transaction_order/35150.sol#5)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-erc20-interface
INFO:Detectors:
DepositVault.transferOwnership(address).to (dataset/contracts/transaction_order/35150.sol#15) lacks a zero-check on :
		- Owner = to (dataset/contracts/transaction_order/35150.sol#15)
DepositVault.withdrawTo(address,uint256).to (dataset/contracts/transaction_order/35150.sol#43) lacks a zero-check on :
		- to.transfer(amount) (dataset/contracts/transaction_order/35150.sol#48)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-zero-address-validation
INFO:Detectors:
Modifier DepositVault.onlyOwner() (dataset/contracts/transaction_order/35150.sol#64) does not always execute _; or revert
Modifier DepositVault.open() (dataset/contracts/transaction_order/35150.sol#65) does not always execute _; or revert
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-modifier
INFO:Detectors:
DepositVault.WithdrawalEnabled() (dataset/contracts/transaction_order/35150.sol#62) uses timestamp for comparisons
	Dangerous comparisons:
	- Date > 0 && Date <= now (dataset/contracts/transaction_order/35150.sol#62)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#block-timestamp
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
	- ^0.4.18 (dataset/contracts/transaction_order/35150.sol#1)
solc-0.4.18 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Function DepositVault.Vault() (dataset/contracts/transaction_order/35150.sol#22-26) is not in mixedCase
Function DepositVault.SetReleaseDate(uint256) (dataset/contracts/transaction_order/35150.sol#28-30) is not in mixedCase
Parameter DepositVault.SetReleaseDate(uint256).NewDate (dataset/contracts/transaction_order/35150.sol#28) is not in mixedCase
Function DepositVault.MinimumDeposit() (dataset/contracts/transaction_order/35150.sol#60) is not in mixedCase
Function DepositVault.ReleaseDate() (dataset/contracts/transaction_order/35150.sol#61) is not in mixedCase
Function DepositVault.WithdrawalEnabled() (dataset/contracts/transaction_order/35150.sol#62) is not in mixedCase
Variable DepositVault.Owner (dataset/contracts/transaction_order/35150.sol#14) is not in mixedCase
Variable DepositVault.Deposits (dataset/contracts/transaction_order/35150.sol#17) is not in mixedCase
Variable DepositVault.Locked (dataset/contracts/transaction_order/35150.sol#19) is not in mixedCase
Variable DepositVault.Date (dataset/contracts/transaction_order/35150.sol#20) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Slither:./dataset/contracts/transaction_order/35150.sol analyzed (2 contracts with 100 detectors), 18 result(s) found

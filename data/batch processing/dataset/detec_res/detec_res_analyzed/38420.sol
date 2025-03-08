'solc --version' running
'solc ./dataset/contracts/transaction_order/38420.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
Compilation warnings/errors on ./dataset/contracts/transaction_order/38420.sol:
./dataset/contracts/transaction_order/38420.sol:47:34: Warning: "throw" is deprecated in favour of "revert()", "require()" and "assert()".
    if (msg.sender != developer) throw;
                                 ^---^
./dataset/contracts/transaction_order/38420.sol:49:22: Warning: "throw" is deprecated in favour of "revert()", "require()" and "assert()".
    if (sale != 0x0) throw;
                     ^---^
./dataset/contracts/transaction_order/38420.sol:58:69: Warning: "throw" is deprecated in favour of "revert()", "require()" and "assert()".
    if (msg.sender != developer && sha3(password) != password_hash) throw;
                                                                    ^---^
./dataset/contracts/transaction_order/38420.sol:87:45: Warning: "throw" is deprecated in favour of "revert()", "require()" and "assert()".
        if(!token.transfer(developer, fee)) throw;
                                            ^---^
./dataset/contracts/transaction_order/38420.sol:90:59: Warning: "throw" is deprecated in favour of "revert()", "require()" and "assert()".
      if(!token.transfer(user, tokens_to_withdraw - fee)) throw;
                                                          ^---^
./dataset/contracts/transaction_order/38420.sol:97:56: Warning: "throw" is deprecated in favour of "revert()", "require()" and "assert()".
    if (!bought_tokens || now < time_bought + 1 hours) throw;
                                                       ^---^
./dataset/contracts/transaction_order/38420.sol:105:34: Warning: "throw" is deprecated in favour of "revert()", "require()" and "assert()".
    if (msg.sender != developer) throw;
                                 ^---^
./dataset/contracts/transaction_order/38420.sol:107:22: Warning: "throw" is deprecated in favour of "revert()", "require()" and "assert()".
    if (kill_switch) throw;
                     ^---^
./dataset/contracts/transaction_order/38420.sol:109:24: Warning: "throw" is deprecated in favour of "revert()", "require()" and "assert()".
    if (bought_tokens) throw;
                       ^---^
./dataset/contracts/transaction_order/38420.sol:123:22: Warning: "throw" is deprecated in favour of "revert()", "require()" and "assert()".
    if (sale == 0x0) throw;
                     ^---^
./dataset/contracts/transaction_order/38420.sol:131:51: Warning: "throw" is deprecated in favour of "revert()", "require()" and "assert()".
    if(!sale.call.value(this.balance - bounty)()) throw;
                                                  ^---^
./dataset/contracts/transaction_order/38420.sol:146:24: Warning: "throw" is deprecated in favour of "revert()", "require()" and "assert()".
      if (kill_switch) throw;
                       ^---^
./dataset/contracts/transaction_order/38420.sol:148:26: Warning: "throw" is deprecated in favour of "revert()", "require()" and "assert()".
      if (bought_tokens) throw;
                         ^---^

INFO:Detectors:
CoinDashBuyer.add_to_bounty() (dataset/contracts/transaction_order/38420.sol#103-112) should emit an event for: 
	- bounty += msg.value (dataset/contracts/transaction_order/38420.sol#111) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-arithmetic
INFO:Detectors:
CoinDashBuyer.set_addresses(address,address)._sale (dataset/contracts/transaction_order/38420.sol#45) lacks a zero-check on :
		- sale = _sale (dataset/contracts/transaction_order/38420.sol#51)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-zero-address-validation
INFO:Detectors:
CoinDashBuyer.auto_withdraw(address) (dataset/contracts/transaction_order/38420.sol#95-100) uses timestamp for comparisons
	Dangerous comparisons:
	- ! bought_tokens || now < time_bought + 3600 (dataset/contracts/transaction_order/38420.sol#97)
CoinDashBuyer.claim_bounty() (dataset/contracts/transaction_order/38420.sol#115-134) uses timestamp for comparisons
	Dangerous comparisons:
	- now < earliest_buy_time (dataset/contracts/transaction_order/38420.sol#121)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#block-timestamp
INFO:Detectors:
Deprecated standard detected THROW (dataset/contracts/transaction_order/38420.sol#47):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/38420.sol#49):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected msg.sender != developer && sha3()(password) != password_hash (dataset/contracts/transaction_order/38420.sol#58):
	- Usage of "sha3()" should be replaced with "keccak256()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/38420.sol#58):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/38420.sol#87):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/38420.sol#90):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/38420.sol#97):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/38420.sol#105):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/38420.sol#107):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/38420.sol#109):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/38420.sol#123):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/38420.sol#131):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/38420.sol#146):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/38420.sol#148):
	- Usage of "throw" should be replaced with "revert()"
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#deprecated-standards
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
	- ^0.4.13 (dataset/contracts/transaction_order/38420.sol#1)
solc-0.4.13 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Low level call in CoinDashBuyer.claim_bounty() (dataset/contracts/transaction_order/38420.sol#115-134):
	- ! sale.call.value(this.balance - bounty)() (dataset/contracts/transaction_order/38420.sol#131)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#low-level-calls
INFO:Detectors:
Function CoinDashBuyer.set_addresses(address,address) (dataset/contracts/transaction_order/38420.sol#45-53) is not in mixedCase
Parameter CoinDashBuyer.set_addresses(address,address)._sale (dataset/contracts/transaction_order/38420.sol#45) is not in mixedCase
Parameter CoinDashBuyer.set_addresses(address,address)._token (dataset/contracts/transaction_order/38420.sol#45) is not in mixedCase
Function CoinDashBuyer.activate_kill_switch(string) (dataset/contracts/transaction_order/38420.sol#56-61) is not in mixedCase
Parameter CoinDashBuyer.withdraw(address,bool).has_fee (dataset/contracts/transaction_order/38420.sol#65) is not in mixedCase
Function CoinDashBuyer.auto_withdraw(address) (dataset/contracts/transaction_order/38420.sol#95-100) is not in mixedCase
Function CoinDashBuyer.add_to_bounty() (dataset/contracts/transaction_order/38420.sol#103-112) is not in mixedCase
Function CoinDashBuyer.claim_bounty() (dataset/contracts/transaction_order/38420.sol#115-134) is not in mixedCase
Function CoinDashBuyer.default_helper() (dataset/contracts/transaction_order/38420.sol#137-152) is not in mixedCase
Variable CoinDashBuyer.bought_tokens (dataset/contracts/transaction_order/38420.sol#25) is not in mixedCase
Variable CoinDashBuyer.time_bought (dataset/contracts/transaction_order/38420.sol#27) is not in mixedCase
Variable CoinDashBuyer.kill_switch (dataset/contracts/transaction_order/38420.sol#29) is not in mixedCase
Variable CoinDashBuyer.tokens_per_eth (dataset/contracts/transaction_order/38420.sol#32) is not in mixedCase
Variable CoinDashBuyer.password_hash (dataset/contracts/transaction_order/38420.sol#34) is not in mixedCase
Variable CoinDashBuyer.earliest_buy_time (dataset/contracts/transaction_order/38420.sol#36) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
CoinDashBuyer.developer (dataset/contracts/transaction_order/38420.sol#38) should be constant 
CoinDashBuyer.earliest_buy_time (dataset/contracts/transaction_order/38420.sol#36) should be constant 
CoinDashBuyer.password_hash (dataset/contracts/transaction_order/38420.sol#34) should be constant 
CoinDashBuyer.tokens_per_eth (dataset/contracts/transaction_order/38420.sol#32) should be constant 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#state-variables-that-could-be-declared-constant
INFO:Detectors:
activate_kill_switch(string) should be declared external:
	- CoinDashBuyer.activate_kill_switch(string) (dataset/contracts/transaction_order/38420.sol#56-61)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#public-function-that-could-be-declared-external
INFO:Slither:./dataset/contracts/transaction_order/38420.sol analyzed (2 contracts with 100 detectors), 41 result(s) found

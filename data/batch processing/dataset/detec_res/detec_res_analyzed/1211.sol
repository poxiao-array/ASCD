'solc --version' running
'solc ./dataset/contracts/transaction_order/1211.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
Compilation warnings/errors on ./dataset/contracts/transaction_order/1211.sol:
./dataset/contracts/transaction_order/1211.sol:36:23: Warning: This looks like an address but has an invalid checksum. If this is not used as an address, please prepend '00'. Correct checksummed address: '0x6b5d2BA1691E30376A394C13e38F48E25634724F'. For more information please see https://solidity.readthedocs.io/en/develop/types.html#address-literals
        address aff = 0x6b5d2ba1691e30376a394c13e38f48e25634724f;
                      ^----------------------------------------^
./dataset/contracts/transaction_order/1211.sol:37:24: Warning: This looks like an address but has an invalid checksum. If this is not used as an address, please prepend '00'. Correct checksummed address: '0x7CE07Aa2Fc356FA52F622c1F4df1e8EAAd7FebF0'. For more information please see https://solidity.readthedocs.io/en/develop/types.html#address-literals
        address aff2 = 0x7ce07aa2fc356fa52f622c1f4df1e8eaad7febf0;
                       ^----------------------------------------^
./dataset/contracts/transaction_order/1211.sol:38:24: Warning: Using contract member "balance" inherited from the address type is deprecated. Convert the contract to "address" type to access the member, for example use "address(contract).balance" instead.
        uint256 _one = this.balance/2;
                       ^----------^
./dataset/contracts/transaction_order/1211.sol:23:21: Warning: Unused function parameter. Remove or comment out the variable name to silence this warning.
    function buyXid(uint256 _affCode, uint256 _team) public payable {}
                    ^--------------^
./dataset/contracts/transaction_order/1211.sol:23:39: Warning: Unused function parameter. Remove or comment out the variable name to silence this warning.
    function buyXid(uint256 _affCode, uint256 _team) public payable {}
                                      ^-----------^
./dataset/contracts/transaction_order/1211.sol:24:23: Warning: Unused function parameter. Remove or comment out the variable name to silence this warning.
    function buyXaddr(address _affCode, uint256 _team) public payable {}
                      ^--------------^
./dataset/contracts/transaction_order/1211.sol:24:41: Warning: Unused function parameter. Remove or comment out the variable name to silence this warning.
    function buyXaddr(address _affCode, uint256 _team) public payable {}
                                        ^-----------^
./dataset/contracts/transaction_order/1211.sol:25:23: Warning: Unused function parameter. Remove or comment out the variable name to silence this warning.
    function buyXname(bytes32 _affCode, uint256 _team) public payable {}
                      ^--------------^
./dataset/contracts/transaction_order/1211.sol:25:41: Warning: Unused function parameter. Remove or comment out the variable name to silence this warning.
    function buyXname(bytes32 _affCode, uint256 _team) public payable {}
                                        ^-----------^
./dataset/contracts/transaction_order/1211.sol:26:24: Warning: Unused function parameter. Remove or comment out the variable name to silence this warning.
    function reLoadXid(uint256 _affCode, uint256 _team, uint256 _eth) public {}    
                       ^--------------^
./dataset/contracts/transaction_order/1211.sol:26:42: Warning: Unused function parameter. Remove or comment out the variable name to silence this warning.
    function reLoadXid(uint256 _affCode, uint256 _team, uint256 _eth) public {}    
                                         ^-----------^
./dataset/contracts/transaction_order/1211.sol:26:57: Warning: Unused function parameter. Remove or comment out the variable name to silence this warning.
    function reLoadXid(uint256 _affCode, uint256 _team, uint256 _eth) public {}    
                                                        ^----------^
./dataset/contracts/transaction_order/1211.sol:27:26: Warning: Unused function parameter. Remove or comment out the variable name to silence this warning.
    function reLoadXaddr(address _affCode, uint256 _team, uint256 _eth) public {} 
                         ^--------------^
./dataset/contracts/transaction_order/1211.sol:27:44: Warning: Unused function parameter. Remove or comment out the variable name to silence this warning.
    function reLoadXaddr(address _affCode, uint256 _team, uint256 _eth) public {} 
                                           ^-----------^
./dataset/contracts/transaction_order/1211.sol:27:59: Warning: Unused function parameter. Remove or comment out the variable name to silence this warning.
    function reLoadXaddr(address _affCode, uint256 _team, uint256 _eth) public {} 
                                                          ^----------^
./dataset/contracts/transaction_order/1211.sol:28:26: Warning: Unused function parameter. Remove or comment out the variable name to silence this warning.
    function reLoadXname(bytes32 _affCode, uint256 _team, uint256 _eth) public {}
                         ^--------------^
./dataset/contracts/transaction_order/1211.sol:28:44: Warning: Unused function parameter. Remove or comment out the variable name to silence this warning.
    function reLoadXname(bytes32 _affCode, uint256 _team, uint256 _eth) public {}
                                           ^-----------^
./dataset/contracts/transaction_order/1211.sol:28:59: Warning: Unused function parameter. Remove or comment out the variable name to silence this warning.
    function reLoadXname(bytes32 _affCode, uint256 _team, uint256 _eth) public {}
                                                          ^----------^
./dataset/contracts/transaction_order/1211.sol:42:30: Warning: Unused function parameter. Remove or comment out the variable name to silence this warning.
    function registerNameXID(string _nameString, uint256 _affCode, bool _all) public payable {}  
                             ^----------------^
./dataset/contracts/transaction_order/1211.sol:42:50: Warning: Unused function parameter. Remove or comment out the variable name to silence this warning.
    function registerNameXID(string _nameString, uint256 _affCode, bool _all) public payable {}  
                                                 ^--------------^
./dataset/contracts/transaction_order/1211.sol:42:68: Warning: Unused function parameter. Remove or comment out the variable name to silence this warning.
    function registerNameXID(string _nameString, uint256 _affCode, bool _all) public payable {}  
                                                                   ^-------^
./dataset/contracts/transaction_order/1211.sol:43:32: Warning: Unused function parameter. Remove or comment out the variable name to silence this warning.
    function registerNameXaddr(string _nameString, address _affCode, bool _all) public payable {} 
                               ^----------------^
./dataset/contracts/transaction_order/1211.sol:43:52: Warning: Unused function parameter. Remove or comment out the variable name to silence this warning.
    function registerNameXaddr(string _nameString, address _affCode, bool _all) public payable {} 
                                                   ^--------------^
./dataset/contracts/transaction_order/1211.sol:43:70: Warning: Unused function parameter. Remove or comment out the variable name to silence this warning.
    function registerNameXaddr(string _nameString, address _affCode, bool _all) public payable {} 
                                                                     ^-------^
./dataset/contracts/transaction_order/1211.sol:44:32: Warning: Unused function parameter. Remove or comment out the variable name to silence this warning.
    function registerNameXname(string _nameString, bytes32 _affCode, bool _all) public payable {} 
                               ^----------------^
./dataset/contracts/transaction_order/1211.sol:44:52: Warning: Unused function parameter. Remove or comment out the variable name to silence this warning.
    function registerNameXname(string _nameString, bytes32 _affCode, bool _all) public payable {} 
                                                   ^--------------^
./dataset/contracts/transaction_order/1211.sol:44:70: Warning: Unused function parameter. Remove or comment out the variable name to silence this warning.
    function registerNameXname(string _nameString, bytes32 _affCode, bool _all) public payable {} 
                                                                     ^-------^
./dataset/contracts/transaction_order/1211.sol:67:30: Warning: Unused function parameter. Remove or comment out the variable name to silence this warning.
    function getPlayerVaults(uint256 _pID)
                             ^----------^
./dataset/contracts/transaction_order/1211.sol:106:37: Warning: Unused function parameter. Remove or comment out the variable name to silence this warning.
    function getPlayerInfoByAddress(address _addr)
                                    ^-----------^
./dataset/contracts/transaction_order/1211.sol:123:31: Warning: Unused function parameter. Remove or comment out the variable name to silence this warning.
    function calcKeysReceived(uint256 _rID, uint256 _eth)
                              ^----------^
./dataset/contracts/transaction_order/1211.sol:123:45: Warning: Unused function parameter. Remove or comment out the variable name to silence this warning.
    function calcKeysReceived(uint256 _rID, uint256 _eth)
                                            ^----------^
./dataset/contracts/transaction_order/1211.sol:142:27: Warning: Unused function parameter. Remove or comment out the variable name to silence this warning.
    function setOtherFomo(address _otherF3D) public {}
                          ^---------------^
./dataset/contracts/transaction_order/1211.sol:26:5: Warning: Function state mutability can be restricted to pure
    function reLoadXid(uint256 _affCode, uint256 _team, uint256 _eth) public {}    
    ^-------------------------------------------------------------------------^
./dataset/contracts/transaction_order/1211.sol:27:5: Warning: Function state mutability can be restricted to pure
    function reLoadXaddr(address _affCode, uint256 _team, uint256 _eth) public {} 
    ^---------------------------------------------------------------------------^
./dataset/contracts/transaction_order/1211.sol:28:5: Warning: Function state mutability can be restricted to pure
    function reLoadXname(bytes32 _affCode, uint256 _team, uint256 _eth) public {}
    ^---------------------------------------------------------------------------^
./dataset/contracts/transaction_order/1211.sol:48:5: Warning: Function state mutability can be restricted to pure
    function getBuyPrice()
    ^ (Relevant source part starts here and spans across multiple lines).
./dataset/contracts/transaction_order/1211.sol:63:3: Warning: Function declared as view, but this expression (potentially) modifies the state and thus requires non-payable (the default) or payable.
		round_[_rID].end =  _now + 125 - ( _now % 120 );
		^--------------^
./dataset/contracts/transaction_order/1211.sol:67:5: Warning: Function state mutability can be restricted to pure
    function getPlayerVaults(uint256 _pID)
    ^ (Relevant source part starts here and spans across multiple lines).
./dataset/contracts/transaction_order/1211.sol:85:3: Warning: Function declared as view, but this expression (potentially) modifies the state and thus requires non-payable (the default) or payable.
		round_[_rID].end = _now + 125 - (_now % 120);
		^--------------^
./dataset/contracts/transaction_order/1211.sol:106:5: Warning: Function state mutability can be restricted to pure
    function getPlayerInfoByAddress(address _addr)
    ^ (Relevant source part starts here and spans across multiple lines).
./dataset/contracts/transaction_order/1211.sol:123:5: Warning: Function state mutability can be restricted to pure
    function calcKeysReceived(uint256 _rID, uint256 _eth)
    ^ (Relevant source part starts here and spans across multiple lines).
./dataset/contracts/transaction_order/1211.sol:131:5: Warning: Function state mutability can be restricted to pure
    function iWantXKeys(uint256 _keys)
    ^ (Relevant source part starts here and spans across multiple lines).
./dataset/contracts/transaction_order/1211.sol:140:5: Warning: Function state mutability can be restricted to pure
    function activate() public { }
    ^----------------------------^
./dataset/contracts/transaction_order/1211.sol:142:5: Warning: Function state mutability can be restricted to pure
    function setOtherFomo(address _otherF3D) public {}
    ^------------------------------------------------^

INFO:Detectors:
FoMo3Dlong.getTimeLeft() (dataset/contracts/transaction_order/1211.sol#56-65) uses a weak PRNG: "(125 - (_now % 120)) (dataset/contracts/transaction_order/1211.sol#64)" 
FoMo3Dlong.getTimeLeft() (dataset/contracts/transaction_order/1211.sol#56-65) uses a weak PRNG: "round_[_rID].end = _now + 125 - (_now % 120) (dataset/contracts/transaction_order/1211.sol#63)" 
FoMo3Dlong.getCurrentRoundInfo() (dataset/contracts/transaction_order/1211.sol#75-104) uses a weak PRNG: "round_[_rID].end = _now + 125 - (_now % 120) (dataset/contracts/transaction_order/1211.sol#85)" 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#weak-PRNG
INFO:Detectors:
FoMo3Dlong.getTimeLeft() (dataset/contracts/transaction_order/1211.sol#56-65) is declared view but changes state variables:
	- FoMo3Dlong.round_ (dataset/contracts/transaction_order/1211.sol#15)
FoMo3Dlong.getCurrentRoundInfo() (dataset/contracts/transaction_order/1211.sol#75-104) is declared view but changes state variables:
	- FoMo3Dlong.round_ (dataset/contracts/transaction_order/1211.sol#15)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#constant-functions-changing-the-state
INFO:Detectors:
Version constraint ^0.4.24 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
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
	- ^0.4.24 (dataset/contracts/transaction_order/1211.sol#1)
solc-0.4.24 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Parameter FoMo3Dlong.iWantXKeys(uint256)._keys (dataset/contracts/transaction_order/1211.sol#131) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
FoMo3Dlong.getCurrentRoundInfo() (dataset/contracts/transaction_order/1211.sol#75-104) uses literals with too many digits:
	- (0,_rID,round_[_rID].keys,round_[_rID].end,round_[_rID].strt,round_[_rID].pot,(round_[_rID].team + (round_[_rID].plyr * 10)),0xd8723f6f396E28ab6662B91981B3eabF9De05E3C,0x6d6f6c6963616e63657200000000000000000000000000000000000000000000,3053823263697073356017,4675447079848478547678,85163999483914905978445,3336394330928816056073,519463956231409304003) (dataset/contracts/transaction_order/1211.sol#87-103)
FoMo3Dlong.getPlayerInfoByAddress(address) (dataset/contracts/transaction_order/1211.sol#106-121) uses literals with too many digits:
	- (18163,0x6d6f6c6963616e63657200000000000000000000000000000000000000000000,122081953021293259355,0,0,0,0) (dataset/contracts/transaction_order/1211.sol#111-120)
FoMo3Dlong.iWantXKeys(uint256) (dataset/contracts/transaction_order/1211.sol#131-137) uses literals with too many digits:
	- (_keys.mul(100254831521475310) / 1000000000000000000) (dataset/contracts/transaction_order/1211.sol#136)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#too-many-digits
INFO:Detectors:
FoMo3Dlong.activated_ (dataset/contracts/transaction_order/1211.sol#139) should be constant 
FoMo3Dlong.airDropPot_ (dataset/contracts/transaction_order/1211.sol#8) should be constant 
FoMo3Dlong.airDropTracker_ (dataset/contracts/transaction_order/1211.sol#9) should be constant 
FoMo3Dlong.rID_ (dataset/contracts/transaction_order/1211.sol#46) should be constant 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#state-variables-that-could-be-declared-constant
INFO:Detectors:
registerNameXID(string,uint256,bool) should be declared external:
	- FoMo3Dlong.registerNameXID(string,uint256,bool) (dataset/contracts/transaction_order/1211.sol#42)
registerNameXaddr(string,address,bool) should be declared external:
	- FoMo3Dlong.registerNameXaddr(string,address,bool) (dataset/contracts/transaction_order/1211.sol#43)
registerNameXname(string,bytes32,bool) should be declared external:
	- FoMo3Dlong.registerNameXname(string,bytes32,bool) (dataset/contracts/transaction_order/1211.sol#44)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#public-function-that-could-be-declared-external
INFO:Slither:./dataset/contracts/transaction_order/1211.sol analyzed (3 contracts with 100 detectors), 18 result(s) found

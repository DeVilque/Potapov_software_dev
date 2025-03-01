# Install script for directory: D:/Labs/software_dev/Potapov_software_dev/Android/libs/mbedtls/mbedtls/include

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Program Files (x86)/Mbed TLS")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "0")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "TRUE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "D:/Labs/SDKs/ndk/27.0.12077973/toolchains/llvm/prebuilt/windows-x86_64/bin/llvm-objdump.exe")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/mbedtls" TYPE FILE PERMISSIONS OWNER_READ OWNER_WRITE GROUP_READ WORLD_READ FILES
    "D:/Labs/software_dev/Potapov_software_dev/Android/libs/mbedtls/mbedtls/include/mbedtls/aes.h"
    "D:/Labs/software_dev/Potapov_software_dev/Android/libs/mbedtls/mbedtls/include/mbedtls/aria.h"
    "D:/Labs/software_dev/Potapov_software_dev/Android/libs/mbedtls/mbedtls/include/mbedtls/asn1.h"
    "D:/Labs/software_dev/Potapov_software_dev/Android/libs/mbedtls/mbedtls/include/mbedtls/asn1write.h"
    "D:/Labs/software_dev/Potapov_software_dev/Android/libs/mbedtls/mbedtls/include/mbedtls/base64.h"
    "D:/Labs/software_dev/Potapov_software_dev/Android/libs/mbedtls/mbedtls/include/mbedtls/bignum.h"
    "D:/Labs/software_dev/Potapov_software_dev/Android/libs/mbedtls/mbedtls/include/mbedtls/block_cipher.h"
    "D:/Labs/software_dev/Potapov_software_dev/Android/libs/mbedtls/mbedtls/include/mbedtls/build_info.h"
    "D:/Labs/software_dev/Potapov_software_dev/Android/libs/mbedtls/mbedtls/include/mbedtls/camellia.h"
    "D:/Labs/software_dev/Potapov_software_dev/Android/libs/mbedtls/mbedtls/include/mbedtls/ccm.h"
    "D:/Labs/software_dev/Potapov_software_dev/Android/libs/mbedtls/mbedtls/include/mbedtls/chacha20.h"
    "D:/Labs/software_dev/Potapov_software_dev/Android/libs/mbedtls/mbedtls/include/mbedtls/chachapoly.h"
    "D:/Labs/software_dev/Potapov_software_dev/Android/libs/mbedtls/mbedtls/include/mbedtls/check_config.h"
    "D:/Labs/software_dev/Potapov_software_dev/Android/libs/mbedtls/mbedtls/include/mbedtls/cipher.h"
    "D:/Labs/software_dev/Potapov_software_dev/Android/libs/mbedtls/mbedtls/include/mbedtls/cmac.h"
    "D:/Labs/software_dev/Potapov_software_dev/Android/libs/mbedtls/mbedtls/include/mbedtls/compat-2.x.h"
    "D:/Labs/software_dev/Potapov_software_dev/Android/libs/mbedtls/mbedtls/include/mbedtls/config_adjust_legacy_crypto.h"
    "D:/Labs/software_dev/Potapov_software_dev/Android/libs/mbedtls/mbedtls/include/mbedtls/config_adjust_legacy_from_psa.h"
    "D:/Labs/software_dev/Potapov_software_dev/Android/libs/mbedtls/mbedtls/include/mbedtls/config_adjust_psa_from_legacy.h"
    "D:/Labs/software_dev/Potapov_software_dev/Android/libs/mbedtls/mbedtls/include/mbedtls/config_adjust_psa_superset_legacy.h"
    "D:/Labs/software_dev/Potapov_software_dev/Android/libs/mbedtls/mbedtls/include/mbedtls/config_adjust_ssl.h"
    "D:/Labs/software_dev/Potapov_software_dev/Android/libs/mbedtls/mbedtls/include/mbedtls/config_adjust_x509.h"
    "D:/Labs/software_dev/Potapov_software_dev/Android/libs/mbedtls/mbedtls/include/mbedtls/config_psa.h"
    "D:/Labs/software_dev/Potapov_software_dev/Android/libs/mbedtls/mbedtls/include/mbedtls/constant_time.h"
    "D:/Labs/software_dev/Potapov_software_dev/Android/libs/mbedtls/mbedtls/include/mbedtls/ctr_drbg.h"
    "D:/Labs/software_dev/Potapov_software_dev/Android/libs/mbedtls/mbedtls/include/mbedtls/debug.h"
    "D:/Labs/software_dev/Potapov_software_dev/Android/libs/mbedtls/mbedtls/include/mbedtls/des.h"
    "D:/Labs/software_dev/Potapov_software_dev/Android/libs/mbedtls/mbedtls/include/mbedtls/dhm.h"
    "D:/Labs/software_dev/Potapov_software_dev/Android/libs/mbedtls/mbedtls/include/mbedtls/ecdh.h"
    "D:/Labs/software_dev/Potapov_software_dev/Android/libs/mbedtls/mbedtls/include/mbedtls/ecdsa.h"
    "D:/Labs/software_dev/Potapov_software_dev/Android/libs/mbedtls/mbedtls/include/mbedtls/ecjpake.h"
    "D:/Labs/software_dev/Potapov_software_dev/Android/libs/mbedtls/mbedtls/include/mbedtls/ecp.h"
    "D:/Labs/software_dev/Potapov_software_dev/Android/libs/mbedtls/mbedtls/include/mbedtls/entropy.h"
    "D:/Labs/software_dev/Potapov_software_dev/Android/libs/mbedtls/mbedtls/include/mbedtls/error.h"
    "D:/Labs/software_dev/Potapov_software_dev/Android/libs/mbedtls/mbedtls/include/mbedtls/gcm.h"
    "D:/Labs/software_dev/Potapov_software_dev/Android/libs/mbedtls/mbedtls/include/mbedtls/hkdf.h"
    "D:/Labs/software_dev/Potapov_software_dev/Android/libs/mbedtls/mbedtls/include/mbedtls/hmac_drbg.h"
    "D:/Labs/software_dev/Potapov_software_dev/Android/libs/mbedtls/mbedtls/include/mbedtls/lms.h"
    "D:/Labs/software_dev/Potapov_software_dev/Android/libs/mbedtls/mbedtls/include/mbedtls/mbedtls_config.h"
    "D:/Labs/software_dev/Potapov_software_dev/Android/libs/mbedtls/mbedtls/include/mbedtls/md.h"
    "D:/Labs/software_dev/Potapov_software_dev/Android/libs/mbedtls/mbedtls/include/mbedtls/md5.h"
    "D:/Labs/software_dev/Potapov_software_dev/Android/libs/mbedtls/mbedtls/include/mbedtls/memory_buffer_alloc.h"
    "D:/Labs/software_dev/Potapov_software_dev/Android/libs/mbedtls/mbedtls/include/mbedtls/net_sockets.h"
    "D:/Labs/software_dev/Potapov_software_dev/Android/libs/mbedtls/mbedtls/include/mbedtls/nist_kw.h"
    "D:/Labs/software_dev/Potapov_software_dev/Android/libs/mbedtls/mbedtls/include/mbedtls/oid.h"
    "D:/Labs/software_dev/Potapov_software_dev/Android/libs/mbedtls/mbedtls/include/mbedtls/pem.h"
    "D:/Labs/software_dev/Potapov_software_dev/Android/libs/mbedtls/mbedtls/include/mbedtls/pk.h"
    "D:/Labs/software_dev/Potapov_software_dev/Android/libs/mbedtls/mbedtls/include/mbedtls/pkcs12.h"
    "D:/Labs/software_dev/Potapov_software_dev/Android/libs/mbedtls/mbedtls/include/mbedtls/pkcs5.h"
    "D:/Labs/software_dev/Potapov_software_dev/Android/libs/mbedtls/mbedtls/include/mbedtls/pkcs7.h"
    "D:/Labs/software_dev/Potapov_software_dev/Android/libs/mbedtls/mbedtls/include/mbedtls/platform.h"
    "D:/Labs/software_dev/Potapov_software_dev/Android/libs/mbedtls/mbedtls/include/mbedtls/platform_time.h"
    "D:/Labs/software_dev/Potapov_software_dev/Android/libs/mbedtls/mbedtls/include/mbedtls/platform_util.h"
    "D:/Labs/software_dev/Potapov_software_dev/Android/libs/mbedtls/mbedtls/include/mbedtls/poly1305.h"
    "D:/Labs/software_dev/Potapov_software_dev/Android/libs/mbedtls/mbedtls/include/mbedtls/private_access.h"
    "D:/Labs/software_dev/Potapov_software_dev/Android/libs/mbedtls/mbedtls/include/mbedtls/psa_util.h"
    "D:/Labs/software_dev/Potapov_software_dev/Android/libs/mbedtls/mbedtls/include/mbedtls/ripemd160.h"
    "D:/Labs/software_dev/Potapov_software_dev/Android/libs/mbedtls/mbedtls/include/mbedtls/rsa.h"
    "D:/Labs/software_dev/Potapov_software_dev/Android/libs/mbedtls/mbedtls/include/mbedtls/sha1.h"
    "D:/Labs/software_dev/Potapov_software_dev/Android/libs/mbedtls/mbedtls/include/mbedtls/sha256.h"
    "D:/Labs/software_dev/Potapov_software_dev/Android/libs/mbedtls/mbedtls/include/mbedtls/sha3.h"
    "D:/Labs/software_dev/Potapov_software_dev/Android/libs/mbedtls/mbedtls/include/mbedtls/sha512.h"
    "D:/Labs/software_dev/Potapov_software_dev/Android/libs/mbedtls/mbedtls/include/mbedtls/ssl.h"
    "D:/Labs/software_dev/Potapov_software_dev/Android/libs/mbedtls/mbedtls/include/mbedtls/ssl_cache.h"
    "D:/Labs/software_dev/Potapov_software_dev/Android/libs/mbedtls/mbedtls/include/mbedtls/ssl_ciphersuites.h"
    "D:/Labs/software_dev/Potapov_software_dev/Android/libs/mbedtls/mbedtls/include/mbedtls/ssl_cookie.h"
    "D:/Labs/software_dev/Potapov_software_dev/Android/libs/mbedtls/mbedtls/include/mbedtls/ssl_ticket.h"
    "D:/Labs/software_dev/Potapov_software_dev/Android/libs/mbedtls/mbedtls/include/mbedtls/threading.h"
    "D:/Labs/software_dev/Potapov_software_dev/Android/libs/mbedtls/mbedtls/include/mbedtls/timing.h"
    "D:/Labs/software_dev/Potapov_software_dev/Android/libs/mbedtls/mbedtls/include/mbedtls/version.h"
    "D:/Labs/software_dev/Potapov_software_dev/Android/libs/mbedtls/mbedtls/include/mbedtls/x509.h"
    "D:/Labs/software_dev/Potapov_software_dev/Android/libs/mbedtls/mbedtls/include/mbedtls/x509_crl.h"
    "D:/Labs/software_dev/Potapov_software_dev/Android/libs/mbedtls/mbedtls/include/mbedtls/x509_crt.h"
    "D:/Labs/software_dev/Potapov_software_dev/Android/libs/mbedtls/mbedtls/include/mbedtls/x509_csr.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/psa" TYPE FILE PERMISSIONS OWNER_READ OWNER_WRITE GROUP_READ WORLD_READ FILES
    "D:/Labs/software_dev/Potapov_software_dev/Android/libs/mbedtls/mbedtls/include/psa/build_info.h"
    "D:/Labs/software_dev/Potapov_software_dev/Android/libs/mbedtls/mbedtls/include/psa/crypto.h"
    "D:/Labs/software_dev/Potapov_software_dev/Android/libs/mbedtls/mbedtls/include/psa/crypto_adjust_auto_enabled.h"
    "D:/Labs/software_dev/Potapov_software_dev/Android/libs/mbedtls/mbedtls/include/psa/crypto_adjust_config_dependencies.h"
    "D:/Labs/software_dev/Potapov_software_dev/Android/libs/mbedtls/mbedtls/include/psa/crypto_adjust_config_key_pair_types.h"
    "D:/Labs/software_dev/Potapov_software_dev/Android/libs/mbedtls/mbedtls/include/psa/crypto_adjust_config_synonyms.h"
    "D:/Labs/software_dev/Potapov_software_dev/Android/libs/mbedtls/mbedtls/include/psa/crypto_builtin_composites.h"
    "D:/Labs/software_dev/Potapov_software_dev/Android/libs/mbedtls/mbedtls/include/psa/crypto_builtin_key_derivation.h"
    "D:/Labs/software_dev/Potapov_software_dev/Android/libs/mbedtls/mbedtls/include/psa/crypto_builtin_primitives.h"
    "D:/Labs/software_dev/Potapov_software_dev/Android/libs/mbedtls/mbedtls/include/psa/crypto_compat.h"
    "D:/Labs/software_dev/Potapov_software_dev/Android/libs/mbedtls/mbedtls/include/psa/crypto_config.h"
    "D:/Labs/software_dev/Potapov_software_dev/Android/libs/mbedtls/mbedtls/include/psa/crypto_driver_common.h"
    "D:/Labs/software_dev/Potapov_software_dev/Android/libs/mbedtls/mbedtls/include/psa/crypto_driver_contexts_composites.h"
    "D:/Labs/software_dev/Potapov_software_dev/Android/libs/mbedtls/mbedtls/include/psa/crypto_driver_contexts_key_derivation.h"
    "D:/Labs/software_dev/Potapov_software_dev/Android/libs/mbedtls/mbedtls/include/psa/crypto_driver_contexts_primitives.h"
    "D:/Labs/software_dev/Potapov_software_dev/Android/libs/mbedtls/mbedtls/include/psa/crypto_extra.h"
    "D:/Labs/software_dev/Potapov_software_dev/Android/libs/mbedtls/mbedtls/include/psa/crypto_legacy.h"
    "D:/Labs/software_dev/Potapov_software_dev/Android/libs/mbedtls/mbedtls/include/psa/crypto_platform.h"
    "D:/Labs/software_dev/Potapov_software_dev/Android/libs/mbedtls/mbedtls/include/psa/crypto_se_driver.h"
    "D:/Labs/software_dev/Potapov_software_dev/Android/libs/mbedtls/mbedtls/include/psa/crypto_sizes.h"
    "D:/Labs/software_dev/Potapov_software_dev/Android/libs/mbedtls/mbedtls/include/psa/crypto_struct.h"
    "D:/Labs/software_dev/Potapov_software_dev/Android/libs/mbedtls/mbedtls/include/psa/crypto_types.h"
    "D:/Labs/software_dev/Potapov_software_dev/Android/libs/mbedtls/mbedtls/include/psa/crypto_values.h"
    )
endif()


vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO hheld/LivePlot
  REF 51c0115c954cc13e8735968ce5ded5869b982d61
  SHA512 b2768603e66b1be3a75a2dbc2660e9146181cce8d1d25655865d0a039d95fbe93c5a966d42bc687997e963af361016093e84fc730169c3b6731bacf29b3683d1
  HEAD_REF main
)

vcpkg_configure_cmake(
  SOURCE_PATH "${SOURCE_PATH}/lp-cpp"
  PREFER_NINJA
)
vcpkg_install_cmake()
vcpkg_cmake_config_fixup(
    CONFIG_PATH "lib/cmake/liveplot"
)

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")

file(
  INSTALL "${SOURCE_PATH}/LICENSE"
  DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}"
  RENAME copyright)
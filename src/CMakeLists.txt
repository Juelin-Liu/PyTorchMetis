pybind11_add_module(pytorch_metis pytorch_metis.cc)
target_link_libraries(pytorch_metis PUBLIC pybind11::module)
target_link_libraries(pytorch_metis PUBLIC ${TORCH_PYTHON_LIBRARY})
target_link_libraries(pytorch_metis PUBLIC metis GKlib)
target_link_libraries(pytorch_metis PUBLIC tbb tbbmalloc)
# pybind11_add_module(prep )
# target_link_libraries(prep PUBLIC pybind11::module)
# target_link_libraries(prep PUBLIC ${TORCH_PYTHON_LIBRARY})

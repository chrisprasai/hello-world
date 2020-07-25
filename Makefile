BUILD_DIR := ./build

.PHONY : all clean ${BUILD_DIR}/Makefile

all: ${BUILD_DIR}/Makefile
	@make -C ${BUILD_DIR} hello-world

clean:
	@([ -d ${BUILD_DIR} ] && make -C ${BUILD_DIR} clean && rm -rf ${BUILD_DIR}) || echo Nothing to clean

${BUILD_DIR}/Makefile:
	@[ -d ${BUILD_DIR} ] || (mkdir -p ${BUILD_DIR} && mkdir -p ${BUILD_DIR}/bin)
	@[ -f ${BUILD_DIR}/Makefile ] || (cd ${BUILD_DIR} && cmake ${CMAKE_OPTS} ..)


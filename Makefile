# VARIABLES =================================
# ===========================================
VARIABLE_1?=123

# FUNCTIONS =================================
# ===========================================
help: help.variables help.available_functions

help.variables:
	@echo "== Variables for Istio Installation"
	@echo ${VARIABLE_1}

help.available_functions:
	@echo "================================="
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'
	@echo "================================="

base_function.function_1: ## Base Function
	@echo "Base Function 2"

base_function.function_2: ## Base Function
	@echo "Base Function 2"
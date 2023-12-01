set-subscription:
	az account set --subscription AzureCop
deploy: set-subscription
	az deployment group create \
		--mode Complete \
		--resource-group prowe-data-lake-bi \
		--template-file main.bicep
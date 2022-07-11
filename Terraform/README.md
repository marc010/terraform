- все файлы в поддиректории .terraform будут проигнорированны, где бы эта директория в репозитории не находилась

- будут проигнорированны файлы:
     - "crash.log" и все файлы по шаблону "crash.*.log"
	 - все файлы заканчивающиеся на ".tfstate" и содержащие ".tfstate." в своем названии
	 - все файлы заканчивающиеся на ".tfvars", ".tfvars.json", "_override.tf" и "_override.tf.json"
	 - файлы "override.tf", "override.tf.json", ".terraformrc" и "terraform.rc"
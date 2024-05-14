HARU_DIR := haru
TARGET_DIR := "/Users/$(USER)/Library/Application Support/abnerworks.Typora/themes/"
FILES := haru.css haru-dark.css

.PHONY: check_dir install

check_dir:
	@if [ ! -d "$(TARGET_DIR)" ]; then \
		echo "Error: Typora 主题目录($(TARGET_DIR))不存在,请查看正确的Typora主题目录并设置为TARGET_DIR"; \
		exit 1; \
	fi

install: check_dir
	@cp -rf $(HARU_DIR) $(TARGET_DIR)
	@for file in $(FILES); do \
		cp -f $$file $(TARGET_DIR); \
	done
	@echo "haru主题拷贝完成!"


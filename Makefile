.PHONY: macos web down clean help

# macOSでアプリを起動（ホットリロード有効）
macos:
	flutter run -d macos --hot

# Webブラウザでアプリを起動（ホットリロード有効）
web:
	flutter run -d chrome --hot

# 実行中のFlutterアプリを停止
down:
	@pkill -f "flutter run" || echo "実行中のFlutterアプリはありません"

# ビルド成果物をクリーン
clean:
	flutter clean

# ヘルプメッセージ
help:
	@echo "利用可能なコマンド:"
	@echo "  make macos  - macOSでアプリを起動（ホットリロード有効）"
	@echo "  make web    - Webブラウザでアプリを起動（ホットリロード有効）"
	@echo "  make down   - 実行中のFlutterアプリを停止"
	@echo "  make clean  - ビルド成果物をクリーン"
	@echo "  make help   - このヘルプを表示"

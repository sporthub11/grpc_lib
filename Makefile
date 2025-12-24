.PHONY: generate
generate: clean
	protoc \
		--go_out=pb --go_opt=module=github.com/sporthub11/grpc_lib/pb \
		--go-grpc_out=pb --go-grpc_opt=module=github.com/sporthub11/grpc_lib/pb \
		-I=proto \
		proto/*.proto

clean:
	rm -rf pb
	mkdir -p pb
tag:
	 git tag v0.1.1
push:
	git push origin v0.1.1
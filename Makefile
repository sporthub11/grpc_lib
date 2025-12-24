.PHONY: generate
generate: clean
	protoc \
		--go_out=pb --go_opt=module=github.com/sporthub11/grpc_lib/pb \
		--go-grpc_out=pb --go-grpc_opt=module=github.com/sporthub11/grpc_lib/pb \
		proto/*.proto

clean:
	rm -rf pb
	mkdir -p pb
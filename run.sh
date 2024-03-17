APPNAME="zkkyc_smlee"
ENV_FILE=".env"
PRIVATE_KEY=$(grep "PRIVATE_KEY" $ENV_FILE | cut -d '=' -f2)

snarkos developer execute "${APPNAME}.aleo" main \
  0u32 \
  1u32 \
  0u32 \
  100u32 \
  5u32 \
  --private-key "${PRIVATE_KEY}" \
  --query "https://api.explorer.aleo.org/v1" \
  --priority-fee 3000000 \
  --broadcast "https://api.explorer.aleo.org/v1/testnet3/transaction/broadcast" \
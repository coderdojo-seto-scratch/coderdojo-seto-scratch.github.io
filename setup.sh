#!/usr/bin/env sh

ln -s ../chatgpt2scratch chatgpt2scratch
rm ./node_modules/scratch-vm/src/extension-support/extension-manager.js
mv ./node_modules/scratch-vm/src/extension-support/extension-manager.js_orig ./node_modules/scratch-vm/src/extension-support/extension-manager.js
./chatgpt2scratch/install.sh
rm ./node_modules/scratch-vm/src/extensions/scratch3_chatgpt2scratch/index.js
ln ../chatgpt2scratch/scratch-vm/src/extensions/scratch3_chatgpt2scratch/index.js ./node_modules/scratch-vm/src/extensions/scratch3_chatgpt2scratch/index.js

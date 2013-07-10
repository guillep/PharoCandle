"I am a builder for a Pharo Candle system. I bootstrap the system using an object space. You configure myself by providing mi a kernelSpec, and sending me the message #buildKernel."

"Load a seed from the folder of the downloaded sources"
seed := PharoCandleSeed new
    fromDirectoryNamed: '../source';
    buildSeed.

"Builder, do it"
builder := HazelKernelBuilder new.
builder kernelSpec: seed.
builder buildKernel.

"Now the image file"
writer := HzImageWriter new.
writer format: HzCogImageFormat new.
seed appySubstitutionsOn: writer forEnvironment: builder bootstrapEnvironment.
writer imageFileName: 'candle'.
writer writeImage: builder bootstrapEnvironment.

Smalltalk snapshot: true andQuit: true.
# calculate distance using item scale trick created by Triton365

$data modify entity 0000000d-0109-0097-0116-000000000104 transformation set value [$(x),0f,0f,0f,$(y),0f,0f,0f,$(z),0f,0f,0f,0f,0f,0f,1f]
data modify storage platoons:pocketdist out set from entity 0000000d-0109-0097-0116-000000000104 transformation.scale[0]


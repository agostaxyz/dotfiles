import subprocess
gpuRaw = subprocess.chech.output({nvidia-smi stats -d gpuUtils --count 1})

# gpuRaw = nvidia-smi stats -d gpuUtil --count 1
# tempRaw = nvidia-smi stats -d temp --count 1
# gpuRaw needs to get the sum of all the values

first, *middle, last = gpuRaw.split()
percentage = last

# first, *middle, last = tempRaw.split()
# temp = last 

temp = temp + "°C"
percentage = percentage + "%" 
print(output.format(temp=temp, percentage=percentage))

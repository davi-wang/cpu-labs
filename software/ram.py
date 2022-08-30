import numpy as np
import pandas as pd

data_seg_path = r'C:\Users\xhm2001\Desktop\senior1\hardware\mips\data.txt'
img_tank_path = r'D:\Files\Resource\C++\1.Hello World\tank.txt'
img_background_path = r'D:\Files\Resource\C++\1.Hello World\background.txt'


seg_base_data =          0x0000
seg_base_tank =          0x1000
seg_base_background =    0x2000
seg_base_stack =         0x0fff


def generate_ram():
    ram = np.zeros((4096), dtype=np.uint32)
    
    def fill_ram(ram, path, seg):
        data = pd.read_csv(path, dtype=str, header=None)
        data = data[0].apply(lambda x:int(x, base=16)).to_numpy(np.uint32)
        ram[seg >> 2: (seg >> 2) + data.shape[0]] = data
    
    fill_ram(ram, data_seg_path, seg_base_data)
    fill_ram(ram, img_tank_path, seg_base_tank)
    fill_ram(ram, img_background_path, seg_base_background)
    
    with open('software/ram_data.coe', 'w') as f:
        f.write('memory_initialization_radix=16;\nmemory_initialization_vector=\n')
        for i in ram:
            x = '{:0>8x},\n'.format(i)
            f.write(x)


if __name__ == '__main__':
    generate_ram()
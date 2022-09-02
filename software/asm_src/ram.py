import numpy as np
import pandas as pd

data_seg_path = r''
img_tank0_path = r'software\asm_src\tank0.txt'
img_tank1_path = r'software\asm_src\tank1.txt'
img_tank2_path = r'software\asm_src\tank2.txt'
img_tank3_path = r'software\asm_src\tank3.txt'
img_background_path = r'software\asm_src\background.txt'
img_fire_path = r'software\asm_src\fire.txt'


seg_base_data =          0x0000
seg_base_stack =         0x0ff0
seg_base_background =    0x1000
seg_base_tank0 =         0x1700
seg_base_tank1 =         0x1e00
seg_base_tank2 =         0x2500
seg_base_tank3 =         0x2c00
seg_base_fire =          0x3300


def generate_ram():
    ram = np.zeros((4096), dtype=np.uint32)
    
    def fill_ram(ram, path, seg):
        data = pd.read_csv(path, dtype=str, header=None)
        data = data[0].apply(lambda x:int(x, base=16)).to_numpy(np.uint32)
        ram[seg >> 2: (seg >> 2) + data.shape[0]] = data
    
    fill_ram(ram, data_seg_path, seg_base_data)
    fill_ram(ram, img_tank0_path, seg_base_tank0)
    fill_ram(ram, img_tank1_path, seg_base_tank1)
    fill_ram(ram, img_tank2_path, seg_base_tank2)
    fill_ram(ram, img_tank3_path, seg_base_tank3)
    fill_ram(ram, img_background_path, seg_base_background)
    fill_ram(ram, img_fire_path, seg_base_fire)
    
    with open('software/ram_data.coe', 'w') as f:
        f.write('memory_initialization_radix=16;\nmemory_initialization_vector=\n')
        for i in ram:
            x = '{:0>8x},\n'.format(i)
            f.write(x)


if __name__ == '__main__':
    generate_ram()
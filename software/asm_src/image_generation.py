import cv2
import numpy as np

back = cv2.imread(r'C:software\asm_src\background.png', cv2.IMREAD_UNCHANGED)

img = cv2.imread(r'software\asm_src\tank.png', cv2.IMREAD_UNCHANGED)

img1 = cv2.rotate(img, cv2.ROTATE_90_CLOCKWISE)
img2 = cv2.rotate(img, cv2.ROTATE_180)
img3 = cv2.rotate(img, cv2.ROTATE_90_COUNTERCLOCKWISE)

fire = cv2.imread(r'software\asm_src\fire.bmp', cv2.IMREAD_UNCHANGED)

imgs = [img, img1, img2, img3, fire, back]

# wd = cv2.namedWindow('window', cv2.WINDOW_NORMAL)
imgs = [i[:, :, [2, 1, 0]] for i in imgs]


for i, img in enumerate(imgs):
    for r in range(img.shape[0]):
        for c in range(img.shape[1]):
            if img[r,c,0] == 0xff and img[r,c,1] == 0xff and img[r,c,2] == 0xff:
                img[r,c] = imgs[5][r,c]
    
    with open('software\asm_src\img{}.txt'.format(i), 'w', encoding='utf8') as f:
        for i in img:
            for j in i:
                    f.write('0x{:x}{:x}{:x}\n'.format(j[0], j[1], j[2]))



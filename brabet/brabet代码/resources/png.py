from PIL import Image
import json

"""
通过四个坐标点在任意位置切割图片，主要用于将大图片分割成多个小图片
img_path：需要切割图片的路径
"""


def cut_image(path):
    img = Image.open(path)
    w, h = img.size
    # 坐标点可以根据自己的需要进行调整
    cut = [(0, 0, 120, h), (120, 0, 240, h), (240, 0, 360, h), (360, 0, w, h)]
    for i, n in enumerate(cut, 1):
        temp = img.crop(n)
        # 分别保存多个小图片，路径可以根据自己的需要设计
        temp.save(path.replace(".png", str(i - 1) + '.png'))
    return True


"""
通过坐标xy的最大最小值对图片进行整体切割
path1：需要切割图片的路径
path2：切割后保存图片的位置
x_min：切割矩形左边x值对应原图的x坐标
x_max：切割矩形右边x值对应原图的x坐标
y_min：切割矩形上边y值对应原图的y坐标
y_max：切割矩形下边y值对应原图的y坐标
"""
def cut_img_by_xy(path1, x_min, y_min, x_max, y_max, path2):

    img = Image.open(path1)

    crop = img.crop((x_min, y_min, x_min+x_max,y_min+ y_max))
    crop.save(path2)

def cut_img_by_xy2(path1, x_min, y_min, x_max, y_max, path2):

    img = Image.open(path1)

    crop = img.crop((x_min, y_min, x_min+x_max,y_min+ y_max))
    crop = crop.rotate(90, expand=True)
    crop.save(path2)

def traverse(data):
    for key in data:
        value = data[key]
        print(key, ":", value)
        if type(value) == dict:
            traverse(value)
        elif type(value) == list:
            for item in value:
                if type(item) == dict:
                    traverse(item)

def traverse2(data):
    for key in data:
        if len(key[5]) == 1 and key[5][0] == json_data[1].index(img_pathName):  # 判断条件
            print(key[0][0]["name"])
            data2=key[0][0]
            if "rotated" in key[0][0].keys():
                cut_img_by_xy2(img_path, data2["rect"][0], data2["rect"][1], data2["rect"][3], data2["rect"][2], "./out/" +data2["name"]+".png")
            else:
                cut_img_by_xy(img_path, data2["rect"][0], data2["rect"][1], data2["rect"][2], data2["rect"][3],"./out/"+ data2["name"]+".png")


if __name__ == '__main__':
    img_pathName = "1f1d79ebc"
    img_path = img_pathName+".png"

    with open('0bb8da815.json','r',encoding='utf8')as fp:
        json_data = json.load(fp)
        traverse2(json_data[5])


    # 整体切割
    #            cut_img_by_xy(img_path, data2["rect"][0], data2["rect"][1], data2["rect"][2], data2["rect"][3], data2["name"]+".png")
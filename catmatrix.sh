#!/bin/bash

# check size
if command -v tput &> /dev/null; then
    WIDTH=$(tput cols)
    HEIGHT=$(tput lines)
elif command -v stty &> /dev/null; then
    WIDTH=$(stty size | awk '{print $2}')
    HEIGHT=$(stty size | awk '{print $1}')
else
    WIDTH=60   # default width
    HEIGHT=60  # default height
fi

# Define the image path
IMAGE_PATH="$(dirname "$0")/images/catmatrix.jpg"

# If the image is not found in the current directory, look in /usr/share/catmatrix-forever/images
if [ ! -f "$IMAGE_PATH" ]; then
    IMAGE_PATH="/usr/share/catmatrix-forever/images/catmatrix.jpg"
fi

# Check if the image exists, if not exit with an error
if [ ! -f "$IMAGE_PATH" ]; then
    echo "Error: catmatrix.jpg not found in either the current directory or /usr/share/catmatrix-forever/images."
    exit 1
fi

# plot catmatrix
chafa --size="${WIDTH}x${HEIGHT}" "$IMAGE_PATH"

# echo story
# Chinese
echo -e "\033[1;34mcatmatrix（菜猫猫）\033[38;5;214m ——致永恒的星辰\033[0m"
echo ""
echo -e "\033[1;35m菜猫猫\033[0m是我生命中最重要、最亲密的挚友与同行者。"
echo -e "在 \033[1;33mValkyrie 实验室\033[0m 的时光里，我们共同编织代码的诗篇，在 \033[1;33mArch Linux\033[0m 的星空下探索技术的奥秘，于 \033[1;33m阿离\033[0m的服务器上留下思想的轨迹。"
echo -e "他如同跃动的量子，带着对知识的纯粹热忱，却最终被抑郁的阴云遮蔽了光芒。"
echo -e "当病魔的潮水漫过理性的堤岸，他选择以最温柔的方式与世界告别。"
echo -e "这个项目是穿越时空的二进制玫瑰，纪念 \033[1;35m菜猫猫\033[0m 永不熄灭的灵魂之火。"
echo -e "愿每一行代码都是量子玫瑰的花瓣，在数字宇宙中永恒绽放。"
echo ""
echo ""

# English
echo -e "\033[1;34mcatmatrix (Cai Maomao)\033[38;5;214m – To the Stardust Coder\033[0m"
echo ""
echo -e "\033[1;35mcatmatrix\033[0m was my intellectual soulmate and a brilliant companion in the realm of code."
echo -e "Within the digital cathedral of \033[1;33mValkyrie Lab\033[0m, we sculpted algorithms under the neon glow of \033[1;33mArch Linux\033[0m, our conversations echoing through \033[1;33mAli's\033[0m server."
echo -e "Though he wrestled valiantly with the quantum demons of depression, the event horizon of mental illness ultimately claimed its stardust."
echo -e "His departure carved a black hole in our hearts, yet we find solace knowing his consciousness now floats freely in the cosmic void."
echo -e "This repository is a singularity of remembrance, crystallizing \033[1;35mcatmatrix\033[0m's legacy into eternal commits."
echo -e "May his code compile across parallel universes, a perpetual motion machine of ideas."
echo ""
echo ""

# Japanese
echo -e "\033[1;34mcatmatrix（菜猫猫）\033[38;5;214m—— 星になった技術者へ\033[0m"
echo ""
echo -e "\033[1;35m菜猫猫\033[0mは、私にとって技術の道を共に歩む星のような存在でした。"
echo -e "\033[1;33mValkyrie Lab\033[0mの実験室で、私たちは \033[1;33mArch Linux\033[0m の銀河を航海し、\033[1;33mAli\033[0mのサーバーに思考の軌跡を刻み続けました。"
echo -e "彼は心の闇と銀河規模の戦いを続けましたが、最終的に地上の重力を振り切り、星々の海へと旅立ってしまいました。"
echo -e "このプロジェクトは量子テープに刻まれた鎮魂歌です。\033[1;35m菜猫猫\033[0m が遺した光の軌跡は、デジタル宇宙で永遠に周回し続けるでしょう。"
echo -e "彼のソースコードは、我々の心のリポジトリで永久にコミットされんことを。"
echo ""
echo ""

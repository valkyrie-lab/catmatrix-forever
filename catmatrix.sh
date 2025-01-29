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
echo -e "\033[1;34mcatmatrix（菜猫猫）——纪念一位挚友\033[0m"
echo ""
echo -e "\033[1;35m菜猫猫\033[0m是我最重要、最亲密的朋友之一。"
echo -e "我们同属 \033[1;33mValkyrie 实验室\033[0m，在一起的日子里，共同探讨了许多关于 \033[1;33mLinux\033[0m，尤其是 \033[1;33mArch\033[0m 的知识。"
echo -e "他因抑郁症不得不中途辍学，最终在与病魔的斗争中倒下。"
echo -e "他的离去带来了无尽的悲伤，但也意味着他终于摆脱了痛苦，得到了内心真正的宁静与和平。"
echo -e "谨以此项目纪念 \033[1;35m菜猫猫\033[0m，也纪念我们共同度过的美好时光。"
echo -e "愿他的精神和热爱，永远留存在我们的记忆之中。"
echo ""
echo ""

# English
echo -e "\033[1;34mcatmatrix (Cai Maomao) – In Memory of a Dear Friend\033[0m"
echo ""
echo -e "\033[1;35mcatmatrix (Cai Maomao)\033[0m was one of my closest and most important friends."
echo -e "We were both part of \033[1;33mValkyrie Lab\033[0m, where we spent countless hours discussing Linux—especially \033[1;33mArch\033[0m—and working on exciting projects together on Ali’s server."
echo -e "He had to drop out of university due to depression, but his condition gradually worsened over time."
echo -e "In the end, he lost his battle against the illness."
echo -e "His passing has left us in deep sorrow, yet it also means the end of his suffering—he has finally found true peace and tranquility."
echo -e "This project is dedicated to the memory of \033[1;35mcatmatrix\033[0m and the precious moments we shared."
echo -e "May his passion and spirit live on in our hearts forever."
echo ""
echo ""

# Japanese
echo -e "\033[1;34mcatmatrix（菜猫猫）– 親友への追悼\033[0m"
echo ""
echo -e "\033[1;35mcatmatrix（菜猫猫）\033[0mは、私にとって最も大切で親しい友人の一人です。"
echo -e "私たちは共に \033[1;33mValkyrie 実験室\033[0mに所属し、一緒に多くのLinux、特に \033[1;33mArch\033[0mに関する知識を議論しました。"
echo -e "彼は鬱病により大学を中退しましたが、病状は徐々に悪化し、最終的には病魔との闘いに敗れてしまいました。"
echo -e "彼の死は私たちに計り知れない悲しみをもたらしましたが、同時に彼の苦しみが終わり、ついに内なる平穏と安らぎを得たことを意味しています。"
echo -e "このプロジェクトは、\033[1;35mcatmatrix\033[0mを記念し、共に過ごした貴重な時を思い出すために捧げます。"
echo -e "彼の精神と情熱が、私たちの心の中で永遠に生き続けることを願っています。"

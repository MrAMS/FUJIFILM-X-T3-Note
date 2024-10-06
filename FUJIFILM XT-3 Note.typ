#set text(
  lang: "zh",
  font: "Noto Serif CJK SC"
)
#set heading(numbering: "1.")
#show outline.entry.where(
  level: 1
): it => {
  v(12pt, weak: true)
  strong(it)
}
#show outline.entry.where(
  level: 2
): it => {
  h(1em)
  it
}
#let wordblock(term) = {
  block(
    fill: luma(230),
    inset: 8pt,
    radius: 4pt,
    term,
  )
}
#let amazed(term, color: blue) = {
  text(color, box[✨ #term ✨])
}

#align(center, text(17pt)[
  *富士XT-3个人实践*
])

#outline()

#pagebreak()

#show: rest => columns(2, rest)

= 曝光

== 光圈

光圈是用于控制镜头孔径大小的部件，通常用F值（镜头的焦距除以光圈口径）表示。

#figure(
  image("imgs/F.png", width: 60%),
  caption: [不同F值对应的光圈大小 @ref_pic_F],
) <F>

如@F 所示，F值越大，光圈越小，进光量越小。

#figure(
  image("imgs/景深与光圈和焦距的关系.png", width: 80%),
  caption: [景深与光圈的关系 @ref_pic_DOF],
) <DOF>

同时，F值越大，会导致景深越深，背景虚化效果越小。

#figure(
  image("imgs/景深和焦距的关系.png", width: 80%),
  caption: [景深与焦距的关系 @ref_pic_DOF],
) <DOF2>

值得注意的是，除了小F值（大光圈）能带来背景虚化效果之外，焦距更长、更近的拍摄距离也能带来更大的背景虚化效果。

富士相机支持*模式 A：光圈优先 AE*，此模式下相机会根据用户选择的光圈自动调整快门速度以获得理想曝光。


#figure(
  image("imgs/模式A.png", width: 80%),
  caption: [开启光圈优模式(A) @ref_pic_fujifilm_mode],
) <MODA>

== 快门

快门是照相机中控制曝光时间的重要元件，快门值N即表示快门时间为$1/N$秒。快门值越大，快门时间越短，进光量越少，照片越暗，但同时更容易捕捉到动作瞬间。

拍摄运动中的物体时，应该使用高速快门；但需要拍摄星轨，光绘等效果时，则需要使用低速快门。

富士相机支持*模式 S：快门优先 AE*，此模式下相机会根据用户选择的快门速度自动调整光圈以获得理想曝光，注意要将光圈调整至自动(A)。

#figure(
  image("imgs/MODS.png", width: 80%),
  caption: [开启快门优模式(S) @ref_pic_fujifilm_mode],
) <MODS>

除此之外，富士相机快门速度还支持长时间曝光的T门(T)、更长时间曝光的B门(B)，建议使用三脚架。

== ISO

ISO即感光度，表示相机对光线的敏感度。

高ISO值可用于光线不足时提高照片亮度，但在较高值下会出现噪声、颗粒等问题。

#figure(
  image("imgs/ISO和画面质量的关系.png", width: 80%),
  caption: [不同ISO下的画面 @ref_pic_ISO],
) <ISO>

富士相机支持针对拍摄环境自动调整感光度。

#figure(
  image("imgs/自动ISO.png", width: 50%),
  caption: [自动感光度模式(A) @ref_pic_fujifilm_ISO],
) <ISO_MODA>

使用自动感光度模式下，相机自动在默认值和最大值之间选择感光度值；仅当获取理想曝光需要的快门速度将低于最低快门速度中的所选值时，感光度才会提高到默认值以上。@ref_pic_fujifilm_ISO 在*拍摄设置 > ISO 自动设定*有三个可自定义的自动ISO预设。

== 曝光补偿

#figure(
  image("imgs/曝光补偿.png", width: 50%),
  caption: [曝光补偿拨盘 @ref_pic_fujifilm_exposure],
) <ISO_M>

通过旋转曝光补偿拨盘调整曝光。如果采用光圈优模式(A)，则相机自动调整快门速度；若为快门优模式(S)，则自动调整光圈大小。

#v(2em)

= 胶片模拟

#figure(
  image("imgs/胶片模拟坐标图.png", width: 100%),
  caption: [富士胶片模拟坐标图 @ref_pic_fujifilm_film_simulation],
)

== PROVIA/标准

标准色彩。

== Velvia/鲜艳

高饱和度、高对比度。

#wordblock[
Velvia的精髓是通过更胜于现实的*色彩*向观者传达出特定的*情绪*。

The epitome of Velvia is the communication through *color* between the photographer and the viewer. There are certain emotions that only *"Image Color"* can deliver.@ref_pic_fujifilm_film_simulation_Velvia 
]

== CLASSIC CHROME

低饱和度，暗部高对比度。

#wordblock[*克制*的色彩饱和度以彰显*故事*本身。

CLASSIC CHROME *omits* the element of color in order to make the *story* you want to tell stand out.@ref_pic_fujifilm_film_simulation_CLASSIC_CHROME]

== PRO Neg. Std

更柔和的色调，更柔和的肤色。依赖良好的灯光，需要更多时间精细考量，适合工作室肖像拍摄。

== PRO Neg. Hi

相较于PRO Neg. Std，*PRO Neg. Hi*拥有更鲜明的色调，但仍保持着柔和的肖像肤色，同时对灯光要求更宽容，适合街头、抓拍摄影。

== ASTIA/柔和

与PRO Neg.类似都是为了更柔和的肖像肤色，但*ASTIA*增加了暗部的对比度，对灯光的宽容度更高，并且饱和度更高，能更好体现出衣服的色彩。

== ETERNA/影院

使用色彩柔和且阴影较深的色调拍摄动画。

== ACROS

拍摄高渐变效果和高锐度的黑白照片。

#v(2em)

= 图像质量参数

此章介绍富士相机 *图像质量设置* 选项卡中的部分参数。

== 色彩

色彩的加减是整体饱和度的加减@ref_txt_settings，可以让颜色“更亮”。

== 白平衡

白平衡用于色调调节，原义是“在任何光源下都能将白色物体还原为白色”，不过也可以利用白平衡达到特殊的画面氛围效果。

富士相机可以自动调整白平衡，或者选择其他特定场景下的白平衡，见#link("https://fujifilm-dsc.com/zhs/manual/x-t3/menu_shooting/image_quality_setting/index.html")[手册详细描述]。

其中，色温是对光源色彩的一种客观衡量标准，以 Kelvin(K)表示。较低色温偏暖，带有黄色或红色氛围；而较高色温偏冷，带有蓝色调。

另外，当选择一个白平衡选项后，会显示微调白平衡界面，不同的白平衡偏移会带来不同的色彩风格，如@white_balance。

#figure(
  image("imgs/白平衡偏移.png", width: 80%),
  caption: [白平衡偏移 @ref_pic_white_balance],
) <white_balance>

== 锐度

锐化或柔化轮廓。锐度值越小，图片的梦幻感、蒙眬感更强。

== 降噪功能

降噪功能可以降低画面噪点，但是会增加画面“涂抹感”。在ISO值较低时，可以降低降噪值，让画面细节更丰富；在ISO值较高时，适当增加降噪值，以减少画面噪点@ref_txt_reduce_noise。

== 动态范围

用于恢复高光细节。较高值用于在拍摄高对比度场景（如包括阳光和较深阴影的场景）时降低高光区域的亮度，减少高光中细节的丢失。

值得注意的是，较高的动态范围会导致画质的轻微下降。

== 高光色调和阴影色调

降低高光色调即降低高光亮度，降低阴影色调即增加暗部亮度。可与*动态范围*叠加使用。

== D范围优先级

用于在拍摄高对比度场景时减少高光和阴影中细节的丢失，从而获取自然的效果@ref_txt_fujifilm_film_simulation_image_quality_setting

*D范围优先级*不能和*动态范围*以及*高光、阴影色调*叠加。选项 *强* 一档比*DR400*配合*高光-2阴影-2*在大光比场景下，效果更强@ref_txt_settings。

#v(2em)



#bibliography("ref.yml")
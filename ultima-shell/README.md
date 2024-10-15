# ultima.zsh-theme — theme and settings for Z shell

## **Preview**

![item zsh prompt](https://github.com/egorlem/021011/blob/main/demos/zsh-theme-demo-min.png?raw=true)

---

## **Overview**
### Theme includes prompt settings, vsc_info settings, and zsh completion settings
### **Prompt**

Shell prompt is split into three separate lines. The first line helps to visually 
divide previous output from next prompt. The second line consists of three **segments** and contains all about path. The third is input line. 

### **Path segments**

- **ssh connection** - The badge indicates whether ssh connection is currently established
- **directory** - Current working directory
- **vsc status line** - This segment displays current branch status in the working directory

### **Completion**

Includes completion menu and style settings, caching, setting for ssh host and name suggestion, 
and many other useful settings.

---

## **Installation**

_For Installation you need git_

### **Manual**

1. Clone the repository:

```shell
git clone https://github.com/egorlem/ultima.zsh-theme ~/ultima-shell
```
2. Update your .zshrc file:

```shell
echo 'source ~/ultima-shell/ultima.zsh-theme' >> ~/.zshrc
```

### **Oh My Zsh**

1. Clone the repository:

```shell
git clone https://github.com/egorlem/ultima.zsh-theme ~/ultima-shell
```

2. Move file to oh-my-zsh's theme folder:

```shell
mv ~/ultima-shell/ultima.zsh-theme $ZSH/themes/ultima.zsh-theme
```

3. Go to your `~/.zshrc` file and set `ZSH_THEME=ultima`

---

## **Recommended settings and compatibility**

### Color schema

[Color scheme for term](https://github.com/egorlem/guezwhoz-scheme/blob/main/color-scheme/guezwhoz-scheme.yaml). Mac Os users can set color scheme for iTerm2 from [repo](https://github.com/egorlem/guezwhoz-iterm2-theme)

### Fonts

Not all fonts contain U+203a unicode unless your system supports **Single Right-Pointing Angle Quotation Mark** install one of the standard fonts on your system. For example **Arial**, **Consolas**, **Impact**. 

For comfortable work, I usually use [JetBrains Mono](https://www.jetbrains.com/lp/mono/). 
The font is already available characters that are used in the theme and are ideal for full compatibility.

---

## **Extra**

You can find this color scheme for other terminal emulators in the [mbadolato](https://github.com/mbadolato/iTerm2-Color-Schemes) color scheme repository

---

License [MIT](https://github.com/egorlem/ultima.zsh-theme/blob/4e47c5242a9ec2231a7fc61245059573b67bc53f/LICENSE.md) © [Egor Lem](https://egorlem.com/)

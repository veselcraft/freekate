.class public Lcom/perm/kate/theme/ThemeColorsHelper;
.super Ljava/lang/Object;
.source "ThemeColorsHelper.java"


# static fields
.field private static final DEFAULT_COFFEE_THEME_COLORS:[I

.field private static final DEFAULT_DARK_THEME_COLORS:[I

.field private static final DEFAULT_GREEN_THEME_COLORS:[I

.field private static final DEFAULT_HOLO_THEME_COLORS:[I

.field private static final DEFAULT_INDIGO_THEME_COLORS:[I

.field private static final DEFAULT_LIGHT_GREEN_THEME_COLORS:[I

.field private static final DEFAULT_LIGHT_THEME_COLORS:[I

.field private static final DEFAULT_MATERIAL_DARK_THEME_COLORS:[I

.field private static final DEFAULT_METAL_THEME_COLORS:[I

.field private static final DEFAULT_OLD_LIGHT_THEME_COLORS:[I

.field private static final DEFAULT_ORANGE_THEME_COLORS:[I

.field private static final DEFAULT_PINK_THEME_COLORS:[I

.field private static final DEFAULT_TRANSPARENT_THEME_COLORS:[I


# instance fields
.field private THEME_COLORS:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x3

    .line 28
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/perm/kate/theme/ThemeColorsHelper;->DEFAULT_LIGHT_THEME_COLORS:[I

    .line 34
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/perm/kate/theme/ThemeColorsHelper;->DEFAULT_HOLO_THEME_COLORS:[I

    .line 40
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/perm/kate/theme/ThemeColorsHelper;->DEFAULT_OLD_LIGHT_THEME_COLORS:[I

    .line 46
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/perm/kate/theme/ThemeColorsHelper;->DEFAULT_DARK_THEME_COLORS:[I

    .line 52
    new-array v0, v1, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/perm/kate/theme/ThemeColorsHelper;->DEFAULT_PINK_THEME_COLORS:[I

    .line 58
    new-array v0, v1, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/perm/kate/theme/ThemeColorsHelper;->DEFAULT_GREEN_THEME_COLORS:[I

    .line 64
    new-array v0, v1, [I

    fill-array-data v0, :array_6

    sput-object v0, Lcom/perm/kate/theme/ThemeColorsHelper;->DEFAULT_LIGHT_GREEN_THEME_COLORS:[I

    .line 70
    new-array v0, v1, [I

    fill-array-data v0, :array_7

    sput-object v0, Lcom/perm/kate/theme/ThemeColorsHelper;->DEFAULT_ORANGE_THEME_COLORS:[I

    .line 76
    new-array v0, v1, [I

    fill-array-data v0, :array_8

    sput-object v0, Lcom/perm/kate/theme/ThemeColorsHelper;->DEFAULT_METAL_THEME_COLORS:[I

    .line 82
    new-array v0, v1, [I

    fill-array-data v0, :array_9

    sput-object v0, Lcom/perm/kate/theme/ThemeColorsHelper;->DEFAULT_COFFEE_THEME_COLORS:[I

    .line 88
    new-array v0, v2, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/perm/kate/theme/ThemeColorsHelper;->DEFAULT_INDIGO_THEME_COLORS:[I

    .line 95
    new-array v0, v2, [I

    fill-array-data v0, :array_b

    sput-object v0, Lcom/perm/kate/theme/ThemeColorsHelper;->DEFAULT_MATERIAL_DARK_THEME_COLORS:[I

    .line 103
    new-array v0, v2, [I

    fill-array-data v0, :array_c

    sput-object v0, Lcom/perm/kate/theme/ThemeColorsHelper;->DEFAULT_TRANSPARENT_THEME_COLORS:[I

    return-void

    .line 28
    :array_0
    .array-data 4
        -0xc06020
        -0x111112
        -0x57200c
    .end array-data

    .line 34
    :array_1
    .array-data 4
        -0xfdfdfe
        -0xe0dfdf
        -0xd4856a
    .end array-data

    .line 40
    :array_2
    .array-data 4
        -0xbc9872
        -0x111112
        -0x3f3224
    .end array-data

    .line 46
    :array_3
    .array-data 4
        -0x1000000
        -0xf4f4f5
        -0xe6e6e7
    .end array-data

    .line 52
    :array_4
    .array-data 4
        -0x9345
        -0xd1a14
        -0x4923
    .end array-data

    .line 58
    :array_5
    .array-data 4
        -0xf4e9f5
        -0xefeaf0
        -0xccc7d1
    .end array-data

    .line 64
    :array_6
    .array-data 4
        -0xfc8efd
        -0xf0c5fd
        -0xc09ecb
    .end array-data

    .line 70
    :array_7
    .array-data 4
        -0x8c00
        -0x8171f
        -0xd304f
    .end array-data

    .line 76
    :array_8
    .array-data 4
        -0xb9a79c
        -0xcec1c0
        -0x7e7474
    .end array-data

    .line 82
    :array_9
    .array-data 4
        -0xcce8f7
        -0xf0f7fb
        -0x99c8ea
    .end array-data

    .line 88
    :array_a
    .array-data 4
        -0xde690d
        -0x111112
        -0x262627
        -0xbf7f
    .end array-data

    .line 95
    :array_b
    .array-data 4
        -0xde690d
        -0x111112
        -0x262627
        -0xbf7f
    .end array-data

    .line 103
    :array_c
    .array-data 4
        0x60000000
        0x60000000
        0x60000000
        -0xbf7f
    .end array-data
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "theme"    # I
    .param p2, "key_theme"    # Ljava/lang/String;

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    invoke-virtual {p0, p1}, Lcom/perm/kate/theme/ThemeColorsHelper;->setDefaultColors(I)V

    .line 118
    invoke-virtual {p0, p2}, Lcom/perm/kate/theme/ThemeColorsHelper;->loadThemeFromSettings(Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method public static getDefaultColor(II)I
    .locals 1
    .param p0, "theme"    # I
    .param p1, "index"    # I

    .prologue
    .line 161
    packed-switch p0, :pswitch_data_0

    .line 187
    :pswitch_0
    sget-object v0, Lcom/perm/kate/theme/ThemeColorsHelper;->DEFAULT_LIGHT_THEME_COLORS:[I

    aget v0, v0, p1

    :goto_0
    return v0

    .line 163
    :pswitch_1
    sget-object v0, Lcom/perm/kate/theme/ThemeColorsHelper;->DEFAULT_HOLO_THEME_COLORS:[I

    aget v0, v0, p1

    goto :goto_0

    .line 165
    :pswitch_2
    sget-object v0, Lcom/perm/kate/theme/ThemeColorsHelper;->DEFAULT_OLD_LIGHT_THEME_COLORS:[I

    aget v0, v0, p1

    goto :goto_0

    .line 167
    :pswitch_3
    sget-object v0, Lcom/perm/kate/theme/ThemeColorsHelper;->DEFAULT_DARK_THEME_COLORS:[I

    aget v0, v0, p1

    goto :goto_0

    .line 169
    :pswitch_4
    sget-object v0, Lcom/perm/kate/theme/ThemeColorsHelper;->DEFAULT_PINK_THEME_COLORS:[I

    aget v0, v0, p1

    goto :goto_0

    .line 171
    :pswitch_5
    sget-object v0, Lcom/perm/kate/theme/ThemeColorsHelper;->DEFAULT_GREEN_THEME_COLORS:[I

    aget v0, v0, p1

    goto :goto_0

    .line 173
    :pswitch_6
    sget-object v0, Lcom/perm/kate/theme/ThemeColorsHelper;->DEFAULT_LIGHT_GREEN_THEME_COLORS:[I

    aget v0, v0, p1

    goto :goto_0

    .line 175
    :pswitch_7
    sget-object v0, Lcom/perm/kate/theme/ThemeColorsHelper;->DEFAULT_ORANGE_THEME_COLORS:[I

    aget v0, v0, p1

    goto :goto_0

    .line 177
    :pswitch_8
    sget-object v0, Lcom/perm/kate/theme/ThemeColorsHelper;->DEFAULT_METAL_THEME_COLORS:[I

    aget v0, v0, p1

    goto :goto_0

    .line 179
    :pswitch_9
    sget-object v0, Lcom/perm/kate/theme/ThemeColorsHelper;->DEFAULT_COFFEE_THEME_COLORS:[I

    aget v0, v0, p1

    goto :goto_0

    .line 181
    :pswitch_a
    sget-object v0, Lcom/perm/kate/theme/ThemeColorsHelper;->DEFAULT_INDIGO_THEME_COLORS:[I

    aget v0, v0, p1

    goto :goto_0

    .line 183
    :pswitch_b
    sget-object v0, Lcom/perm/kate/theme/ThemeColorsHelper;->DEFAULT_MATERIAL_DARK_THEME_COLORS:[I

    aget v0, v0, p1

    goto :goto_0

    .line 185
    :pswitch_c
    sget-object v0, Lcom/perm/kate/theme/ThemeColorsHelper;->DEFAULT_TRANSPARENT_THEME_COLORS:[I

    aget v0, v0, p1

    goto :goto_0

    .line 161
    :pswitch_data_0
    .packed-switch 0x7f0a00bf
        :pswitch_9
        :pswitch_3
        :pswitch_5
        :pswitch_1
        :pswitch_a
        :pswitch_0
        :pswitch_6
        :pswitch_b
        :pswitch_8
        :pswitch_2
        :pswitch_7
        :pswitch_4
        :pswitch_0
        :pswitch_c
    .end packed-switch
.end method

.method public static getEditableColorCount(I)I
    .locals 1
    .param p0, "theme"    # I

    .prologue
    .line 18
    invoke-static {p0}, Lcom/perm/kate/theme/ThemeColorsHelper;->isMaterial(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getFloatingActionButtonBg()I
    .locals 2

    .prologue
    const v0, 0x7f0200c6

    .line 228
    sget v1, Lcom/perm/kate/BaseActivity;->Theme:I

    packed-switch v1, :pswitch_data_0

    .line 247
    :pswitch_0
    const v0, 0x7f0200c3

    :goto_0
    :pswitch_1
    return v0

    .line 230
    :pswitch_2
    const v0, 0x7f0200c4

    goto :goto_0

    .line 232
    :pswitch_3
    const v0, 0x7f0200c7

    goto :goto_0

    .line 234
    :pswitch_4
    const v0, 0x7f0200c9

    goto :goto_0

    .line 236
    :pswitch_5
    const v0, 0x7f0200c8

    goto :goto_0

    .line 239
    :pswitch_6
    const v0, 0x7f0200c5

    goto :goto_0

    .line 228
    :pswitch_data_0
    .packed-switch 0x7f0a00bf
        :pswitch_2
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_6
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getNotifyBgColor(I)I
    .locals 2
    .param p0, "theme"    # I

    .prologue
    .line 254
    const v0, 0x7f0a00c2

    if-ne p0, v0, :cond_0

    .line 255
    const v0, -0xc06020

    .line 260
    :goto_0
    return v0

    .line 256
    :cond_0
    const v0, 0x7f0a00c0

    if-ne p0, v0, :cond_1

    .line 257
    const v0, -0xbc9872

    goto :goto_0

    .line 258
    :cond_1
    const v0, 0x7f0a00c1

    if-ne p0, v0, :cond_2

    .line 259
    const v0, -0xfc8efd

    goto :goto_0

    .line 260
    :cond_2
    invoke-static {p0}, Lcom/perm/kate/theme/ThemeColorsHelper;->isMaterial(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perm/kate/theme/ColorTheme;->Colors()[I

    move-result-object v0

    const/4 v1, 0x1

    aget v0, v0, v1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/perm/kate/theme/ThemeColorsHelper;->getDefaultColor(II)I

    move-result v0

    goto :goto_0
.end method

.method public static getSeekBarColor(I)I
    .locals 4
    .param p0, "theme"    # I

    .prologue
    const/4 v2, 0x0

    .line 266
    invoke-static {p0}, Lcom/perm/kate/theme/ThemeColorsHelper;->isMaterial(I)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v1, 0x1

    .line 267
    .local v1, "index_color":I
    :goto_0
    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v3

    invoke-virtual {v3}, Lcom/perm/kate/theme/ColorTheme;->Colors()[I

    move-result-object v3

    aget v0, v3, v1

    .line 269
    .local v0, "color":I
    const v3, 0x7f0a00c2

    if-ne p0, v3, :cond_0

    sget-object v3, Lcom/perm/kate/theme/ThemeColorsHelper;->DEFAULT_HOLO_THEME_COLORS:[I

    aget v3, v3, v2

    if-ne v0, v3, :cond_0

    .line 270
    const v0, -0xc06020

    .line 271
    :cond_0
    const v3, 0x7f0a00c0

    if-ne p0, v3, :cond_1

    sget-object v3, Lcom/perm/kate/theme/ThemeColorsHelper;->DEFAULT_DARK_THEME_COLORS:[I

    aget v3, v3, v2

    if-ne v0, v3, :cond_1

    .line 272
    const v0, -0xc06020

    .line 273
    :cond_1
    const v3, 0x7f0a00c1

    if-ne p0, v3, :cond_2

    sget-object v3, Lcom/perm/kate/theme/ThemeColorsHelper;->DEFAULT_GREEN_THEME_COLORS:[I

    aget v2, v3, v2

    if-ne v0, v2, :cond_2

    .line 274
    const v0, -0xfe7dff

    .line 275
    :cond_2
    return v0

    .end local v0    # "color":I
    .end local v1    # "index_color":I
    :cond_3
    move v1, v2

    .line 266
    goto :goto_0
.end method

.method public static getTabletTabItemTextColor(I)Landroid/content/res/ColorStateList;
    .locals 10
    .param p0, "theme"    # I

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 193
    invoke-static {}, Lcom/perm/kate/theme/ThemeColorsHelper;->isLightTheme()Z

    move-result v2

    if-eqz v2, :cond_0

    const/high16 v1, -0x1000000

    .line 194
    .local v1, "default_color":I
    :goto_0
    new-instance v0, Landroid/content/res/ColorStateList;

    new-array v2, v9, [[I

    new-array v3, v6, [I

    const v4, 0x10102fe

    aput v4, v3, v5

    aput-object v3, v2, v5

    new-array v3, v6, [I

    const v4, -0x10102fe

    aput v4, v3, v5

    aput-object v3, v2, v6

    new-array v3, v6, [I

    const v4, 0x10100a7

    aput v4, v3, v5

    aput-object v3, v2, v7

    new-array v3, v7, [I

    fill-array-data v3, :array_0

    aput-object v3, v2, v8

    new-array v3, v9, [I

    const/4 v4, -0x1

    aput v4, v3, v5

    aput v1, v3, v6

    aput v1, v3, v7

    aput v1, v3, v8

    invoke-direct {v0, v2, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 208
    .local v0, "color_state":Landroid/content/res/ColorStateList;
    return-object v0

    .line 193
    .end local v0    # "color_state":Landroid/content/res/ColorStateList;
    .end local v1    # "default_color":I
    :cond_0
    const v1, -0x333334

    goto :goto_0

    .line 194
    :array_0
    .array-data 4
        0x10102fe
        0x10100a7
    .end array-data
.end method

.method public static getTextColorByTheme(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 213
    invoke-static {}, Lcom/perm/kate/theme/ThemeColorsHelper;->isLightTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c009c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 216
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0096

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0
.end method

.method public static isLightTheme()Z
    .locals 2

    .prologue
    .line 220
    sget v0, Lcom/perm/kate/BaseActivity;->Theme:I

    const v1, 0x7f0a00c4

    if-eq v0, v1, :cond_0

    sget v0, Lcom/perm/kate/BaseActivity;->Theme:I

    const v1, 0x7f0a00c8

    if-eq v0, v1, :cond_0

    sget v0, Lcom/perm/kate/BaseActivity;->Theme:I

    const v1, 0x7f0a00ca

    if-eq v0, v1, :cond_0

    sget v0, Lcom/perm/kate/BaseActivity;->Theme:I

    const v1, 0x7f0a00c9

    if-eq v0, v1, :cond_0

    sget v0, Lcom/perm/kate/BaseActivity;->Theme:I

    const v1, 0x7f0a00c3

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMaterial(I)Z
    .locals 1
    .param p0, "theme"    # I

    .prologue
    .line 25
    const v0, 0x7f0a00c3

    if-eq p0, v0, :cond_0

    const v0, 0x7f0a00c6

    if-eq p0, v0, :cond_0

    const v0, 0x7f0a00cc

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getThemeColors()[I
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/perm/kate/theme/ThemeColorsHelper;->THEME_COLORS:[I

    return-object v0
.end method

.method public loadThemeFromSettings(Ljava/lang/String;)V
    .locals 5
    .param p1, "key_theme"    # Ljava/lang/String;

    .prologue
    .line 133
    sget-object v3, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v3, p1}, Lcom/perm/kate/theme/ThemeSettingsHelper;->getThemeColors(Landroid/content/Context;Ljava/lang/String;)[I

    move-result-object v2

    .line 134
    .local v2, "themecolors":[I
    if-eqz v2, :cond_1

    .line 135
    iget-object v3, p0, Lcom/perm/kate/theme/ThemeColorsHelper;->THEME_COLORS:[I

    array-length v1, v3

    .line 136
    .local v1, "len":I
    array-length v3, v2

    if-ge v3, v1, :cond_0

    .line 137
    array-length v1, v2

    .line 138
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 139
    iget-object v3, p0, Lcom/perm/kate/theme/ThemeColorsHelper;->THEME_COLORS:[I

    aget v4, v2, v0

    aput v4, v3, v0

    .line 138
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 142
    .end local v0    # "i":I
    .end local v1    # "len":I
    :cond_1
    return-void
.end method

.method public saveThemeFromSettings()V
    .locals 2

    .prologue
    .line 145
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    iget-object v1, p0, Lcom/perm/kate/theme/ThemeColorsHelper;->THEME_COLORS:[I

    invoke-static {v0, v1}, Lcom/perm/kate/theme/ThemeSettingsHelper;->setThemeColors(Landroid/content/Context;[I)V

    .line 146
    return-void
.end method

.method public setColors([I)V
    .locals 4
    .param p1, "colors"    # [I

    .prologue
    .line 149
    if-eqz p1, :cond_2

    .line 150
    iget-object v2, p0, Lcom/perm/kate/theme/ThemeColorsHelper;->THEME_COLORS:[I

    array-length v1, v2

    .line 151
    .local v1, "len":I
    array-length v2, p1

    if-ge v2, v1, :cond_0

    .line 152
    array-length v1, p1

    .line 153
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 154
    iget-object v2, p0, Lcom/perm/kate/theme/ThemeColorsHelper;->THEME_COLORS:[I

    aget v3, p1, v0

    aput v3, v2, v0

    .line 153
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 156
    :cond_1
    invoke-virtual {p0}, Lcom/perm/kate/theme/ThemeColorsHelper;->saveThemeFromSettings()V

    .line 158
    .end local v0    # "i":I
    .end local v1    # "len":I
    :cond_2
    return-void
.end method

.method public setDefaultColors(I)V
    .locals 3
    .param p1, "theme"    # I

    .prologue
    const/4 v2, 0x0

    .line 122
    invoke-static {p1}, Lcom/perm/kate/theme/ThemeColorsHelper;->getEditableColorCount(I)I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/perm/kate/theme/ThemeColorsHelper;->THEME_COLORS:[I

    .line 123
    iget-object v0, p0, Lcom/perm/kate/theme/ThemeColorsHelper;->THEME_COLORS:[I

    invoke-static {p1, v2}, Lcom/perm/kate/theme/ThemeColorsHelper;->getDefaultColor(II)I

    move-result v1

    aput v1, v0, v2

    .line 124
    invoke-static {p1}, Lcom/perm/kate/theme/ThemeColorsHelper;->isMaterial(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/perm/kate/theme/ThemeColorsHelper;->THEME_COLORS:[I

    const/4 v1, 0x1

    const/4 v2, 0x3

    invoke-static {p1, v2}, Lcom/perm/kate/theme/ThemeColorsHelper;->getDefaultColor(II)I

    move-result v2

    aput v2, v0, v1

    .line 126
    :cond_0
    return-void
.end method

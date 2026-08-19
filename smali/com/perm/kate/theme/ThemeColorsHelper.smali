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
    .locals 2

    const/4 v0, 0x3

    new-array v1, v0, [I

    .line 28
    fill-array-data v1, :array_0

    sput-object v1, Lcom/perm/kate/theme/ThemeColorsHelper;->DEFAULT_LIGHT_THEME_COLORS:[I

    new-array v1, v0, [I

    .line 34
    fill-array-data v1, :array_1

    sput-object v1, Lcom/perm/kate/theme/ThemeColorsHelper;->DEFAULT_HOLO_THEME_COLORS:[I

    new-array v1, v0, [I

    .line 40
    fill-array-data v1, :array_2

    sput-object v1, Lcom/perm/kate/theme/ThemeColorsHelper;->DEFAULT_OLD_LIGHT_THEME_COLORS:[I

    new-array v1, v0, [I

    .line 46
    fill-array-data v1, :array_3

    sput-object v1, Lcom/perm/kate/theme/ThemeColorsHelper;->DEFAULT_DARK_THEME_COLORS:[I

    new-array v1, v0, [I

    .line 52
    fill-array-data v1, :array_4

    sput-object v1, Lcom/perm/kate/theme/ThemeColorsHelper;->DEFAULT_PINK_THEME_COLORS:[I

    new-array v1, v0, [I

    .line 58
    fill-array-data v1, :array_5

    sput-object v1, Lcom/perm/kate/theme/ThemeColorsHelper;->DEFAULT_GREEN_THEME_COLORS:[I

    new-array v1, v0, [I

    .line 64
    fill-array-data v1, :array_6

    sput-object v1, Lcom/perm/kate/theme/ThemeColorsHelper;->DEFAULT_LIGHT_GREEN_THEME_COLORS:[I

    new-array v1, v0, [I

    .line 70
    fill-array-data v1, :array_7

    sput-object v1, Lcom/perm/kate/theme/ThemeColorsHelper;->DEFAULT_ORANGE_THEME_COLORS:[I

    new-array v1, v0, [I

    .line 76
    fill-array-data v1, :array_8

    sput-object v1, Lcom/perm/kate/theme/ThemeColorsHelper;->DEFAULT_METAL_THEME_COLORS:[I

    new-array v0, v0, [I

    .line 82
    fill-array-data v0, :array_9

    sput-object v0, Lcom/perm/kate/theme/ThemeColorsHelper;->DEFAULT_COFFEE_THEME_COLORS:[I

    const/4 v0, 0x4

    new-array v1, v0, [I

    .line 88
    fill-array-data v1, :array_a

    sput-object v1, Lcom/perm/kate/theme/ThemeColorsHelper;->DEFAULT_INDIGO_THEME_COLORS:[I

    new-array v1, v0, [I

    .line 95
    fill-array-data v1, :array_b

    sput-object v1, Lcom/perm/kate/theme/ThemeColorsHelper;->DEFAULT_MATERIAL_DARK_THEME_COLORS:[I

    new-array v0, v0, [I

    .line 103
    fill-array-data v0, :array_c

    sput-object v0, Lcom/perm/kate/theme/ThemeColorsHelper;->DEFAULT_TRANSPARENT_THEME_COLORS:[I

    return-void

    :array_0
    .array-data 4
        -0xc06020
        -0x111112
        -0x57200c
    .end array-data

    :array_1
    .array-data 4
        -0xfdfdfe
        -0xe0dfdf
        -0xd4856a
    .end array-data

    :array_2
    .array-data 4
        -0xbc9872
        -0x111112
        -0x3f3224
    .end array-data

    :array_3
    .array-data 4
        -0x1000000
        -0xf4f4f5
        -0xe6e6e7
    .end array-data

    :array_4
    .array-data 4
        -0x9345
        -0xd1a14
        -0x4923
    .end array-data

    :array_5
    .array-data 4
        -0xf4e9f5
        -0xefeaf0
        -0xccc7d1
    .end array-data

    :array_6
    .array-data 4
        -0xfc8efd
        -0xf0c5fd
        -0xc09ecb
    .end array-data

    :array_7
    .array-data 4
        -0x8c00
        -0x8171f
        -0xd304f
    .end array-data

    :array_8
    .array-data 4
        -0xb9a79c
        -0xcec1c0
        -0x7e7474
    .end array-data

    :array_9
    .array-data 4
        -0xcce8f7
        -0xf0f7fb
        -0x99c8ea
    .end array-data

    :array_a
    .array-data 4
        -0xde690d
        -0x111112
        -0x262627
        -0xbf7f
    .end array-data

    :array_b
    .array-data 4
        -0xde690d
        -0x111112
        -0x262627
        -0xbf7f
    .end array-data

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

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    invoke-virtual {p0, p1}, Lcom/perm/kate/theme/ThemeColorsHelper;->setDefaultColors(I)V

    .line 118
    invoke-virtual {p0, p2}, Lcom/perm/kate/theme/ThemeColorsHelper;->loadThemeFromSettings(Ljava/lang/String;)V

    return-void
.end method

.method public static getDefaultColor(II)I
    .locals 0

    sparse-switch p0, :sswitch_data_0

    .line 187
    sget-object p0, Lcom/perm/kate/theme/ThemeColorsHelper;->DEFAULT_LIGHT_THEME_COLORS:[I

    aget p0, p0, p1

    return p0

    .line 185
    :sswitch_0
    sget-object p0, Lcom/perm/kate/theme/ThemeColorsHelper;->DEFAULT_TRANSPARENT_THEME_COLORS:[I

    aget p0, p0, p1

    return p0

    .line 169
    :sswitch_1
    sget-object p0, Lcom/perm/kate/theme/ThemeColorsHelper;->DEFAULT_PINK_THEME_COLORS:[I

    aget p0, p0, p1

    return p0

    .line 175
    :sswitch_2
    sget-object p0, Lcom/perm/kate/theme/ThemeColorsHelper;->DEFAULT_ORANGE_THEME_COLORS:[I

    aget p0, p0, p1

    return p0

    .line 165
    :sswitch_3
    sget-object p0, Lcom/perm/kate/theme/ThemeColorsHelper;->DEFAULT_OLD_LIGHT_THEME_COLORS:[I

    aget p0, p0, p1

    return p0

    .line 177
    :sswitch_4
    sget-object p0, Lcom/perm/kate/theme/ThemeColorsHelper;->DEFAULT_METAL_THEME_COLORS:[I

    aget p0, p0, p1

    return p0

    .line 183
    :sswitch_5
    sget-object p0, Lcom/perm/kate/theme/ThemeColorsHelper;->DEFAULT_MATERIAL_DARK_THEME_COLORS:[I

    aget p0, p0, p1

    return p0

    .line 173
    :sswitch_6
    sget-object p0, Lcom/perm/kate/theme/ThemeColorsHelper;->DEFAULT_LIGHT_GREEN_THEME_COLORS:[I

    aget p0, p0, p1

    return p0

    .line 181
    :sswitch_7
    sget-object p0, Lcom/perm/kate/theme/ThemeColorsHelper;->DEFAULT_INDIGO_THEME_COLORS:[I

    aget p0, p0, p1

    return p0

    .line 163
    :sswitch_8
    sget-object p0, Lcom/perm/kate/theme/ThemeColorsHelper;->DEFAULT_HOLO_THEME_COLORS:[I

    aget p0, p0, p1

    return p0

    .line 171
    :sswitch_9
    sget-object p0, Lcom/perm/kate/theme/ThemeColorsHelper;->DEFAULT_GREEN_THEME_COLORS:[I

    aget p0, p0, p1

    return p0

    .line 167
    :sswitch_a
    sget-object p0, Lcom/perm/kate/theme/ThemeColorsHelper;->DEFAULT_DARK_THEME_COLORS:[I

    aget p0, p0, p1

    return p0

    .line 179
    :sswitch_b
    sget-object p0, Lcom/perm/kate/theme/ThemeColorsHelper;->DEFAULT_COFFEE_THEME_COLORS:[I

    aget p0, p0, p1

    return p0

    :sswitch_data_0
    .sparse-switch
        0x7f1000c5 -> :sswitch_b
        0x7f1000c7 -> :sswitch_a
        0x7f1000c9 -> :sswitch_9
        0x7f1000cb -> :sswitch_8
        0x7f1000cd -> :sswitch_7
        0x7f1000d1 -> :sswitch_6
        0x7f1000d3 -> :sswitch_5
        0x7f1000d5 -> :sswitch_4
        0x7f1000d7 -> :sswitch_3
        0x7f1000d9 -> :sswitch_2
        0x7f1000db -> :sswitch_1
        0x7f1000df -> :sswitch_0
    .end sparse-switch
.end method

.method public static getEditableColorCount(I)I
    .locals 0

    .line 18
    invoke-static {p0}, Lcom/perm/kate/theme/ThemeColorsHelper;->isMaterial(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public static getFloatingActionButtonBg()I
    .locals 2

    .line 228
    sget v0, Lcom/perm/kate/BaseActivity;->Theme:I

    const v1, 0x7f080179

    sparse-switch v0, :sswitch_data_0

    const v0, 0x7f080176

    return v0

    :sswitch_0
    return v1

    :sswitch_1
    const v0, 0x7f08017c

    return v0

    :sswitch_2
    const v0, 0x7f08017b

    return v0

    :sswitch_3
    const v0, 0x7f08017a

    return v0

    :sswitch_4
    return v1

    :sswitch_5
    const v0, 0x7f080178

    return v0

    :sswitch_6
    const v0, 0x7f080177

    return v0

    :sswitch_data_0
    .sparse-switch
        0x7f1000c5 -> :sswitch_6
        0x7f1000c9 -> :sswitch_5
        0x7f1000cd -> :sswitch_4
        0x7f1000d1 -> :sswitch_5
        0x7f1000d3 -> :sswitch_4
        0x7f1000d7 -> :sswitch_3
        0x7f1000d9 -> :sswitch_2
        0x7f1000db -> :sswitch_1
        0x7f1000df -> :sswitch_0
    .end sparse-switch
.end method

.method public static getNotifyBgColor(I)I
    .locals 1

    const v0, 0x7f1000cb

    if-ne p0, v0, :cond_0

    const p0, -0xc06020

    return p0

    :cond_0
    const v0, 0x7f1000c7

    if-ne p0, v0, :cond_1

    const p0, -0xbc9872

    return p0

    :cond_1
    const v0, 0x7f1000c9

    if-ne p0, v0, :cond_2

    const p0, -0xfc8efd

    return p0

    .line 260
    :cond_2
    invoke-static {p0}, Lcom/perm/kate/theme/ThemeColorsHelper;->isMaterial(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perm/kate/theme/ColorTheme;->Colors()[I

    move-result-object p0

    const/4 v0, 0x1

    aget p0, p0, v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/perm/kate/theme/ThemeColorsHelper;->getDefaultColor(II)I

    move-result p0

    :goto_0
    return p0
.end method

.method public static getSeekBarColor(I)I
    .locals 4

    .line 266
    invoke-static {p0}, Lcom/perm/kate/theme/ThemeColorsHelper;->isMaterial(I)Z

    move-result v0

    .line 267
    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v1

    invoke-virtual {v1}, Lcom/perm/kate/theme/ColorTheme;->Colors()[I

    move-result-object v1

    aget v0, v1, v0

    const v1, 0x7f1000cb

    const v2, -0xc06020

    const/4 v3, 0x0

    if-ne p0, v1, :cond_0

    .line 269
    sget-object v1, Lcom/perm/kate/theme/ThemeColorsHelper;->DEFAULT_HOLO_THEME_COLORS:[I

    aget v1, v1, v3

    if-ne v0, v1, :cond_0

    const v0, -0xc06020

    :cond_0
    const v1, 0x7f1000c7

    if-ne p0, v1, :cond_1

    .line 271
    sget-object v1, Lcom/perm/kate/theme/ThemeColorsHelper;->DEFAULT_DARK_THEME_COLORS:[I

    aget v1, v1, v3

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    const v0, 0x7f1000c9

    if-ne p0, v0, :cond_2

    .line 273
    sget-object p0, Lcom/perm/kate/theme/ThemeColorsHelper;->DEFAULT_GREEN_THEME_COLORS:[I

    aget p0, p0, v3

    if-ne v2, p0, :cond_2

    const v2, -0xfe7dff

    :cond_2
    return v2
.end method

.method public static getTabletTabItemTextColor(I)Landroid/content/res/ColorStateList;
    .locals 8

    .line 193
    invoke-static {}, Lcom/perm/kate/theme/ThemeColorsHelper;->isLightTheme()Z

    move-result p0

    if-eqz p0, :cond_0

    const/high16 p0, -0x1000000

    goto :goto_0

    :cond_0
    const p0, -0x333334

    .line 194
    :goto_0
    new-instance v0, Landroid/content/res/ColorStateList;

    const/4 v1, 0x4

    new-array v2, v1, [[I

    const/4 v3, 0x1

    new-array v4, v3, [I

    const v5, 0x10102fe

    const/4 v6, 0x0

    aput v5, v4, v6

    aput-object v4, v2, v6

    new-array v4, v3, [I

    const v5, -0x10102fe

    aput v5, v4, v6

    aput-object v4, v2, v3

    new-array v4, v3, [I

    const v5, 0x10100a7

    aput v5, v4, v6

    const/4 v5, 0x2

    aput-object v4, v2, v5

    new-array v4, v5, [I

    fill-array-data v4, :array_0

    const/4 v7, 0x3

    aput-object v4, v2, v7

    new-array v1, v1, [I

    const/4 v4, -0x1

    aput v4, v1, v6

    aput p0, v1, v3

    aput p0, v1, v5

    aput p0, v1, v7

    invoke-direct {v0, v2, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v0

    :array_0
    .array-data 4
        0x10102fe
        0x10100a7
    .end array-data
.end method

.method public static getTextColorByTheme(Landroid/content/Context;)I
    .locals 1

    .line 213
    invoke-static {}, Lcom/perm/kate/theme/ThemeColorsHelper;->isLightTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0600e9

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    return p0

    .line 216
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0600e1

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    return p0
.end method

.method public static isLightTheme()Z
    .locals 2

    .line 220
    sget v0, Lcom/perm/kate/BaseActivity;->Theme:I

    const v1, 0x7f1000cf

    if-eq v0, v1, :cond_1

    const v1, 0x7f1000d7

    if-eq v0, v1, :cond_1

    const v1, 0x7f1000db

    if-eq v0, v1, :cond_1

    const v1, 0x7f1000d9

    if-eq v0, v1, :cond_1

    const v1, 0x7f1000cd

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isMaterial(I)Z
    .locals 1

    const v0, 0x7f1000cd

    if-eq p0, v0, :cond_1

    const v0, 0x7f1000d3

    if-eq p0, v0, :cond_1

    const v0, 0x7f1000df

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public getThemeColors()[I
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/perm/kate/theme/ThemeColorsHelper;->THEME_COLORS:[I

    return-object v0
.end method

.method public loadThemeFromSettings(Ljava/lang/String;)V
    .locals 4

    .line 133
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0, p1}, Lcom/perm/kate/theme/ThemeSettingsHelper;->getThemeColors(Landroid/content/Context;Ljava/lang/String;)[I

    move-result-object p1

    if-eqz p1, :cond_1

    .line 135
    iget-object v0, p0, Lcom/perm/kate/theme/ThemeColorsHelper;->THEME_COLORS:[I

    array-length v0, v0

    .line 136
    array-length v1, p1

    if-ge v1, v0, :cond_0

    .line 137
    array-length v0, p1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 139
    iget-object v2, p0, Lcom/perm/kate/theme/ThemeColorsHelper;->THEME_COLORS:[I

    aget v3, p1, v1

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public saveThemeFromSettings()V
    .locals 2

    .line 145
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    iget-object v1, p0, Lcom/perm/kate/theme/ThemeColorsHelper;->THEME_COLORS:[I

    invoke-static {v0, v1}, Lcom/perm/kate/theme/ThemeSettingsHelper;->setThemeColors(Landroid/content/Context;[I)V

    return-void
.end method

.method public setColors([I)V
    .locals 4

    if-eqz p1, :cond_2

    .line 150
    iget-object v0, p0, Lcom/perm/kate/theme/ThemeColorsHelper;->THEME_COLORS:[I

    array-length v0, v0

    .line 151
    array-length v1, p1

    if-ge v1, v0, :cond_0

    .line 152
    array-length v0, p1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 154
    iget-object v2, p0, Lcom/perm/kate/theme/ThemeColorsHelper;->THEME_COLORS:[I

    aget v3, p1, v1

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 156
    :cond_1
    invoke-virtual {p0}, Lcom/perm/kate/theme/ThemeColorsHelper;->saveThemeFromSettings()V

    :cond_2
    return-void
.end method

.method public setDefaultColors(I)V
    .locals 3

    .line 122
    invoke-static {p1}, Lcom/perm/kate/theme/ThemeColorsHelper;->getEditableColorCount(I)I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/perm/kate/theme/ThemeColorsHelper;->THEME_COLORS:[I

    const/4 v1, 0x0

    .line 123
    invoke-static {p1, v1}, Lcom/perm/kate/theme/ThemeColorsHelper;->getDefaultColor(II)I

    move-result v2

    aput v2, v0, v1

    .line 124
    invoke-static {p1}, Lcom/perm/kate/theme/ThemeColorsHelper;->isMaterial(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/perm/kate/theme/ThemeColorsHelper;->THEME_COLORS:[I

    const/4 v1, 0x1

    const/4 v2, 0x3

    invoke-static {p1, v2}, Lcom/perm/kate/theme/ThemeColorsHelper;->getDefaultColor(II)I

    move-result p1

    aput p1, v0, v1

    :cond_0
    return-void
.end method

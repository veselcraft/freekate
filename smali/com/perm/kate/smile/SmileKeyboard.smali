.class public Lcom/perm/kate/smile/SmileKeyboard;
.super Ljava/lang/Object;
.source "SmileKeyboard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perm/kate/smile/SmileKeyboard$LayoutListener;,
        Lcom/perm/kate/smile/SmileKeyboard$TouchListener;
    }
.end annotation


# static fields
.field public static final STICKERS_FOOTBALL:[I

.field static final STICKERS_FRUITABLES:[I

.field public static STICKERS_SET_FOOTBALL:I

.field static STICKERS_SET_FRUITABLES:I

.field public static STICKERS_SET_SMILES:I

.field static final STICKERS_SMILES:[I


# instance fields
.field activity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/support/v4/app/FragmentActivity;",
            ">;"
        }
    .end annotation
.end field

.field private emoticonsCover:Landroid/widget/LinearLayout;

.field private isKeyBoardVisible:Z

.field private keyboardHeight:I

.field layoutListener:Lcom/perm/kate/smile/SmileKeyboard$LayoutListener;

.field listener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/perm/kate/smile/SmilePagerAdapter$SmileSelectedListener;",
            ">;"
        }
    .end annotation
.end field

.field private parentLayout:Landroid/widget/LinearLayout;

.field private popUpView:Landroid/view/View;

.field private popupWindow:Landroid/widget/PopupWindow;

.field previousHeightDiffrence:I

.field show_stickers:Z

.field public show_stickers_configure:Z

.field private smileButton:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x4

    sput v0, Lcom/perm/kate/smile/SmileKeyboard;->STICKERS_SET_FRUITABLES:I

    .line 30
    const/4 v0, 0x3

    sput v0, Lcom/perm/kate/smile/SmileKeyboard;->STICKERS_SET_SMILES:I

    .line 31
    const/4 v0, 0x6

    sput v0, Lcom/perm/kate/smile/SmileKeyboard;->STICKERS_SET_FOOTBALL:I

    .line 32
    const/16 v0, 0x28

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/perm/kate/smile/SmileKeyboard;->STICKERS_FRUITABLES:[I

    .line 33
    const/16 v0, 0x20

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/perm/kate/smile/SmileKeyboard;->STICKERS_SMILES:[I

    .line 34
    const/16 v0, 0x18

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/perm/kate/smile/SmileKeyboard;->STICKERS_FOOTBALL:[I

    return-void

    .line 32
    nop

    :array_0
    .array-data 4
        0x86
        0x8c
        0x91
        0x88
        0x8f
        0x97
        0x94
        0x90
        0x8e
        0x89
        0x87
        0x85
        0x8a
        0x9c
        0x96
        0x99
        0x95
        0x93
        0x8d
        0x9f
        0xa4
        0xa1
        0x82
        0x84
        0xa0
        0x92
        0x98
        0x8b
        0x9b
        0x83
        0x9a
        0xa2
        0xa3
        0x9e
        0xa7
        0x81
        0xa6
        0xa8
        0x9d
        0xa5
    .end array-data

    .line 33
    :array_1
    .array-data 4
        0x66
        0x67
        0x65
        0x69
        0x7e
        0x6b
        0x70
        0x71
        0x6e
        0x6c
        0x6f
        0x6d
        0x72
        0x73
        0x74
        0x64
        0x77
        0x62
        0x7a
        0x75
        0x76
        0x63
        0x7d
        0x79
        0x80
        0x68
        0x7f
        0x6a
        0x78
        0x7b
        0x7c
        0x61
    .end array-data

    .line 34
    :array_2
    .array-data 4
        0xd7
        0xe8
        0xe7
        0xd3
        0xd6
        0xda
        0xe0
        0xe1
        0xd1
        0xe2
        0xe5
        0xdf
        0xd2
        0xdc
        0xde
        0xd5
        0xd9
        0xe3
        0xd4
        0xd8
        0xdb
        0xe4
        0x151
        0x152
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/perm/kate/smile/SmileKeyboard;->previousHeightDiffrence:I

    .line 50
    invoke-static {}, Lcom/perm/utils/LeakDetector;->getInstance()Lcom/perm/utils/LeakDetector;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/perm/utils/LeakDetector;->monitorObject(Ljava/lang/Object;)V

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/smile/SmileKeyboard;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/smile/SmileKeyboard;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/perm/kate/smile/SmileKeyboard;->emoticonsCover:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/perm/kate/smile/SmileKeyboard;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/smile/SmileKeyboard;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/perm/kate/smile/SmileKeyboard;->parentLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/perm/kate/smile/SmileKeyboard;)Landroid/widget/PopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/smile/SmileKeyboard;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/perm/kate/smile/SmileKeyboard;->popupWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$302(Lcom/perm/kate/smile/SmileKeyboard;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/smile/SmileKeyboard;
    .param p1, "x1"    # Z

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/perm/kate/smile/SmileKeyboard;->isKeyBoardVisible:Z

    return p1
.end method

.method static synthetic access$400(Lcom/perm/kate/smile/SmileKeyboard;I)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/smile/SmileKeyboard;
    .param p1, "x1"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/perm/kate/smile/SmileKeyboard;->changeKeyboardHeight(I)V

    return-void
.end method

.method private addGlobalLayoutListener()V
    .locals 2

    .prologue
    .line 263
    new-instance v0, Lcom/perm/kate/smile/SmileKeyboard$LayoutListener;

    invoke-direct {v0, p0}, Lcom/perm/kate/smile/SmileKeyboard$LayoutListener;-><init>(Lcom/perm/kate/smile/SmileKeyboard;)V

    iput-object v0, p0, Lcom/perm/kate/smile/SmileKeyboard;->layoutListener:Lcom/perm/kate/smile/SmileKeyboard$LayoutListener;

    .line 264
    iget-object v0, p0, Lcom/perm/kate/smile/SmileKeyboard;->parentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/smile/SmileKeyboard;->layoutListener:Lcom/perm/kate/smile/SmileKeyboard$LayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 265
    return-void
.end method

.method private changeKeyboardHeight(I)V
    .locals 2
    .param p1, "height"    # I

    .prologue
    .line 145
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    invoke-static {v0, v1}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v0

    if-le p1, v0, :cond_0

    .line 147
    iput p1, p0, Lcom/perm/kate/smile/SmileKeyboard;->keyboardHeight:I

    .line 149
    :cond_0
    return-void
.end method

.method private createPopUpView()V
    .locals 12

    .prologue
    const/4 v11, -0x1

    const/4 v10, 0x0

    .line 155
    iget-object v6, p0, Lcom/perm/kate/smile/SmileKeyboard;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f0300fd

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/perm/kate/smile/SmileKeyboard;->popUpView:Landroid/view/View;

    .line 157
    sget v6, Lcom/perm/kate/BaseActivity;->Theme:I

    const v7, 0x7f0a00cc

    if-ne v6, v7, :cond_0

    .line 158
    iget-object v6, p0, Lcom/perm/kate/smile/SmileKeyboard;->popUpView:Landroid/view/View;

    const v7, 0x7f0c0059

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 159
    :cond_0
    iget-object v6, p0, Lcom/perm/kate/smile/SmileKeyboard;->popUpView:Landroid/view/View;

    const v7, 0x7f0e032a

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v4/view/ViewPager;

    .line 160
    .local v3, "pager":Landroid/support/v4/view/ViewPager;
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 161
    invoke-direct {p0}, Lcom/perm/kate/smile/SmileKeyboard;->getSmilePages()Ljava/util/ArrayList;

    move-result-object v4

    .line 162
    .local v4, "pages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage;>;"
    new-instance v6, Lcom/perm/kate/smile/SmilePagerAdapter;

    iget-object v7, p0, Lcom/perm/kate/smile/SmileKeyboard;->activity:Ljava/lang/ref/WeakReference;

    iget-object v8, p0, Lcom/perm/kate/smile/SmileKeyboard;->listener:Ljava/lang/ref/WeakReference;

    iget-boolean v9, p0, Lcom/perm/kate/smile/SmileKeyboard;->show_stickers:Z

    invoke-direct {v6, v7, v8, v9, v4}, Lcom/perm/kate/smile/SmilePagerAdapter;-><init>(Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;ZLjava/util/ArrayList;)V

    invoke-virtual {v3, v6}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 163
    invoke-direct {p0, v4}, Lcom/perm/kate/smile/SmileKeyboard;->getDefaultPage(Ljava/util/ArrayList;)I

    move-result v0

    .line 164
    .local v0, "current_item":I
    invoke-virtual {v3, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 165
    iget-object v6, p0, Lcom/perm/kate/smile/SmileKeyboard;->popUpView:Landroid/view/View;

    const v7, 0x7f0e0328

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/viewpagerindicator/TitlePageIndicator;

    .line 166
    .local v5, "titlePageIndicator":Lcom/viewpagerindicator/TitlePageIndicator;
    invoke-virtual {v5, v3}, Lcom/viewpagerindicator/TitlePageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 167
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/viewpagerindicator/TitlePageIndicator;->setFooterLineHeight(F)V

    .line 168
    sget-object v6, Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;->None:Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;

    invoke-virtual {v5, v6}, Lcom/viewpagerindicator/TitlePageIndicator;->setFooterIndicatorStyle(Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;)V

    .line 169
    invoke-virtual {v5, v10}, Lcom/viewpagerindicator/TitlePageIndicator;->setSelectedBold(Z)V

    .line 170
    invoke-static {}, Lcom/perm/kate/theme/ThemeColorsHelper;->isLightTheme()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 171
    const/high16 v6, -0x67000000

    invoke-virtual {v5, v6}, Lcom/viewpagerindicator/TitlePageIndicator;->setTextColor(I)V

    .line 172
    const/high16 v6, -0x1000000

    invoke-virtual {v5, v6}, Lcom/viewpagerindicator/TitlePageIndicator;->setSelectedColor(I)V

    .line 177
    :goto_0
    iget-object v6, p0, Lcom/perm/kate/smile/SmileKeyboard;->popUpView:Landroid/view/View;

    const v7, 0x7f0e0329

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 178
    .local v1, "im_backspace":Landroid/widget/ImageView;
    invoke-static {}, Lcom/perm/kate/theme/ThemeColorsHelper;->isLightTheme()Z

    move-result v6

    if-eqz v6, :cond_3

    const v6, 0x7f020127

    :goto_1
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 179
    new-instance v6, Lcom/perm/kate/smile/SmileKeyboard$2;

    invoke-direct {v6, p0}, Lcom/perm/kate/smile/SmileKeyboard$2;-><init>(Lcom/perm/kate/smile/SmileKeyboard;)V

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    iget-boolean v6, p0, Lcom/perm/kate/smile/SmileKeyboard;->show_stickers_configure:Z

    if-eqz v6, :cond_1

    .line 187
    iget-object v6, p0, Lcom/perm/kate/smile/SmileKeyboard;->popUpView:Landroid/view/View;

    const v7, 0x7f0e0327

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 188
    .local v2, "im_my_stickers":Landroid/widget/ImageView;
    invoke-static {}, Lcom/perm/kate/theme/ThemeColorsHelper;->isLightTheme()Z

    move-result v6

    if-eqz v6, :cond_4

    const v6, 0x7f02012c

    :goto_2
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 189
    new-instance v6, Lcom/perm/kate/smile/SmileKeyboard$3;

    invoke-direct {v6, p0}, Lcom/perm/kate/smile/SmileKeyboard$3;-><init>(Lcom/perm/kate/smile/SmileKeyboard;)V

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 199
    .end local v2    # "im_my_stickers":Landroid/widget/ImageView;
    :cond_1
    new-instance v6, Landroid/widget/PopupWindow;

    iget-object v7, p0, Lcom/perm/kate/smile/SmileKeyboard;->popUpView:Landroid/view/View;

    iget v8, p0, Lcom/perm/kate/smile/SmileKeyboard;->keyboardHeight:I

    invoke-direct {v6, v7, v11, v8, v10}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v6, p0, Lcom/perm/kate/smile/SmileKeyboard;->popupWindow:Landroid/widget/PopupWindow;

    .line 200
    iget-object v6, p0, Lcom/perm/kate/smile/SmileKeyboard;->popupWindow:Landroid/widget/PopupWindow;

    new-instance v7, Lcom/perm/kate/smile/SmileKeyboard$4;

    invoke-direct {v7, p0}, Lcom/perm/kate/smile/SmileKeyboard$4;-><init>(Lcom/perm/kate/smile/SmileKeyboard;)V

    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 206
    return-void

    .line 174
    .end local v1    # "im_backspace":Landroid/widget/ImageView;
    :cond_2
    const v6, -0x66000001

    invoke-virtual {v5, v6}, Lcom/viewpagerindicator/TitlePageIndicator;->setTextColor(I)V

    .line 175
    invoke-virtual {v5, v11}, Lcom/viewpagerindicator/TitlePageIndicator;->setSelectedColor(I)V

    goto :goto_0

    .line 178
    .restart local v1    # "im_backspace":Landroid/widget/ImageView;
    :cond_3
    const v6, 0x7f020128

    goto :goto_1

    .line 188
    .restart local v2    # "im_my_stickers":Landroid/widget/ImageView;
    :cond_4
    const v6, 0x7f02012d

    goto :goto_2
.end method

.method private getDefaultPage(Ljava/util/ArrayList;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 218
    .local p1, "pages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 219
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage;

    .line 220
    .local v1, "page":Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage;
    iget-object v2, v1, Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage;->type:Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;

    sget-object v3, Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;->SMILES:Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;

    if-ne v2, v3, :cond_0

    iget v2, v1, Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage;->smile_page:I

    if-nez v2, :cond_0

    .line 223
    .end local v0    # "i":I
    .end local v1    # "page":Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage;
    :goto_1
    return v0

    .line 218
    .restart local v0    # "i":I
    .restart local v1    # "page":Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 223
    .end local v1    # "page":Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private getSmilePages()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 227
    new-instance v1, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 229
    .local v1, "pages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage;>;"
    :try_start_0
    iget-boolean v6, p0, Lcom/perm/kate/smile/SmileKeyboard;->show_stickers:Z

    if-eqz v6, :cond_2

    .line 230
    invoke-static {}, Lcom/perm/kate/smile/StickerConfig;->getStickers()Ljava/util/ArrayList;

    move-result-object v3

    .line 231
    .local v3, "products":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Product;>;"
    if-eqz v3, :cond_1

    .line 232
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 233
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/api/Product;

    .line 234
    .local v2, "pr":Lcom/perm/kate/api/Product;
    iget-object v5, v2, Lcom/perm/kate/api/Product;->title:Ljava/lang/String;

    .line 236
    .local v5, "title":Ljava/lang/String;
    iget v6, v2, Lcom/perm/kate/api/Product;->id:I

    sget v7, Lcom/perm/kate/smile/SmileKeyboard;->STICKERS_SET_SMILES:I

    if-ne v6, v7, :cond_0

    .line 237
    sget-object v6, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const v7, 0x7f0703fe

    invoke-virtual {v6, v7}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 238
    :cond_0
    new-instance v6, Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage;

    sget-object v7, Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;->STICKERS:Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;

    iget v8, v2, Lcom/perm/kate/api/Product;->id:I

    iget-object v9, v2, Lcom/perm/kate/api/Product;->sticker_ids:[I

    invoke-direct {v6, v7, v8, v9, v5}, Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage;-><init>(Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;I[ILjava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 241
    .end local v0    # "i":I
    .end local v2    # "pr":Lcom/perm/kate/api/Product;
    .end local v5    # "title":Ljava/lang/String;
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const v8, 0x7f0703a2

    invoke-virtual {v7, v8}, Landroid/app/Application;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const v8, 0x7f0703fe

    invoke-virtual {v7, v8}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 242
    .restart local v5    # "title":Ljava/lang/String;
    new-instance v6, Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage;

    sget-object v7, Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;->STICKERS:Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;

    const/4 v8, -0x1

    invoke-static {}, Lcom/perm/kate/RecentStickers;->get()[I

    move-result-object v9

    invoke-direct {v6, v7, v8, v9, v5}, Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage;-><init>(Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;I[ILjava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    .end local v3    # "products":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Product;>;"
    .end local v5    # "title":Ljava/lang/String;
    :cond_2
    new-instance v6, Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage;

    sget-object v7, Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;->SMILES:Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage;-><init>(Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;I)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    new-instance v6, Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage;

    sget-object v7, Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;->RECENT_SMILES:Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;

    invoke-direct {v6, v7}, Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage;-><init>(Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    new-instance v6, Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage;

    sget-object v7, Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;->SMILES:Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;

    const/4 v8, 0x1

    invoke-direct {v6, v7, v8}, Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage;-><init>(Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;I)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    new-instance v6, Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage;

    sget-object v7, Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;->SMILES:Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;

    const/4 v8, 0x2

    invoke-direct {v6, v7, v8}, Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage;-><init>(Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;I)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    new-instance v6, Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage;

    sget-object v7, Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;->SMILES:Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;

    const/4 v8, 0x3

    invoke-direct {v6, v7, v8}, Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage;-><init>(Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;I)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    new-instance v6, Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage;

    sget-object v7, Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;->SMILES:Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;

    const/4 v8, 0x4

    invoke-direct {v6, v7, v8}, Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage;-><init>(Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;I)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    :goto_1
    return-object v1

    .line 250
    :catch_0
    move-exception v4

    .line 251
    .local v4, "th":Ljava/lang/Throwable;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 252
    invoke-static {v4}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static getViewInset(Landroid/view/View;)I
    .locals 8
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 306
    if-eqz p0, :cond_0

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-ge v6, v7, :cond_1

    .line 322
    :cond_0
    :goto_0
    return v5

    .line 310
    :cond_1
    :try_start_0
    const-class v6, Landroid/view/View;

    const-string v7, "mAttachInfo"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 311
    .local v3, "mAttachInfoField":Ljava/lang/reflect/Field;
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 312
    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 313
    .local v2, "mAttachInfo":Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 314
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "mStableInsets"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 315
    .local v4, "mStableInsetsField":Ljava/lang/reflect/Field;
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 316
    invoke-virtual {v4, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 317
    .local v1, "insets":Landroid/graphics/Rect;
    iget v5, v1, Landroid/graphics/Rect;->bottom:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 319
    .end local v1    # "insets":Landroid/graphics/Rect;
    .end local v2    # "mAttachInfo":Ljava/lang/Object;
    .end local v3    # "mAttachInfoField":Ljava/lang/reflect/Field;
    .end local v4    # "mStableInsetsField":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v0

    .line 320
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private updateFooterHeight()V
    .locals 3

    .prologue
    .line 124
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    iget v2, p0, Lcom/perm/kate/smile/SmileKeyboard;->keyboardHeight:I

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 125
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/perm/kate/smile/SmileKeyboard;->emoticonsCover:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 333
    iget-object v0, p0, Lcom/perm/kate/smile/SmileKeyboard;->layoutListener:Lcom/perm/kate/smile/SmileKeyboard$LayoutListener;

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/perm/kate/smile/SmileKeyboard;->parentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/smile/SmileKeyboard;->layoutListener:Lcom/perm/kate/smile/SmileKeyboard$LayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 335
    :cond_0
    iput-object v2, p0, Lcom/perm/kate/smile/SmileKeyboard;->layoutListener:Lcom/perm/kate/smile/SmileKeyboard$LayoutListener;

    .line 337
    iget-object v0, p0, Lcom/perm/kate/smile/SmileKeyboard;->popupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    .line 338
    iget-object v0, p0, Lcom/perm/kate/smile/SmileKeyboard;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 339
    :cond_1
    iput-object v2, p0, Lcom/perm/kate/smile/SmileKeyboard;->popupWindow:Landroid/widget/PopupWindow;

    .line 341
    iput-object v2, p0, Lcom/perm/kate/smile/SmileKeyboard;->emoticonsCover:Landroid/widget/LinearLayout;

    .line 342
    iput-object v2, p0, Lcom/perm/kate/smile/SmileKeyboard;->parentLayout:Landroid/widget/LinearLayout;

    .line 343
    iput-object v2, p0, Lcom/perm/kate/smile/SmileKeyboard;->popUpView:Landroid/view/View;

    .line 345
    iget-object v0, p0, Lcom/perm/kate/smile/SmileKeyboard;->smileButton:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 346
    iget-object v0, p0, Lcom/perm/kate/smile/SmileKeyboard;->smileButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 347
    :cond_2
    iput-object v2, p0, Lcom/perm/kate/smile/SmileKeyboard;->smileButton:Landroid/view/View;

    .line 348
    return-void
.end method

.method public editTouch()V
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/perm/kate/smile/SmileKeyboard;->popupWindow:Landroid/widget/PopupWindow;

    if-nez v0, :cond_1

    .line 330
    :cond_0
    :goto_0
    return-void

    .line 328
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/smile/SmileKeyboard;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/perm/kate/smile/SmileKeyboard;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0
.end method

.method public init(Landroid/support/v4/app/FragmentActivity;Landroid/view/View;Lcom/perm/kate/smile/SmilePagerAdapter$SmileSelectedListener;)V
    .locals 1
    .param p1, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p2, "add_smile"    # Landroid/view/View;
    .param p3, "listener"    # Lcom/perm/kate/smile/SmilePagerAdapter$SmileSelectedListener;

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/perm/kate/smile/SmileKeyboard;->init(Landroid/support/v4/app/FragmentActivity;Landroid/view/View;Lcom/perm/kate/smile/SmilePagerAdapter$SmileSelectedListener;Z)V

    .line 55
    return-void
.end method

.method public init(Landroid/support/v4/app/FragmentActivity;Landroid/view/View;Lcom/perm/kate/smile/SmilePagerAdapter$SmileSelectedListener;Z)V
    .locals 2
    .param p1, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p2, "add_smile"    # Landroid/view/View;
    .param p3, "listener"    # Lcom/perm/kate/smile/SmilePagerAdapter$SmileSelectedListener;
    .param p4, "show_stickers"    # Z

    .prologue
    .line 58
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/perm/kate/smile/SmileKeyboard;->activity:Ljava/lang/ref/WeakReference;

    .line 59
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/perm/kate/smile/SmileKeyboard;->listener:Ljava/lang/ref/WeakReference;

    .line 60
    iput-object p2, p0, Lcom/perm/kate/smile/SmileKeyboard;->smileButton:Landroid/view/View;

    .line 61
    iput-boolean p4, p0, Lcom/perm/kate/smile/SmileKeyboard;->show_stickers:Z

    .line 62
    iput-boolean p4, p0, Lcom/perm/kate/smile/SmileKeyboard;->show_stickers_configure:Z

    .line 63
    const v0, 0x7f0e0078

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/perm/kate/smile/SmileKeyboard;->parentLayout:Landroid/widget/LinearLayout;

    .line 64
    const v0, 0x7f0e00ed

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/perm/kate/smile/SmileKeyboard;->emoticonsCover:Landroid/widget/LinearLayout;

    .line 66
    const-wide v0, 0x406cc00000000000L    # 230.0

    invoke-static {v0, v1}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v0

    iput v0, p0, Lcom/perm/kate/smile/SmileKeyboard;->keyboardHeight:I

    .line 69
    if-eqz p2, :cond_0

    .line 70
    new-instance v0, Lcom/perm/kate/smile/SmileKeyboard$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/smile/SmileKeyboard$1;-><init>(Lcom/perm/kate/smile/SmileKeyboard;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    :cond_0
    invoke-direct {p0}, Lcom/perm/kate/smile/SmileKeyboard;->addGlobalLayoutListener()V

    .line 79
    return-void
.end method

.method public onKeyDown()Z
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/perm/kate/smile/SmileKeyboard;->popupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/perm/kate/smile/SmileKeyboard;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/perm/kate/smile/SmileKeyboard;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 131
    const/4 v0, 0x1

    .line 133
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerEditText(Landroid/widget/EditText;)V
    .locals 1
    .param p1, "edit"    # Landroid/widget/EditText;

    .prologue
    .line 82
    new-instance v0, Lcom/perm/kate/smile/SmileKeyboard$TouchListener;

    invoke-direct {v0, p0}, Lcom/perm/kate/smile/SmileKeyboard$TouchListener;-><init>(Lcom/perm/kate/smile/SmileKeyboard;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 90
    return-void
.end method

.method public smileButtonClick()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 106
    iget-object v0, p0, Lcom/perm/kate/smile/SmileKeyboard;->popupWindow:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    .line 107
    invoke-direct {p0}, Lcom/perm/kate/smile/SmileKeyboard;->createPopUpView()V

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/smile/SmileKeyboard;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_3

    .line 109
    iget-object v0, p0, Lcom/perm/kate/smile/SmileKeyboard;->popupWindow:Landroid/widget/PopupWindow;

    iget v1, p0, Lcom/perm/kate/smile/SmileKeyboard;->keyboardHeight:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 110
    invoke-direct {p0}, Lcom/perm/kate/smile/SmileKeyboard;->updateFooterHeight()V

    .line 112
    iget-boolean v0, p0, Lcom/perm/kate/smile/SmileKeyboard;->isKeyBoardVisible:Z

    if-eqz v0, :cond_2

    .line 113
    iget-object v0, p0, Lcom/perm/kate/smile/SmileKeyboard;->emoticonsCover:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 116
    :goto_0
    iget-object v0, p0, Lcom/perm/kate/smile/SmileKeyboard;->popupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/perm/kate/smile/SmileKeyboard;->parentLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x50

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 119
    :goto_1
    iget-object v0, p0, Lcom/perm/kate/smile/SmileKeyboard;->listener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/perm/kate/smile/SmileKeyboard;->listener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/smile/SmilePagerAdapter$SmileSelectedListener;

    invoke-virtual {v0}, Lcom/perm/kate/smile/SmilePagerAdapter$SmileSelectedListener;->smileButtonClick()V

    .line 121
    :cond_1
    return-void

    .line 115
    :cond_2
    iget-object v0, p0, Lcom/perm/kate/smile/SmileKeyboard;->emoticonsCover:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 118
    :cond_3
    iget-object v0, p0, Lcom/perm/kate/smile/SmileKeyboard;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_1
.end method

.method public updatePages()V
    .locals 6

    .prologue
    .line 209
    iget-object v2, p0, Lcom/perm/kate/smile/SmileKeyboard;->popUpView:Landroid/view/View;

    if-nez v2, :cond_0

    .line 215
    :goto_0
    return-void

    .line 211
    :cond_0
    iget-object v2, p0, Lcom/perm/kate/smile/SmileKeyboard;->popUpView:Landroid/view/View;

    const v3, 0x7f0e032a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    .line 213
    .local v0, "pager":Landroid/support/v4/view/ViewPager;
    invoke-direct {p0}, Lcom/perm/kate/smile/SmileKeyboard;->getSmilePages()Ljava/util/ArrayList;

    move-result-object v1

    .line 214
    .local v1, "pages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage;>;"
    new-instance v2, Lcom/perm/kate/smile/SmilePagerAdapter;

    iget-object v3, p0, Lcom/perm/kate/smile/SmileKeyboard;->activity:Ljava/lang/ref/WeakReference;

    iget-object v4, p0, Lcom/perm/kate/smile/SmileKeyboard;->listener:Ljava/lang/ref/WeakReference;

    iget-boolean v5, p0, Lcom/perm/kate/smile/SmileKeyboard;->show_stickers:Z

    invoke-direct {v2, v3, v4, v5, v1}, Lcom/perm/kate/smile/SmilePagerAdapter;-><init>(Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;ZLjava/util/ArrayList;)V

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    goto :goto_0
.end method

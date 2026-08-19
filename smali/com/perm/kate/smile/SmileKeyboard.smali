.class public Lcom/perm/kate/smile/SmileKeyboard;
.super Ljava/lang/Object;
.source "SmileKeyboard.java"


# static fields
.field public static NO_PAGE:I = 0x0

.field static final STICKERS_FRUITABLES:[I

.field static STICKERS_SET_FRUITABLES:I = 0x4

.field public static STICKERS_SET_SMILES:I = 0x3

.field static final STICKERS_SMILES:[I


# instance fields
.field activity:Ljava/lang/ref/WeakReference;

.field private emoticonsCover:Landroid/widget/LinearLayout;

.field private isKeyBoardVisible:Z

.field private keyboardHeight:I

.field layoutListener:Lcom/perm/kate/smile/SmileKeyboard$LayoutListener;

.field listener:Ljava/lang/ref/WeakReference;

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

    const/16 v0, 0x28

    new-array v0, v0, [I

    .line 34
    fill-array-data v0, :array_0

    sput-object v0, Lcom/perm/kate/smile/SmileKeyboard;->STICKERS_FRUITABLES:[I

    const/16 v0, 0x20

    new-array v0, v0, [I

    .line 35
    fill-array-data v0, :array_1

    sput-object v0, Lcom/perm/kate/smile/SmileKeyboard;->STICKERS_SMILES:[I

    const/4 v0, -0x1

    .line 203
    sput v0, Lcom/perm/kate/smile/SmileKeyboard;->NO_PAGE:I

    return-void

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
.end method

.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput v0, p0, Lcom/perm/kate/smile/SmileKeyboard;->previousHeightDiffrence:I

    .line 52
    invoke-static {}, Lcom/perm/utils/LeakDetector;->getInstance()Lcom/perm/utils/LeakDetector;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/perm/utils/LeakDetector;->monitorObject(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/smile/SmileKeyboard;)Landroid/widget/LinearLayout;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/perm/kate/smile/SmileKeyboard;->emoticonsCover:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$100(Lcom/perm/kate/smile/SmileKeyboard;)Landroid/widget/LinearLayout;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/perm/kate/smile/SmileKeyboard;->parentLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$200(Lcom/perm/kate/smile/SmileKeyboard;)Landroid/widget/PopupWindow;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/perm/kate/smile/SmileKeyboard;->popupWindow:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method static synthetic access$302(Lcom/perm/kate/smile/SmileKeyboard;Z)Z
    .locals 0

    .line 29
    iput-boolean p1, p0, Lcom/perm/kate/smile/SmileKeyboard;->isKeyBoardVisible:Z

    return p1
.end method

.method static synthetic access$400(Lcom/perm/kate/smile/SmileKeyboard;I)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/perm/kate/smile/SmileKeyboard;->changeKeyboardHeight(I)V

    return-void
.end method

.method private addGlobalLayoutListener()V
    .locals 2

    .line 264
    new-instance v0, Lcom/perm/kate/smile/SmileKeyboard$LayoutListener;

    invoke-direct {v0, p0}, Lcom/perm/kate/smile/SmileKeyboard$LayoutListener;-><init>(Lcom/perm/kate/smile/SmileKeyboard;)V

    iput-object v0, p0, Lcom/perm/kate/smile/SmileKeyboard;->layoutListener:Lcom/perm/kate/smile/SmileKeyboard$LayoutListener;

    .line 265
    iget-object v0, p0, Lcom/perm/kate/smile/SmileKeyboard;->parentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/smile/SmileKeyboard;->layoutListener:Lcom/perm/kate/smile/SmileKeyboard$LayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private changeKeyboardHeight(I)V
    .locals 2

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    .line 149
    invoke-static {v0, v1}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v0

    if-le p1, v0, :cond_0

    .line 151
    iput p1, p0, Lcom/perm/kate/smile/SmileKeyboard;->keyboardHeight:I

    :cond_0
    return-void
.end method

.method private createPopUpView()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lcom/perm/kate/smile/SmileKeyboard;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0119

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/smile/SmileKeyboard;->popUpView:Landroid/view/View;

    .line 162
    sget v1, Lcom/perm/kate/BaseActivity;->Theme:I

    const v2, 0x7f1000df

    if-ne v1, v2, :cond_0

    const v1, 0x7f0600a0

    .line 163
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/smile/SmileKeyboard;->popUpView:Landroid/view/View;

    const v1, 0x7f090115

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    const/4 v1, 0x1

    .line 165
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 166
    invoke-direct {p0}, Lcom/perm/kate/smile/SmileKeyboard;->getSmilePages()Ljava/util/ArrayList;

    move-result-object v1

    .line 167
    new-instance v2, Lcom/perm/kate/smile/SmilePagerAdapter;

    iget-object v3, p0, Lcom/perm/kate/smile/SmileKeyboard;->activity:Ljava/lang/ref/WeakReference;

    iget-object v4, p0, Lcom/perm/kate/smile/SmileKeyboard;->listener:Ljava/lang/ref/WeakReference;

    iget-boolean v5, p0, Lcom/perm/kate/smile/SmileKeyboard;->show_stickers:Z

    invoke-direct {v2, v3, v4, v5, v1}, Lcom/perm/kate/smile/SmilePagerAdapter;-><init>(Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;ZLjava/util/ArrayList;)V

    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 168
    invoke-direct {p0, v1}, Lcom/perm/kate/smile/SmileKeyboard;->getDefaultPage(Ljava/util/ArrayList;)I

    move-result v1

    .line 169
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 170
    iget-object v1, p0, Lcom/perm/kate/smile/SmileKeyboard;->popUpView:Landroid/view/View;

    const v2, 0x7f09033c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/tabs/TabLayout;

    .line 171
    invoke-virtual {v1, v0}, Lcom/google/android/material/tabs/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 172
    iget-object v0, p0, Lcom/perm/kate/smile/SmileKeyboard;->popUpView:Landroid/view/View;

    const v1, 0x7f090175

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 173
    invoke-static {}, Lcom/perm/kate/theme/ThemeColorsHelper;->isLightTheme()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f0801d9

    goto :goto_0

    :cond_1
    const v1, 0x7f0801da

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 174
    new-instance v1, Lcom/perm/kate/smile/SmileKeyboard$2;

    invoke-direct {v1, p0}, Lcom/perm/kate/smile/SmileKeyboard$2;-><init>(Lcom/perm/kate/smile/SmileKeyboard;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    iget-boolean v0, p0, Lcom/perm/kate/smile/SmileKeyboard;->show_stickers_configure:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 182
    iget-object v0, p0, Lcom/perm/kate/smile/SmileKeyboard;->popUpView:Landroid/view/View;

    const v2, 0x7f090176

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 183
    invoke-static {}, Lcom/perm/kate/theme/ThemeColorsHelper;->isLightTheme()Z

    move-result v2

    if-eqz v2, :cond_2

    const v2, 0x7f0801eb

    goto :goto_1

    :cond_2
    const v2, 0x7f0801ec

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 184
    new-instance v2, Lcom/perm/kate/smile/SmileKeyboard$3;

    invoke-direct {v2, p0}, Lcom/perm/kate/smile/SmileKeyboard$3;-><init>(Lcom/perm/kate/smile/SmileKeyboard;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 194
    :cond_3
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/perm/kate/smile/SmileKeyboard;->popUpView:Landroid/view/View;

    const/4 v3, -0x1

    iget v4, p0, Lcom/perm/kate/smile/SmileKeyboard;->keyboardHeight:I

    invoke-direct {v0, v2, v3, v4, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v0, p0, Lcom/perm/kate/smile/SmileKeyboard;->popupWindow:Landroid/widget/PopupWindow;

    .line 195
    new-instance v1, Lcom/perm/kate/smile/SmileKeyboard$4;

    invoke-direct {v1, p0}, Lcom/perm/kate/smile/SmileKeyboard$4;-><init>(Lcom/perm/kate/smile/SmileKeyboard;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void
.end method

.method private getDefaultPage(Ljava/util/ArrayList;)I
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 219
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 220
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage;

    .line 221
    iget-object v3, v2, Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage;->type:Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;

    sget-object v4, Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;->SMILES:Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;

    if-ne v3, v4, :cond_0

    iget v2, v2, Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage;->smile_page:I

    if-nez v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private getSmilePages()Ljava/util/ArrayList;
    .locals 10

    .line 228
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 230
    :try_start_0
    iget-boolean v1, p0, Lcom/perm/kate/smile/SmileKeyboard;->show_stickers:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 231
    invoke-static {}, Lcom/perm/kate/smile/StickerConfig;->getStickers()Ljava/util/ArrayList;

    move-result-object v1

    const v3, 0x7f0f0493

    if-eqz v1, :cond_1

    .line 233
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v2

    :goto_0
    if-ltz v4, :cond_1

    .line 234
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/perm/kate/api/Product;

    .line 235
    iget-object v6, v5, Lcom/perm/kate/api/Product;->title:Ljava/lang/String;

    .line 237
    iget v7, v5, Lcom/perm/kate/api/Product;->id:I

    sget v8, Lcom/perm/kate/smile/SmileKeyboard;->STICKERS_SET_SMILES:I

    if-ne v7, v8, :cond_0

    .line 238
    sget-object v6, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v6, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 239
    :cond_0
    new-instance v7, Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage;

    sget-object v8, Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;->STICKERS:Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;

    iget v9, v5, Lcom/perm/kate/api/Product;->id:I

    iget-object v5, v5, Lcom/perm/kate/api/Product;->sticker_ids:[I

    invoke-direct {v7, v8, v9, v5, v6}, Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage;-><init>(Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;I[ILjava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 242
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const v5, 0x7f0f041f

    invoke-virtual {v4, v5}, Landroid/app/Application;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v4, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 243
    new-instance v3, Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage;

    sget-object v4, Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;->STICKERS:Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;

    invoke-static {}, Lcom/perm/kate/RecentStickers;->get()[I

    move-result-object v5

    const/4 v6, -0x1

    invoke-direct {v3, v4, v6, v5, v1}, Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage;-><init>(Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;I[ILjava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    :cond_2
    new-instance v1, Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage;

    sget-object v3, Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;->SMILES:Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage;-><init>(Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    new-instance v1, Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage;

    sget-object v4, Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;->RECENT_SMILES:Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;

    invoke-direct {v1, v4}, Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage;-><init>(Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    new-instance v1, Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage;

    invoke-direct {v1, v3, v2}, Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage;-><init>(Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    new-instance v1, Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage;

    const/4 v2, 0x2

    invoke-direct {v1, v3, v2}, Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage;-><init>(Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    new-instance v1, Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage;

    const/4 v2, 0x3

    invoke-direct {v1, v3, v2}, Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage;-><init>(Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    new-instance v1, Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage;

    const/4 v2, 0x4

    invoke-direct {v1, v3, v2}, Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage;-><init>(Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 252
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 253
    invoke-static {v1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :goto_1
    return-object v0
.end method

.method public static getViewInset(Landroid/view/View;)I
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 332
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_0

    goto :goto_0

    .line 337
    :cond_0
    :try_start_0
    const-class v1, Landroid/view/View;

    const-string v2, "mAttachInfo"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    .line 338
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 339
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 341
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "mStableInsets"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 342
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 343
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Rect;

    .line 344
    iget p0, p0, Landroid/graphics/Rect;->bottom:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 347
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 348
    invoke-static {p0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return v0
.end method

.method private updateFooterHeight()V
    .locals 3

    .line 128
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/perm/kate/smile/SmileKeyboard;->keyboardHeight:I

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 129
    iget-object v1, p0, Lcom/perm/kate/smile/SmileKeyboard;->emoticonsCover:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 383
    iget-object v0, p0, Lcom/perm/kate/smile/SmileKeyboard;->layoutListener:Lcom/perm/kate/smile/SmileKeyboard$LayoutListener;

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/perm/kate/smile/SmileKeyboard;->parentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/smile/SmileKeyboard;->layoutListener:Lcom/perm/kate/smile/SmileKeyboard$LayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    const/4 v0, 0x0

    .line 385
    iput-object v0, p0, Lcom/perm/kate/smile/SmileKeyboard;->layoutListener:Lcom/perm/kate/smile/SmileKeyboard$LayoutListener;

    .line 387
    iget-object v1, p0, Lcom/perm/kate/smile/SmileKeyboard;->popupWindow:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_1

    .line 388
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 389
    :cond_1
    iput-object v0, p0, Lcom/perm/kate/smile/SmileKeyboard;->popupWindow:Landroid/widget/PopupWindow;

    .line 391
    iput-object v0, p0, Lcom/perm/kate/smile/SmileKeyboard;->emoticonsCover:Landroid/widget/LinearLayout;

    .line 392
    iput-object v0, p0, Lcom/perm/kate/smile/SmileKeyboard;->parentLayout:Landroid/widget/LinearLayout;

    .line 393
    iput-object v0, p0, Lcom/perm/kate/smile/SmileKeyboard;->popUpView:Landroid/view/View;

    .line 395
    iget-object v1, p0, Lcom/perm/kate/smile/SmileKeyboard;->smileButton:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 396
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 397
    :cond_2
    iput-object v0, p0, Lcom/perm/kate/smile/SmileKeyboard;->smileButton:Landroid/view/View;

    return-void
.end method

.method public editTouch()V
    .locals 1

    .line 374
    iget-object v0, p0, Lcom/perm/kate/smile/SmileKeyboard;->listener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/perm/kate/smile/SmileKeyboard;->listener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/smile/SmilePagerAdapter$SmileSelectedListener;

    invoke-virtual {v0}, Lcom/perm/kate/smile/SmilePagerAdapter$SmileSelectedListener;->editTouch()V

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/smile/SmileKeyboard;->popupWindow:Landroid/widget/PopupWindow;

    if-nez v0, :cond_1

    return-void

    .line 378
    :cond_1
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 379
    iget-object v0, p0, Lcom/perm/kate/smile/SmileKeyboard;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_2
    return-void
.end method

.method public init(Landroidx/fragment/app/FragmentActivity;Landroid/view/View;Lcom/perm/kate/smile/SmilePagerAdapter$SmileSelectedListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 56
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/perm/kate/smile/SmileKeyboard;->init(Landroidx/fragment/app/FragmentActivity;Landroid/view/View;Lcom/perm/kate/smile/SmilePagerAdapter$SmileSelectedListener;Z)V

    return-void
.end method

.method public init(Landroidx/fragment/app/FragmentActivity;Landroid/view/View;Lcom/perm/kate/smile/SmilePagerAdapter$SmileSelectedListener;Z)V
    .locals 1

    .line 60
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/perm/kate/smile/SmileKeyboard;->activity:Ljava/lang/ref/WeakReference;

    .line 61
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/perm/kate/smile/SmileKeyboard;->listener:Ljava/lang/ref/WeakReference;

    .line 62
    iput-object p2, p0, Lcom/perm/kate/smile/SmileKeyboard;->smileButton:Landroid/view/View;

    .line 63
    iput-boolean p4, p0, Lcom/perm/kate/smile/SmileKeyboard;->show_stickers:Z

    .line 64
    iput-boolean p4, p0, Lcom/perm/kate/smile/SmileKeyboard;->show_stickers_configure:Z

    const p3, 0x7f0901c2

    .line 65
    invoke-virtual {p1, p3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/perm/kate/smile/SmileKeyboard;->parentLayout:Landroid/widget/LinearLayout;

    const p3, 0x7f09014d

    .line 66
    invoke-virtual {p1, p3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/perm/kate/smile/SmileKeyboard;->emoticonsCover:Landroid/widget/LinearLayout;

    const-wide p3, 0x406cc00000000000L    # 230.0

    .line 68
    invoke-static {p3, p4}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result p1

    iput p1, p0, Lcom/perm/kate/smile/SmileKeyboard;->keyboardHeight:I

    if-eqz p2, :cond_0

    .line 72
    new-instance p1, Lcom/perm/kate/smile/SmileKeyboard$1;

    invoke-direct {p1, p0}, Lcom/perm/kate/smile/SmileKeyboard$1;-><init>(Lcom/perm/kate/smile/SmileKeyboard;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    :cond_0
    invoke-direct {p0}, Lcom/perm/kate/smile/SmileKeyboard;->addGlobalLayoutListener()V

    return-void
.end method

.method public onKeyDown()Z
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/perm/kate/smile/SmileKeyboard;->popupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/perm/kate/smile/SmileKeyboard;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public registerEditText(Landroid/widget/EditText;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 85
    new-instance v0, Lcom/perm/kate/smile/SmileKeyboard$TouchListener;

    invoke-direct {v0, p0}, Lcom/perm/kate/smile/SmileKeyboard$TouchListener;-><init>(Lcom/perm/kate/smile/SmileKeyboard;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public smileButtonClick()V
    .locals 4

    .line 110
    iget-object v0, p0, Lcom/perm/kate/smile/SmileKeyboard;->popupWindow:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    .line 111
    invoke-direct {p0}, Lcom/perm/kate/smile/SmileKeyboard;->createPopUpView()V

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/smile/SmileKeyboard;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 113
    iget-object v0, p0, Lcom/perm/kate/smile/SmileKeyboard;->popupWindow:Landroid/widget/PopupWindow;

    iget v1, p0, Lcom/perm/kate/smile/SmileKeyboard;->keyboardHeight:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 114
    invoke-direct {p0}, Lcom/perm/kate/smile/SmileKeyboard;->updateFooterHeight()V

    .line 116
    iget-boolean v0, p0, Lcom/perm/kate/smile/SmileKeyboard;->isKeyBoardVisible:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Lcom/perm/kate/smile/SmileKeyboard;->emoticonsCover:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/smile/SmileKeyboard;->emoticonsCover:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 120
    :goto_0
    iget-object v0, p0, Lcom/perm/kate/smile/SmileKeyboard;->popupWindow:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/perm/kate/smile/SmileKeyboard;->parentLayout:Landroid/widget/LinearLayout;

    const/16 v3, 0x50

    invoke-virtual {v0, v2, v3, v1, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_1

    .line 122
    :cond_2
    iget-object v0, p0, Lcom/perm/kate/smile/SmileKeyboard;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 123
    :goto_1
    iget-object v0, p0, Lcom/perm/kate/smile/SmileKeyboard;->listener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 124
    iget-object v0, p0, Lcom/perm/kate/smile/SmileKeyboard;->listener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/smile/SmilePagerAdapter$SmileSelectedListener;

    invoke-virtual {v0}, Lcom/perm/kate/smile/SmilePagerAdapter$SmileSelectedListener;->smileButtonClick()V

    :cond_3
    return-void
.end method

.method public updatePages(I)V
    .locals 6

    .line 205
    iget-object v0, p0, Lcom/perm/kate/smile/SmileKeyboard;->popUpView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v1, 0x7f090115

    .line 207
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    .line 209
    invoke-direct {p0}, Lcom/perm/kate/smile/SmileKeyboard;->getSmilePages()Ljava/util/ArrayList;

    move-result-object v1

    .line 210
    new-instance v2, Lcom/perm/kate/smile/SmilePagerAdapter;

    iget-object v3, p0, Lcom/perm/kate/smile/SmileKeyboard;->activity:Ljava/lang/ref/WeakReference;

    iget-object v4, p0, Lcom/perm/kate/smile/SmileKeyboard;->listener:Ljava/lang/ref/WeakReference;

    iget-boolean v5, p0, Lcom/perm/kate/smile/SmileKeyboard;->show_stickers:Z

    invoke-direct {v2, v3, v4, v5, v1}, Lcom/perm/kate/smile/SmilePagerAdapter;-><init>(Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;ZLjava/util/ArrayList;)V

    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 211
    sget v2, Lcom/perm/kate/smile/SmileKeyboard;->NO_PAGE:I

    const/4 v3, 0x0

    if-eq p1, v2, :cond_1

    .line 212
    invoke-virtual {v0, p1, v3}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    .line 215
    :cond_1
    invoke-direct {p0, v1}, Lcom/perm/kate/smile/SmileKeyboard;->getDefaultPage(Ljava/util/ArrayList;)I

    move-result p1

    invoke-virtual {v0, p1, v3}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    :goto_0
    return-void
.end method

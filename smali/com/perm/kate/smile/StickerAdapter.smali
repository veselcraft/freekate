.class public Lcom/perm/kate/smile/StickerAdapter;
.super Landroid/widget/BaseAdapter;
.source "StickerAdapter.java"


# instance fields
.field activity:Ljava/lang/ref/WeakReference;

.field private clickListener:Landroid/view/View$OnClickListener;

.field public ids:[I

.field listener:Ljava/lang/ref/WeakReference;


# direct methods
.method public static synthetic $r8$lambda$JD9l5CY1vEaWHe3fpzAKsjJxT2A(Lcom/airbnb/lottie/LottieComposition;Landroid/widget/ImageView;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/perm/kate/smile/StickerAdapter;->lambda$showAnimationPreview$1(Lcom/airbnb/lottie/LottieComposition;Landroid/widget/ImageView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$R110cTUP4T89x9eDoFYD9iuKbvc(Lcom/perm/kate/smile/StickerAdapter;ILandroid/widget/ImageView;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/perm/kate/smile/StickerAdapter;->lambda$showAnimationPreview$2(ILandroid/widget/ImageView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WJKRkJWJHVbsildrEdqwElL5Gn8(Lcom/perm/kate/smile/StickerAdapter;ILandroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/perm/kate/smile/StickerAdapter;->lambda$getView$0(ILandroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;[I)V
    .locals 1

    .line 31
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 152
    new-instance v0, Lcom/perm/kate/smile/StickerAdapter$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/smile/StickerAdapter$1;-><init>(Lcom/perm/kate/smile/StickerAdapter;)V

    iput-object v0, p0, Lcom/perm/kate/smile/StickerAdapter;->clickListener:Landroid/view/View$OnClickListener;

    .line 32
    iput-object p1, p0, Lcom/perm/kate/smile/StickerAdapter;->listener:Ljava/lang/ref/WeakReference;

    .line 33
    iput-object p2, p0, Lcom/perm/kate/smile/StickerAdapter;->activity:Ljava/lang/ref/WeakReference;

    .line 34
    iput-object p3, p0, Lcom/perm/kate/smile/StickerAdapter;->ids:[I

    .line 35
    invoke-static {}, Lcom/perm/utils/LeakDetector;->getInstance()Lcom/perm/utils/LeakDetector;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/perm/utils/LeakDetector;->monitorObject(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$getView$0(ILandroid/view/View;)Z
    .locals 0

    .line 82
    invoke-direct {p0, p1}, Lcom/perm/kate/smile/StickerAdapter;->showPreview(I)V

    const/4 p1, 0x1

    return p1
.end method

.method private static synthetic lambda$showAnimationPreview$1(Lcom/airbnb/lottie/LottieComposition;Landroid/widget/ImageView;)V
    .locals 1

    .line 133
    :try_start_0
    new-instance v0, Lcom/airbnb/lottie/LottieDrawable;

    invoke-direct {v0}, Lcom/airbnb/lottie/LottieDrawable;-><init>()V

    .line 135
    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/LottieDrawable;->setComposition(Lcom/airbnb/lottie/LottieComposition;)Z

    .line 137
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p0, 0x3

    .line 138
    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/LottieDrawable;->setRepeatCount(I)V

    .line 139
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->playAnimation()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 141
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 142
    invoke-static {p0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$showAnimationPreview$2(ILandroid/widget/ImageView;)V
    .locals 2

    .line 114
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://vk.com/sticker/3-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/perm/kate/theme/ThemeColorsHelper;->isLightTheme()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "b"

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".json"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 121
    invoke-static {p1}, Lcom/perm/kate/AttachmentsHelper;->getServerResponse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 122
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 123
    :cond_1
    invoke-static {v0, p1}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromJsonStringSync(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object v0

    .line 124
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieResult;->getException()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 126
    invoke-static {v1, p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 127
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 129
    :cond_2
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieResult;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieComposition;

    if-nez p1, :cond_3

    return-void

    .line 131
    :cond_3
    iget-object v0, p0, Lcom/perm/kate/smile/StickerAdapter;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    new-instance v1, Lcom/perm/kate/smile/StickerAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1, p2}, Lcom/perm/kate/smile/StickerAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/airbnb/lottie/LottieComposition;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 146
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 147
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method private showAnimationPreview(ILandroid/widget/ImageView;)V
    .locals 2

    .line 112
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/perm/kate/smile/StickerAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Lcom/perm/kate/smile/StickerAdapter$$ExternalSyntheticLambda2;-><init>(Lcom/perm/kate/smile/StickerAdapter;ILandroid/widget/ImageView;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 149
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private showPreview(I)V
    .locals 9

    const-wide/high16 v0, 0x4060000000000000L    # 128.0

    .line 91
    invoke-static {v0, v1}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v6

    const/16 v0, 0x80

    const/16 v1, 0x40

    if-le v6, v1, :cond_0

    const/16 v1, 0x80

    :cond_0
    if-le v6, v0, :cond_1

    const/16 v1, 0x100

    .line 97
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://vk.com/sticker/1-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/perm/kate/theme/ThemeColorsHelper;->isLightTheme()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "b"

    goto :goto_0

    :cond_2
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 100
    iget-object v0, p0, Lcom/perm/kate/smile/StickerAdapter;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c011d

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090184

    .line 101
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 102
    invoke-static {}, Lcom/perm/kate/AttachmentsHelper;->getResIdForNoPhoto4()I

    move-result v7

    .line 103
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v2

    const/4 v5, 0x1

    const/4 v8, 0x0

    move-object v4, v1

    invoke-virtual/range {v2 .. v8}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    .line 104
    new-instance v2, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/perm/kate/smile/StickerAdapter;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    invoke-direct {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 105
    invoke-virtual {v2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 106
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 108
    invoke-direct {p0, p1, v1}, Lcom/perm/kate/smile/StickerAdapter;->showAnimationPreview(ILandroid/widget/ImageView;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/perm/kate/smile/StickerAdapter;->ids:[I

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    .line 45
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    if-nez p2, :cond_0

    .line 58
    iget-object p2, p0, Lcom/perm/kate/smile/StickerAdapter;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/fragment/app/FragmentActivity;

    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    const v0, 0x7f0c011c

    const/4 v1, 0x0

    .line 59
    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 62
    :cond_0
    iget-object p3, p0, Lcom/perm/kate/smile/StickerAdapter;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p3, 0x7f090184

    .line 63
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    move-object v2, p3

    check-cast v2, Landroid/widget/ImageView;

    .line 64
    iget-object p3, p0, Lcom/perm/kate/smile/StickerAdapter;->ids:[I

    aget p1, p3, p1

    const-wide/high16 v0, 0x4050000000000000L    # 64.0

    .line 66
    invoke-static {v0, v1}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v4

    const/16 p3, 0x80

    const/16 v0, 0x40

    if-le v4, v0, :cond_1

    const/16 v0, 0x80

    :cond_1
    if-le v4, p3, :cond_2

    const/16 v0, 0x100

    .line 75
    :cond_2
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://vk.com/sticker/1-"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/perm/kate/theme/ThemeColorsHelper;->isLightTheme()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "b"

    goto :goto_0

    :cond_3
    const-string v0, ""

    :goto_0
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 78
    invoke-static {}, Lcom/perm/kate/AttachmentsHelper;->getResIdForNoPhoto4()I

    move-result v5

    .line 79
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v0

    const/4 v3, 0x1

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    .line 80
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 81
    new-instance p3, Lcom/perm/kate/smile/StickerAdapter$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0, p1}, Lcom/perm/kate/smile/StickerAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/perm/kate/smile/StickerAdapter;I)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-object p2
.end method

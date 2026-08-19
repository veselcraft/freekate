.class public Lcom/perm/kate/SmilesActivity$SmileAdapter;
.super Landroid/widget/BaseAdapter;
.source "SmilesActivity.java"


# instance fields
.field activity:Ljava/lang/ref/WeakReference;

.field private clickListener:Landroid/view/View$OnClickListener;

.field count:I

.field items:Ljava/util/ArrayList;

.field listener:Ljava/lang/ref/WeakReference;

.field offset:I


# direct methods
.method public constructor <init>(IILjava/lang/ref/WeakReference;Ljava/util/ArrayList;Ljava/lang/ref/WeakReference;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 125
    new-instance v0, Lcom/perm/kate/SmilesActivity$SmileAdapter$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/SmilesActivity$SmileAdapter$1;-><init>(Lcom/perm/kate/SmilesActivity$SmileAdapter;)V

    iput-object v0, p0, Lcom/perm/kate/SmilesActivity$SmileAdapter;->clickListener:Landroid/view/View$OnClickListener;

    if-nez p4, :cond_0

    .line 41
    iput p1, p0, Lcom/perm/kate/SmilesActivity$SmileAdapter;->offset:I

    .line 42
    iput p2, p0, Lcom/perm/kate/SmilesActivity$SmileAdapter;->count:I

    goto :goto_0

    .line 44
    :cond_0
    iput-object p4, p0, Lcom/perm/kate/SmilesActivity$SmileAdapter;->items:Ljava/util/ArrayList;

    .line 45
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p1

    iput p1, p0, Lcom/perm/kate/SmilesActivity$SmileAdapter;->count:I

    .line 47
    :goto_0
    iput-object p3, p0, Lcom/perm/kate/SmilesActivity$SmileAdapter;->listener:Ljava/lang/ref/WeakReference;

    .line 48
    iput-object p5, p0, Lcom/perm/kate/SmilesActivity$SmileAdapter;->activity:Ljava/lang/ref/WeakReference;

    .line 49
    invoke-static {}, Lcom/perm/utils/LeakDetector;->getInstance()Lcom/perm/utils/LeakDetector;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/perm/utils/LeakDetector;->monitorObject(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/SmilesActivity$SmileAdapter;Ljava/lang/String;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/perm/kate/SmilesActivity$SmileAdapter;->reportStats(Ljava/lang/String;)V

    return-void
.end method

.method public static escapeUnicode(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x6

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 157
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-char v4, p0, v3

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v2

    const-string v4, "\\u%04x"

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 158
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private reportStats(Ljava/lang/String;)V
    .locals 8

    .line 143
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x2710

    rem-long/2addr v0, v2

    const-wide/16 v2, 0x2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    return-void

    .line 144
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/StackTraceElement;

    const/4 v3, 0x0

    .line 145
    new-instance v4, Ljava/lang/StackTraceElement;

    const-string v5, "FakeClass"

    const-string v6, "smileStats"

    const-string v7, "FakeClass.java"

    invoke-direct {v4, v5, v6, v7, v1}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/Exception;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 148
    invoke-static {p1}, Lcom/perm/kate/SmilesActivity$SmileAdapter;->escapeUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 150
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 151
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 54
    iget v0, p0, Lcom/perm/kate/SmilesActivity$SmileAdapter;->count:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2

    .line 59
    sget-object v0, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    iget v1, p0, Lcom/perm/kate/SmilesActivity$SmileAdapter;->offset:I

    add-int/2addr v1, p1

    aget-object p1, v0, v1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 72
    iget-object p2, p0, Lcom/perm/kate/SmilesActivity$SmileAdapter;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/fragment/app/FragmentActivity;

    const-string v1, "layout_inflater"

    invoke-virtual {p2, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    const v1, 0x7f0c0118

    .line 73
    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 76
    :cond_0
    iget-object p3, p0, Lcom/perm/kate/SmilesActivity$SmileAdapter;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p3, 0x7f090184

    .line 77
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    const v1, 0x7f09032e

    .line 78
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    :try_start_0
    const-string v2, ""

    .line 83
    iget-object v3, p0, Lcom/perm/kate/SmilesActivity$SmileAdapter;->items:Ljava/util/ArrayList;

    if-nez v3, :cond_1

    .line 84
    sget-object v2, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    iget v3, p0, Lcom/perm/kate/SmilesActivity$SmileAdapter;->offset:I

    add-int v4, v3, p1

    aget-object v2, v2, v4

    .line 85
    sget-object v4, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    add-int v5, v3, p1

    aget-object v4, v4, v5

    .line 86
    sget-object v5, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    add-int/2addr v3, p1

    aget-object p1, v5, v3

    goto :goto_0

    .line 88
    :cond_1
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perm/utils/SmileHelper$ResCodePair;

    iget-object v3, v3, Lcom/perm/utils/SmileHelper$ResCodePair;->code:Ljava/lang/String;

    .line 89
    iget-object v4, p0, Lcom/perm/kate/SmilesActivity$SmileAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/utils/SmileHelper$ResCodePair;

    iget-object v4, p1, Lcom/perm/utils/SmileHelper$ResCodePair;->res:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v2

    move-object v2, v3

    :goto_0
    const/16 v3, 0x8

    if-eqz v4, :cond_2

    .line 93
    :try_start_1
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 94
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 95
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".png"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 96
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 97
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 98
    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 100
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 101
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 104
    :cond_2
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 105
    invoke-virtual {p3, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 106
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    :goto_1
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 110
    sget-object v0, Lcom/perm/utils/SmileHelper;->prefix:Ljava/lang/String;

    if-eqz p1, :cond_3

    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 114
    :cond_3
    invoke-static {}, Lcom/perm/utils/SmileHelper;->addSmileDescriptions()Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    move-object v2, v0

    .line 116
    :goto_2
    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 118
    invoke-virtual {p1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 119
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 120
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object p1

    iget-object p1, p1, Lcom/perm/kate/ImageLoader;->memoryCache:Lcom/perm/utils/MemoryCache;

    invoke-virtual {p1}, Lcom/perm/utils/MemoryCache;->clear()V

    :goto_3
    return-object p2
.end method

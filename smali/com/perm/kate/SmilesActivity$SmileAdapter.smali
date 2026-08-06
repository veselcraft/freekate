.class public Lcom/perm/kate/SmilesActivity$SmileAdapter;
.super Landroid/widget/BaseAdapter;
.source "SmilesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/SmilesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SmileAdapter"
.end annotation


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

.field private clickListener:Landroid/view/View$OnClickListener;

.field count:I

.field items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/utils/SmileHelper$ResCodePair;",
            ">;"
        }
    .end annotation
.end field

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

.field offset:I


# direct methods
.method public constructor <init>(IILjava/lang/ref/WeakReference;Ljava/util/ArrayList;Ljava/lang/ref/WeakReference;)V
    .locals 1
    .param p1, "offset"    # I
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/perm/kate/smile/SmilePagerAdapter$SmileSelectedListener;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/utils/SmileHelper$ResCodePair;",
            ">;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/support/v4/app/FragmentActivity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p3, "listener":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/perm/kate/smile/SmilePagerAdapter$SmileSelectedListener;>;"
    .local p4, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/utils/SmileHelper$ResCodePair;>;"
    .local p5, "activity":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/support/v4/app/FragmentActivity;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 114
    new-instance v0, Lcom/perm/kate/SmilesActivity$SmileAdapter$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/SmilesActivity$SmileAdapter$1;-><init>(Lcom/perm/kate/SmilesActivity$SmileAdapter;)V

    iput-object v0, p0, Lcom/perm/kate/SmilesActivity$SmileAdapter;->clickListener:Landroid/view/View$OnClickListener;

    .line 41
    if-nez p4, :cond_0

    .line 42
    iput p1, p0, Lcom/perm/kate/SmilesActivity$SmileAdapter;->offset:I

    .line 43
    iput p2, p0, Lcom/perm/kate/SmilesActivity$SmileAdapter;->count:I

    .line 48
    :goto_0
    iput-object p3, p0, Lcom/perm/kate/SmilesActivity$SmileAdapter;->listener:Ljava/lang/ref/WeakReference;

    .line 49
    iput-object p5, p0, Lcom/perm/kate/SmilesActivity$SmileAdapter;->activity:Ljava/lang/ref/WeakReference;

    .line 50
    invoke-static {}, Lcom/perm/utils/LeakDetector;->getInstance()Lcom/perm/utils/LeakDetector;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/perm/utils/LeakDetector;->monitorObject(Ljava/lang/Object;)V

    .line 51
    return-void

    .line 45
    :cond_0
    iput-object p4, p0, Lcom/perm/kate/SmilesActivity$SmileAdapter;->items:Ljava/util/ArrayList;

    .line 46
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/perm/kate/SmilesActivity$SmileAdapter;->count:I

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/perm/kate/SmilesActivity$SmileAdapter;->count:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 60
    sget-object v0, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    iget v1, p0, Lcom/perm/kate/SmilesActivity$SmileAdapter;->offset:I

    add-int/2addr v1, p1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 65
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 14
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 70
    move-object/from16 v10, p2

    .line 71
    .local v10, "vi":Landroid/view/View;
    if-nez p2, :cond_0

    .line 73
    iget-object v11, p0, Lcom/perm/kate/SmilesActivity$SmileAdapter;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v11}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/support/v4/app/FragmentActivity;

    const-string v12, "layout_inflater"

    invoke-virtual {v11, v12}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/LayoutInflater;

    const v12, 0x7f0300fc

    const/4 v13, 0x0

    .line 74
    move-object/from16 v0, p3

    invoke-virtual {v11, v12, v0, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    .line 77
    :cond_0
    iget-object v11, p0, Lcom/perm/kate/SmilesActivity$SmileAdapter;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v10, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    const v11, 0x7f0e028b

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 82
    .local v6, "iv":Landroid/widget/ImageView;
    :try_start_0
    const-string v8, ""

    .line 83
    .local v8, "text":Ljava/lang/String;
    iget-object v11, p0, Lcom/perm/kate/SmilesActivity$SmileAdapter;->items:Ljava/util/ArrayList;

    if-nez v11, :cond_2

    .line 84
    sget-object v11, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    iget v12, p0, Lcom/perm/kate/SmilesActivity$SmileAdapter;->offset:I

    add-int/2addr v12, p1

    aget-object v2, v11, v12

    .line 85
    .local v2, "code":Ljava/lang/String;
    sget-object v11, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    iget v12, p0, Lcom/perm/kate/SmilesActivity$SmileAdapter;->offset:I

    add-int/2addr v12, p1

    aget-object v7, v11, v12

    .line 86
    .local v7, "res":Ljava/lang/String;
    sget-object v11, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    iget v12, p0, Lcom/perm/kate/SmilesActivity$SmileAdapter;->offset:I

    add-int/2addr v12, p1

    aget-object v8, v11, v12
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 92
    :goto_0
    :try_start_1
    sget-object v11, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v11}, Landroid/app/Application;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".png"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    .line 93
    .local v5, "is":Ljava/io/InputStream;
    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 94
    .local v1, "bmp":Landroid/graphics/Bitmap;
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 95
    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    .line 100
    .end local v1    # "bmp":Landroid/graphics/Bitmap;
    .end local v5    # "is":Ljava/io/InputStream;
    :goto_1
    :try_start_2
    invoke-virtual {v10, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 102
    sget-object v3, Lcom/perm/utils/SmileHelper;->prefix:Ljava/lang/String;

    .line 103
    .local v3, "content_description":Ljava/lang/String;
    if-eqz v8, :cond_1

    .line 104
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 105
    :cond_1
    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 111
    .end local v2    # "code":Ljava/lang/String;
    .end local v3    # "content_description":Ljava/lang/String;
    .end local v7    # "res":Ljava/lang/String;
    .end local v8    # "text":Ljava/lang/String;
    :goto_2
    return-object v10

    .line 88
    .restart local v8    # "text":Ljava/lang/String;
    :cond_2
    iget-object v11, p0, Lcom/perm/kate/SmilesActivity$SmileAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v11, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/perm/utils/SmileHelper$ResCodePair;

    iget-object v2, v11, Lcom/perm/utils/SmileHelper$ResCodePair;->code:Ljava/lang/String;

    .line 89
    .restart local v2    # "code":Ljava/lang/String;
    iget-object v11, p0, Lcom/perm/kate/SmilesActivity$SmileAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v11, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/perm/utils/SmileHelper$ResCodePair;

    iget-object v7, v11, Lcom/perm/utils/SmileHelper$ResCodePair;->res:Ljava/lang/String;

    .restart local v7    # "res":Ljava/lang/String;
    goto :goto_0

    .line 96
    :catch_0
    move-exception v9

    .line 97
    .local v9, "th":Ljava/lang/Throwable;
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    .line 98
    invoke-static {v9}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 106
    .end local v2    # "code":Ljava/lang/String;
    .end local v7    # "res":Ljava/lang/String;
    .end local v8    # "text":Ljava/lang/String;
    .end local v9    # "th":Ljava/lang/Throwable;
    :catch_1
    move-exception v4

    .line 107
    .local v4, "ex":Ljava/lang/OutOfMemoryError;
    invoke-virtual {v4}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 108
    invoke-static {v4}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 109
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v11

    iget-object v11, v11, Lcom/perm/kate/ImageLoader;->memoryCache:Lcom/perm/utils/MemoryCache;

    invoke-virtual {v11}, Lcom/perm/utils/MemoryCache;->clear()V

    goto :goto_2
.end method

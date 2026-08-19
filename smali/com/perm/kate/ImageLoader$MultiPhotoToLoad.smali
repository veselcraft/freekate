.class Lcom/perm/kate/ImageLoader$MultiPhotoToLoad;
.super Lcom/perm/kate/ImageLoader$PhotoToLoad;
.source "ImageLoader.java"


# instance fields
.field public imageView:Ljava/lang/ref/WeakReference;

.field public resample_height:I

.field public resample_width:I

.field public stub_id:I

.field final synthetic this$0:Lcom/perm/kate/ImageLoader;

.field public urls:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/perm/kate/ImageLoader;Ljava/util/ArrayList;Landroid/widget/ImageView;IIILjava/lang/String;)V
    .locals 0

    .line 722
    iput-object p1, p0, Lcom/perm/kate/ImageLoader$MultiPhotoToLoad;->this$0:Lcom/perm/kate/ImageLoader;

    .line 723
    invoke-direct {p0, p7}, Lcom/perm/kate/ImageLoader$PhotoToLoad;-><init>(Ljava/lang/String;)V

    .line 724
    iput p6, p0, Lcom/perm/kate/ImageLoader$MultiPhotoToLoad;->stub_id:I

    .line 725
    iput-object p2, p0, Lcom/perm/kate/ImageLoader$MultiPhotoToLoad;->urls:Ljava/util/List;

    .line 726
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/perm/kate/ImageLoader$MultiPhotoToLoad;->imageView:Ljava/lang/ref/WeakReference;

    .line 727
    iput p4, p0, Lcom/perm/kate/ImageLoader$MultiPhotoToLoad;->resample_width:I

    .line 728
    iput p5, p0, Lcom/perm/kate/ImageLoader$MultiPhotoToLoad;->resample_height:I

    return-void
.end method

.method private drawableToBitmap(I)Landroid/graphics/Bitmap;
    .locals 5

    .line 783
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 784
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 785
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 788
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    const/16 v1, 0x64

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 789
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 790
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 791
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method private mergeBitmaps(Ljava/util/ArrayList;)Landroid/graphics/Bitmap;
    .locals 16

    move-object/from16 v0, p1

    const/16 v1, 0x64

    .line 815
    :try_start_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 816
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 817
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    const/4 v5, 0x1

    .line 818
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 819
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 822
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x2

    const/4 v8, 0x3

    const/16 v9, 0x31

    const/4 v10, 0x4

    const/16 v11, 0x33

    const/4 v12, 0x0

    if-ne v6, v7, :cond_0

    .line 823
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    .line 824
    new-instance v15, Landroid/graphics/Rect;

    div-int/lit8 v7, v13, 0x4

    mul-int/lit8 v13, v13, 0x3

    div-int/2addr v13, v10

    invoke-direct {v15, v7, v12, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v12, v12, v9, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v6, v15, v7, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 825
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    .line 826
    new-instance v14, Landroid/graphics/Rect;

    div-int/lit8 v15, v7, 0x4

    mul-int/lit8 v7, v7, 0x3

    div-int/2addr v7, v10

    invoke-direct {v14, v15, v12, v7, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v11, v12, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v6, v14, v7, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 828
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v6, v8, :cond_1

    .line 829
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    .line 830
    new-instance v14, Landroid/graphics/Rect;

    div-int/lit8 v15, v7, 0x4

    mul-int/lit8 v7, v7, 0x3

    div-int/2addr v7, v10

    invoke-direct {v14, v15, v12, v7, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v12, v12, v9, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v6, v14, v7, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 831
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    .line 832
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14, v12, v12, v7, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v11, v12, v1, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v6, v14, v7, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    const/4 v6, 0x2

    .line 833
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    .line 834
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14, v12, v12, v6, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v11, v11, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v7, v14, v6, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 836
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v6, v10, :cond_2

    .line 837
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    .line 838
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13, v12, v12, v7, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v12, v12, v9, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v6, v13, v7, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 839
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 840
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10, v12, v12, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v12, v11, v9, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v5, v10, v6, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    const/4 v5, 0x2

    .line 841
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 842
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10, v12, v12, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v11, v12, v1, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v5, v10, v6, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 843
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 844
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v12, v12, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v11, v11, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v0, v7, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-object v2

    :catch_0
    move-exception v0

    .line 848
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 849
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    move-object/from16 v1, p0

    .line 850
    iget-object v0, v1, Lcom/perm/kate/ImageLoader$MultiPhotoToLoad;->this$0:Lcom/perm/kate/ImageLoader;

    iget-object v0, v0, Lcom/perm/kate/ImageLoader;->memoryCache:Lcom/perm/utils/MemoryCache;

    invoke-virtual {v0}, Lcom/perm/utils/MemoryCache;->clear()V

    const/4 v0, 0x0

    return-object v0
.end method

.method private storeToCache(Landroid/graphics/Bitmap;Ljava/io/File;)V
    .locals 2

    const/4 v0, 0x0

    .line 798
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 799
    :try_start_1
    sget-object p2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v0, 0x64

    invoke-virtual {p1, p2, v0, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 800
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 801
    iget-object p1, p0, Lcom/perm/kate/ImageLoader$MultiPhotoToLoad;->this$0:Lcom/perm/kate/ImageLoader;

    invoke-static {p1}, Lcom/perm/kate/ImageLoader;->access$100(Lcom/perm/kate/ImageLoader;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 807
    invoke-static {v1}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    goto :goto_3

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_4

    :catch_0
    move-exception p1

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception p1

    move-object v0, v1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_2
    move-exception p1

    .line 805
    :goto_0
    :try_start_2
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_3
    move-exception p1

    .line 803
    :goto_1
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 807
    :goto_2
    invoke-static {v0}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    :goto_3
    return-void

    :goto_4
    invoke-static {v0}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 808
    throw p1
.end method


# virtual methods
.method clear()V
    .locals 1

    .line 870
    invoke-super {p0}, Lcom/perm/kate/ImageLoader$PhotoToLoad;->clear()V

    .line 871
    iget-object v0, p0, Lcom/perm/kate/ImageLoader$MultiPhotoToLoad;->imageView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    return-void
.end method

.method display()V
    .locals 4

    .line 857
    iget-object v0, p0, Lcom/perm/kate/ImageLoader$MultiPhotoToLoad;->imageView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    .line 860
    :cond_0
    iget-object v1, p0, Lcom/perm/kate/ImageLoader$MultiPhotoToLoad;->this$0:Lcom/perm/kate/ImageLoader;

    iget-object v2, p0, Lcom/perm/kate/ImageLoader$PhotoToLoad;->bmp:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/perm/kate/ImageLoader$MultiPhotoToLoad;->stub_id:I

    invoke-virtual {v1, v0, v2, v3}, Lcom/perm/kate/ImageLoader;->displayBitmap(Landroid/widget/ImageView;Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method getView()Landroid/view/View;
    .locals 1

    .line 865
    iget-object v0, p0, Lcom/perm/kate/ImageLoader$MultiPhotoToLoad;->imageView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method load()V
    .locals 12

    .line 734
    :try_start_0
    iget-object v0, p0, Lcom/perm/kate/ImageLoader$MultiPhotoToLoad;->imageView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 737
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/ImageLoader$MultiPhotoToLoad;->this$0:Lcom/perm/kate/ImageLoader;

    iget-object v1, p0, Lcom/perm/kate/ImageLoader$PhotoToLoad;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/perm/kate/ImageLoader;->getCacheFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 740
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 741
    iget-object v2, p0, Lcom/perm/kate/ImageLoader$MultiPhotoToLoad;->this$0:Lcom/perm/kate/ImageLoader;

    iget v4, p0, Lcom/perm/kate/ImageLoader$MultiPhotoToLoad;->resample_width:I

    iget v5, p0, Lcom/perm/kate/ImageLoader$MultiPhotoToLoad;->resample_height:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v0

    invoke-virtual/range {v2 .. v7}, Lcom/perm/kate/ImageLoader;->decodeFile(Ljava/io/File;IIZZ)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/perm/kate/ImageLoader$PhotoToLoad;->bmp:Landroid/graphics/Bitmap;

    .line 744
    :cond_1
    iget-object v1, p0, Lcom/perm/kate/ImageLoader$PhotoToLoad;->bmp:Landroid/graphics/Bitmap;

    if-nez v1, :cond_7

    .line 747
    iget-object v1, p0, Lcom/perm/kate/ImageLoader$MultiPhotoToLoad;->urls:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-le v1, v2, :cond_2

    .line 748
    iget-object v1, p0, Lcom/perm/kate/ImageLoader$MultiPhotoToLoad;->urls:Ljava/util/List;

    invoke-interface {v1, v3, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/perm/kate/ImageLoader$MultiPhotoToLoad;->urls:Ljava/util/List;

    .line 749
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/perm/kate/ImageLoader$MultiPhotoToLoad;->urls:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 750
    iget-object v2, p0, Lcom/perm/kate/ImageLoader$MultiPhotoToLoad;->urls:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Ljava/lang/String;

    if-nez v6, :cond_3

    .line 752
    iget v4, p0, Lcom/perm/kate/ImageLoader$MultiPhotoToLoad;->stub_id:I

    invoke-direct {p0, v4}, Lcom/perm/kate/ImageLoader$MultiPhotoToLoad;->drawableToBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 755
    :cond_3
    iget-object v5, p0, Lcom/perm/kate/ImageLoader$MultiPhotoToLoad;->this$0:Lcom/perm/kate/ImageLoader;

    iget v7, p0, Lcom/perm/kate/ImageLoader$MultiPhotoToLoad;->resample_width:I

    iget v8, p0, Lcom/perm/kate/ImageLoader$MultiPhotoToLoad;->resample_height:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v5 .. v11}, Lcom/perm/kate/ImageLoader;->getBitmap(Ljava/lang/String;IIZLcom/perm/utils/UploadProgressListener;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 756
    iget-object v5, p0, Lcom/perm/kate/ImageLoader$MultiPhotoToLoad;->imageView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_4

    return-void

    :cond_4
    if-nez v4, :cond_5

    const/4 v3, 0x1

    .line 764
    iget v4, p0, Lcom/perm/kate/ImageLoader$MultiPhotoToLoad;->stub_id:I

    invoke-direct {p0, v4}, Lcom/perm/kate/ImageLoader$MultiPhotoToLoad;->drawableToBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 767
    :cond_5
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 769
    :cond_6
    invoke-direct {p0, v1}, Lcom/perm/kate/ImageLoader$MultiPhotoToLoad;->mergeBitmaps(Ljava/util/ArrayList;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/perm/kate/ImageLoader$PhotoToLoad;->bmp:Landroid/graphics/Bitmap;

    if-nez v3, :cond_7

    if-eqz v1, :cond_7

    .line 771
    invoke-direct {p0, v1, v0}, Lcom/perm/kate/ImageLoader$MultiPhotoToLoad;->storeToCache(Landroid/graphics/Bitmap;Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 774
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 775
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 777
    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/perm/kate/ImageLoader$MultiPhotoToLoad;->this$0:Lcom/perm/kate/ImageLoader;

    iget-object v1, p0, Lcom/perm/kate/ImageLoader$PhotoToLoad;->key:Ljava/lang/String;

    iget-object v2, p0, Lcom/perm/kate/ImageLoader$PhotoToLoad;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Lcom/perm/kate/ImageLoader;->putToMemoryCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method setView(Landroid/view/View;)V
    .locals 1

    .line 876
    new-instance v0, Ljava/lang/ref/WeakReference;

    check-cast p1, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/perm/kate/ImageLoader$MultiPhotoToLoad;->imageView:Ljava/lang/ref/WeakReference;

    return-void
.end method

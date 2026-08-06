.class Lcom/perm/kate/ImageLoader$MultiPhotoToLoad;
.super Lcom/perm/kate/ImageLoader$PhotoToLoad;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiPhotoToLoad"
.end annotation


# instance fields
.field public imageView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field public resample_height:I

.field public resample_width:I

.field public stub_id:I

.field final synthetic this$0:Lcom/perm/kate/ImageLoader;

.field public urls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/perm/kate/ImageLoader;Ljava/util/ArrayList;Landroid/widget/ImageView;IIILjava/lang/String;)V
    .locals 1
    .param p3, "i"    # Landroid/widget/ImageView;
    .param p4, "resample_width"    # I
    .param p5, "resample_height"    # I
    .param p6, "stub_id"    # I
    .param p7, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/widget/ImageView;",
            "III",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 579
    .local p2, "u":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/perm/kate/ImageLoader$MultiPhotoToLoad;->this$0:Lcom/perm/kate/ImageLoader;

    .line 580
    invoke-direct {p0, p7}, Lcom/perm/kate/ImageLoader$PhotoToLoad;-><init>(Ljava/lang/String;)V

    .line 581
    iput p6, p0, Lcom/perm/kate/ImageLoader$MultiPhotoToLoad;->stub_id:I

    .line 582
    iput-object p2, p0, Lcom/perm/kate/ImageLoader$MultiPhotoToLoad;->urls:Ljava/util/ArrayList;

    .line 583
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/perm/kate/ImageLoader$MultiPhotoToLoad;->imageView:Ljava/lang/ref/WeakReference;

    .line 584
    iput p4, p0, Lcom/perm/kate/ImageLoader$MultiPhotoToLoad;->resample_width:I

    .line 585
    iput p5, p0, Lcom/perm/kate/ImageLoader$MultiPhotoToLoad;->resample_height:I

    .line 586
    return-void
.end method

.method private drawableToBitmap(I)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "id"    # I

    .prologue
    const/16 v4, 0x64

    const/4 v5, 0x0

    .line 636
    sget-object v3, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v3}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 637
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v3, v2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_0

    .line 638
    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 645
    :goto_0
    return-object v0

    .line 641
    .restart local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v4, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 642
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 643
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 644
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method private mergeBitmaps(Ljava/util/ArrayList;)Landroid/graphics/Bitmap;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .prologue
    .local p1, "bitmaps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    const/4 v9, 0x2

    .line 666
    const/16 v6, 0x64

    .line 667
    .local v6, "size":I
    :try_start_0
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v6, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 668
    .local v1, "bmp":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 669
    .local v2, "canvas":Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 670
    .local v5, "paint":Landroid/graphics/Paint;
    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 671
    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 674
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ne v8, v9, :cond_0

    .line 675
    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .local v0, "b":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .local v7, "width":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 676
    .local v4, "height":I
    new-instance v8, Landroid/graphics/Rect;

    div-int/lit8 v9, v7, 0x4

    const/4 v10, 0x0

    mul-int/lit8 v11, v7, 0x3

    div-int/lit8 v11, v11, 0x4

    invoke-direct {v8, v9, v10, v11, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v9, Landroid/graphics/Rect;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x31

    invoke-direct {v9, v10, v11, v12, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v0, v8, v9, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 677
    const/4 v8, 0x1

    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "b":Landroid/graphics/Bitmap;
    check-cast v0, Landroid/graphics/Bitmap;

    .restart local v0    # "b":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 678
    new-instance v8, Landroid/graphics/Rect;

    div-int/lit8 v9, v7, 0x4

    const/4 v10, 0x0

    mul-int/lit8 v11, v7, 0x3

    div-int/lit8 v11, v11, 0x4

    invoke-direct {v8, v9, v10, v11, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v9, Landroid/graphics/Rect;

    const/16 v10, 0x33

    const/4 v11, 0x0

    invoke-direct {v9, v10, v11, v6, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v0, v8, v9, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 680
    .end local v0    # "b":Landroid/graphics/Bitmap;
    .end local v4    # "height":I
    .end local v7    # "width":I
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x3

    if-ne v8, v9, :cond_1

    .line 681
    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .restart local v0    # "b":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .restart local v7    # "width":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 682
    .restart local v4    # "height":I
    new-instance v8, Landroid/graphics/Rect;

    div-int/lit8 v9, v7, 0x4

    const/4 v10, 0x0

    mul-int/lit8 v11, v7, 0x3

    div-int/lit8 v11, v11, 0x4

    invoke-direct {v8, v9, v10, v11, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v9, Landroid/graphics/Rect;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x31

    invoke-direct {v9, v10, v11, v12, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v0, v8, v9, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 683
    const/4 v8, 0x1

    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "b":Landroid/graphics/Bitmap;
    check-cast v0, Landroid/graphics/Bitmap;

    .restart local v0    # "b":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 684
    new-instance v8, Landroid/graphics/Rect;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10, v7, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v9, Landroid/graphics/Rect;

    const/16 v10, 0x33

    const/4 v11, 0x0

    const/16 v12, 0x31

    invoke-direct {v9, v10, v11, v6, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v0, v8, v9, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 685
    const/4 v8, 0x2

    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "b":Landroid/graphics/Bitmap;
    check-cast v0, Landroid/graphics/Bitmap;

    .restart local v0    # "b":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 686
    new-instance v8, Landroid/graphics/Rect;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10, v7, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v9, Landroid/graphics/Rect;

    const/16 v10, 0x33

    const/16 v11, 0x33

    invoke-direct {v9, v10, v11, v6, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v0, v8, v9, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 688
    .end local v0    # "b":Landroid/graphics/Bitmap;
    .end local v4    # "height":I
    .end local v7    # "width":I
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x4

    if-lt v8, v9, :cond_2

    .line 689
    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .restart local v0    # "b":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .restart local v7    # "width":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 690
    .restart local v4    # "height":I
    new-instance v8, Landroid/graphics/Rect;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10, v7, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v9, Landroid/graphics/Rect;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x31

    const/16 v13, 0x31

    invoke-direct {v9, v10, v11, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v0, v8, v9, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 691
    const/4 v8, 0x1

    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "b":Landroid/graphics/Bitmap;
    check-cast v0, Landroid/graphics/Bitmap;

    .restart local v0    # "b":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 692
    new-instance v8, Landroid/graphics/Rect;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10, v7, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v9, Landroid/graphics/Rect;

    const/4 v10, 0x0

    const/16 v11, 0x33

    const/16 v12, 0x31

    invoke-direct {v9, v10, v11, v12, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v0, v8, v9, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 693
    const/4 v8, 0x2

    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "b":Landroid/graphics/Bitmap;
    check-cast v0, Landroid/graphics/Bitmap;

    .restart local v0    # "b":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 694
    new-instance v8, Landroid/graphics/Rect;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10, v7, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v9, Landroid/graphics/Rect;

    const/16 v10, 0x33

    const/4 v11, 0x0

    const/16 v12, 0x31

    invoke-direct {v9, v10, v11, v6, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v0, v8, v9, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 695
    const/4 v8, 0x3

    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "b":Landroid/graphics/Bitmap;
    check-cast v0, Landroid/graphics/Bitmap;

    .restart local v0    # "b":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 696
    new-instance v8, Landroid/graphics/Rect;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10, v7, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v9, Landroid/graphics/Rect;

    const/16 v10, 0x33

    const/16 v11, 0x33

    invoke-direct {v9, v10, v11, v6, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v0, v8, v9, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 704
    .end local v0    # "b":Landroid/graphics/Bitmap;
    .end local v1    # "bmp":Landroid/graphics/Bitmap;
    .end local v2    # "canvas":Landroid/graphics/Canvas;
    .end local v4    # "height":I
    .end local v5    # "paint":Landroid/graphics/Paint;
    .end local v7    # "width":I
    :cond_2
    :goto_0
    return-object v1

    .line 699
    :catch_0
    move-exception v3

    .line 700
    .local v3, "ex":Ljava/lang/OutOfMemoryError;
    invoke-static {v3}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 701
    invoke-virtual {v3}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 702
    iget-object v8, p0, Lcom/perm/kate/ImageLoader$MultiPhotoToLoad;->this$0:Lcom/perm/kate/ImageLoader;

    iget-object v8, v8, Lcom/perm/kate/ImageLoader;->memoryCache:Lcom/perm/utils/MemoryCache;

    invoke-virtual {v8}, Lcom/perm/utils/MemoryCache;->clear()V

    .line 704
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private storeToCache(Landroid/graphics/Bitmap;Ljava/io/File;)V
    .locals 5
    .param p1, "bmp"    # Landroid/graphics/Bitmap;
    .param p2, "file"    # Ljava/io/File;

    .prologue
    .line 649
    const/4 v1, 0x0

    .line 651
    .local v1, "os":Ljava/io/OutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 652
    .end local v1    # "os":Ljava/io/OutputStream;
    .local v2, "os":Ljava/io/OutputStream;
    :try_start_1
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {p1, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 653
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 659
    invoke-static {v2}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    move-object v1, v2

    .line 661
    .end local v2    # "os":Ljava/io/OutputStream;
    .restart local v1    # "os":Ljava/io/OutputStream;
    :goto_0
    return-void

    .line 654
    :catch_0
    move-exception v0

    .line 655
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 659
    invoke-static {v1}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    goto :goto_0

    .line 656
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 657
    .local v0, "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 659
    invoke-static {v1}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_3
    invoke-static {v1}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    throw v3

    .end local v1    # "os":Ljava/io/OutputStream;
    .restart local v2    # "os":Ljava/io/OutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "os":Ljava/io/OutputStream;
    .restart local v1    # "os":Ljava/io/OutputStream;
    goto :goto_3

    .line 656
    .end local v1    # "os":Ljava/io/OutputStream;
    .restart local v2    # "os":Ljava/io/OutputStream;
    :catch_2
    move-exception v0

    move-object v1, v2

    .end local v2    # "os":Ljava/io/OutputStream;
    .restart local v1    # "os":Ljava/io/OutputStream;
    goto :goto_2

    .line 654
    .end local v1    # "os":Ljava/io/OutputStream;
    .restart local v2    # "os":Ljava/io/OutputStream;
    :catch_3
    move-exception v0

    move-object v1, v2

    .end local v2    # "os":Ljava/io/OutputStream;
    .restart local v1    # "os":Ljava/io/OutputStream;
    goto :goto_1
.end method


# virtual methods
.method clear()V
    .locals 1

    .prologue
    .line 722
    invoke-super {p0}, Lcom/perm/kate/ImageLoader$PhotoToLoad;->clear()V

    .line 723
    iget-object v0, p0, Lcom/perm/kate/ImageLoader$MultiPhotoToLoad;->imageView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 724
    return-void
.end method

.method display()V
    .locals 4

    .prologue
    .line 709
    iget-object v1, p0, Lcom/perm/kate/ImageLoader$MultiPhotoToLoad;->imageView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 710
    .local v0, "iv":Landroid/widget/ImageView;
    if-nez v0, :cond_0

    .line 713
    :goto_0
    return-void

    .line 712
    :cond_0
    iget-object v1, p0, Lcom/perm/kate/ImageLoader$MultiPhotoToLoad;->this$0:Lcom/perm/kate/ImageLoader;

    iget-object v2, p0, Lcom/perm/kate/ImageLoader$MultiPhotoToLoad;->bmp:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/perm/kate/ImageLoader$MultiPhotoToLoad;->stub_id:I

    invoke-virtual {v1, v0, v2, v3}, Lcom/perm/kate/ImageLoader;->displayBitmap(Landroid/widget/ImageView;Landroid/graphics/Bitmap;I)V

    goto :goto_0
.end method

.method getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 717
    iget-object v0, p0, Lcom/perm/kate/ImageLoader$MultiPhotoToLoad;->imageView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method load()V
    .locals 13

    .prologue
    .line 591
    :try_start_0
    iget-object v0, p0, Lcom/perm/kate/ImageLoader$MultiPhotoToLoad;->imageView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 631
    :cond_0
    :goto_0
    return-void

    .line 593
    :cond_1
    const/4 v11, 0x0

    .line 594
    .local v11, "dont_store_to_disk":Z
    iget-object v0, p0, Lcom/perm/kate/ImageLoader$MultiPhotoToLoad;->this$0:Lcom/perm/kate/ImageLoader;

    iget-object v2, p0, Lcom/perm/kate/ImageLoader$MultiPhotoToLoad;->key:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/perm/kate/ImageLoader;->getCacheFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 597
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 598
    iget-object v0, p0, Lcom/perm/kate/ImageLoader$MultiPhotoToLoad;->this$0:Lcom/perm/kate/ImageLoader;

    iget v2, p0, Lcom/perm/kate/ImageLoader$MultiPhotoToLoad;->resample_width:I

    iget v3, p0, Lcom/perm/kate/ImageLoader$MultiPhotoToLoad;->resample_height:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/perm/kate/ImageLoader;->decodeFile(Ljava/io/File;IIZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/ImageLoader$MultiPhotoToLoad;->bmp:Landroid/graphics/Bitmap;

    .line 601
    :cond_2
    iget-object v0, p0, Lcom/perm/kate/ImageLoader$MultiPhotoToLoad;->bmp:Landroid/graphics/Bitmap;

    if-nez v0, :cond_3

    .line 602
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 603
    .local v10, "bitmaps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    iget-object v0, p0, Lcom/perm/kate/ImageLoader$MultiPhotoToLoad;->urls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 604
    .local v3, "url":Ljava/lang/String;
    if-nez v3, :cond_4

    .line 605
    iget v2, p0, Lcom/perm/kate/ImageLoader$MultiPhotoToLoad;->stub_id:I

    invoke-direct {p0, v2}, Lcom/perm/kate/ImageLoader$MultiPhotoToLoad;->drawableToBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 626
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "url":Ljava/lang/String;
    .end local v10    # "bitmaps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    .end local v11    # "dont_store_to_disk":Z
    :catch_0
    move-exception v12

    .line 627
    .local v12, "th":Ljava/lang/Throwable;
    invoke-virtual {v12}, Ljava/lang/Throwable;->printStackTrace()V

    .line 628
    invoke-static {v12}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 630
    .end local v12    # "th":Ljava/lang/Throwable;
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/perm/kate/ImageLoader$MultiPhotoToLoad;->this$0:Lcom/perm/kate/ImageLoader;

    iget-object v2, p0, Lcom/perm/kate/ImageLoader$MultiPhotoToLoad;->key:Ljava/lang/String;

    iget-object v4, p0, Lcom/perm/kate/ImageLoader$MultiPhotoToLoad;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2, v4}, Lcom/perm/kate/ImageLoader;->putToMemoryCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 608
    .restart local v1    # "file":Ljava/io/File;
    .restart local v3    # "url":Ljava/lang/String;
    .restart local v10    # "bitmaps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    .restart local v11    # "dont_store_to_disk":Z
    :cond_4
    :try_start_1
    iget-object v2, p0, Lcom/perm/kate/ImageLoader$MultiPhotoToLoad;->this$0:Lcom/perm/kate/ImageLoader;

    iget v4, p0, Lcom/perm/kate/ImageLoader$MultiPhotoToLoad;->resample_width:I

    iget v5, p0, Lcom/perm/kate/ImageLoader$MultiPhotoToLoad;->resample_height:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/perm/kate/ImageLoader;->getBitmap(Ljava/lang/String;IIZLcom/perm/utils/UploadProgressListener;Z)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 609
    .local v9, "b":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/perm/kate/ImageLoader$MultiPhotoToLoad;->imageView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 611
    if-nez v9, :cond_5

    .line 613
    const/4 v11, 0x1

    .line 617
    iget v2, p0, Lcom/perm/kate/ImageLoader$MultiPhotoToLoad;->stub_id:I

    invoke-direct {p0, v2}, Lcom/perm/kate/ImageLoader$MultiPhotoToLoad;->drawableToBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 620
    :cond_5
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 622
    .end local v3    # "url":Ljava/lang/String;
    .end local v9    # "b":Landroid/graphics/Bitmap;
    :cond_6
    invoke-direct {p0, v10}, Lcom/perm/kate/ImageLoader$MultiPhotoToLoad;->mergeBitmaps(Ljava/util/ArrayList;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/ImageLoader$MultiPhotoToLoad;->bmp:Landroid/graphics/Bitmap;

    .line 623
    if-nez v11, :cond_3

    iget-object v0, p0, Lcom/perm/kate/ImageLoader$MultiPhotoToLoad;->bmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 624
    iget-object v0, p0, Lcom/perm/kate/ImageLoader$MultiPhotoToLoad;->bmp:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0, v1}, Lcom/perm/kate/ImageLoader$MultiPhotoToLoad;->storeToCache(Landroid/graphics/Bitmap;Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method setView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 728
    new-instance v0, Ljava/lang/ref/WeakReference;

    check-cast p1, Landroid/widget/ImageView;

    .end local p1    # "view":Landroid/view/View;
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/perm/kate/ImageLoader$MultiPhotoToLoad;->imageView:Ljava/lang/ref/WeakReference;

    .line 729
    return-void
.end method

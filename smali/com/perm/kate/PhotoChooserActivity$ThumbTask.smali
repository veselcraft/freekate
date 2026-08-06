.class Lcom/perm/kate/PhotoChooserActivity$ThumbTask;
.super Lcom/perm/kate/ImageLoader$PhotoToLoad;
.source "PhotoChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/PhotoChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ThumbTask"
.end annotation


# static fields
.field static lockObject:Ljava/lang/Object;

.field static need_px:I

.field static o:Landroid/graphics/BitmapFactory$Options;

.field static scale:I


# instance fields
.field imageView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field rotate:I

.field thumb_id:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 199
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/perm/kate/PhotoChooserActivity$ThumbTask;->lockObject:Ljava/lang/Object;

    .line 205
    const-wide v0, 0x405a800000000000L    # 106.0

    invoke-static {v0, v1}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v0

    sput v0, Lcom/perm/kate/PhotoChooserActivity$ThumbTask;->need_px:I

    .line 211
    invoke-static {}, Lcom/perm/kate/PhotoChooserActivity$ThumbTask;->calculateScale()I

    move-result v0

    sput v0, Lcom/perm/kate/PhotoChooserActivity$ThumbTask;->scale:I

    .line 212
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sput-object v0, Lcom/perm/kate/PhotoChooserActivity$ThumbTask;->o:Landroid/graphics/BitmapFactory$Options;

    .line 213
    sget-object v0, Lcom/perm/kate/PhotoChooserActivity$ThumbTask;->o:Landroid/graphics/BitmapFactory$Options;

    sget v1, Lcom/perm/kate/PhotoChooserActivity$ThumbTask;->scale:I

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 214
    sget-object v0, Lcom/perm/kate/PhotoChooserActivity$ThumbTask;->o:Landroid/graphics/BitmapFactory$Options;

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 215
    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;II)V
    .locals 1
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "thumb_id"    # I
    .param p3, "rotate"    # I

    .prologue
    .line 218
    invoke-static {p2}, Lcom/perm/kate/PhotoChooserActivity;->access$100(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/perm/kate/ImageLoader$PhotoToLoad;-><init>(Ljava/lang/String;)V

    .line 219
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/perm/kate/PhotoChooserActivity$ThumbTask;->imageView:Ljava/lang/ref/WeakReference;

    .line 220
    iput p2, p0, Lcom/perm/kate/PhotoChooserActivity$ThumbTask;->thumb_id:I

    .line 221
    iput p3, p0, Lcom/perm/kate/PhotoChooserActivity$ThumbTask;->rotate:I

    .line 222
    return-void
.end method

.method private static calculateScale()I
    .locals 3

    .prologue
    .line 295
    const/16 v1, 0x180

    sget v2, Lcom/perm/kate/PhotoChooserActivity$ThumbTask;->need_px:I

    div-int v0, v1, v2

    .line 296
    .local v0, "scale":I
    if-nez v0, :cond_0

    .line 297
    const/4 v0, 0x1

    .line 298
    :cond_0
    return v0
.end method

.method private scaleIfRequired(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 259
    if-nez p1, :cond_0

    move-object v0, p1

    .line 267
    .end local p1    # "b":Landroid/graphics/Bitmap;
    .local v0, "b":Landroid/graphics/Bitmap;
    :goto_0
    return-object v0

    .line 261
    .end local v0    # "b":Landroid/graphics/Bitmap;
    .restart local p1    # "b":Landroid/graphics/Bitmap;
    :cond_0
    iget-object v3, p0, Lcom/perm/kate/PhotoChooserActivity$ThumbTask;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/perm/kate/PhotoChooserActivity$ThumbTask;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 262
    .local v1, "min":I
    int-to-float v3, v1

    sget v4, Lcom/perm/kate/PhotoChooserActivity$ThumbTask;->need_px:I

    int-to-float v4, v4

    div-float v2, v3, v4

    .line 265
    .local v2, "scale2":F
    float-to-double v4, v2

    const-wide v6, 0x3ff3333333333333L    # 1.2

    cmpl-double v3, v4, v6

    if-lez v3, :cond_1

    .line 266
    iget-object v3, p0, Lcom/perm/kate/PhotoChooserActivity$ThumbTask;->bmp:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/perm/kate/PhotoChooserActivity$ThumbTask;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    float-to-int v4, v4

    iget-object v5, p0, Lcom/perm/kate/PhotoChooserActivity$ThumbTask;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v2

    float-to-int v5, v5

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_1
    move-object v0, p1

    .line 267
    .end local p1    # "b":Landroid/graphics/Bitmap;
    .restart local v0    # "b":Landroid/graphics/Bitmap;
    goto :goto_0
.end method


# virtual methods
.method clear()V
    .locals 1

    .prologue
    .line 284
    invoke-super {p0}, Lcom/perm/kate/ImageLoader$PhotoToLoad;->clear()V

    .line 285
    iget-object v0, p0, Lcom/perm/kate/PhotoChooserActivity$ThumbTask;->imageView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 286
    return-void
.end method

.method display()V
    .locals 2

    .prologue
    .line 272
    iget-object v0, p0, Lcom/perm/kate/PhotoChooserActivity$ThumbTask;->bmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/perm/kate/PhotoChooserActivity$ThumbTask;->imageView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/perm/kate/PhotoChooserActivity$ThumbTask;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 275
    :cond_0
    return-void
.end method

.method getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/perm/kate/PhotoChooserActivity$ThumbTask;->imageView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method load()V
    .locals 7

    .prologue
    .line 226
    iget-object v1, p0, Lcom/perm/kate/PhotoChooserActivity$ThumbTask;->imageView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 256
    :goto_0
    return-void

    .line 233
    :cond_0
    :try_start_0
    sget-object v2, Lcom/perm/kate/PhotoChooserActivity$ThumbTask;->lockObject:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 238
    :try_start_1
    sget-object v1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget v3, p0, Lcom/perm/kate/PhotoChooserActivity$ThumbTask;->thumb_id:I

    int-to-long v4, v3

    const/4 v3, 0x1

    sget-object v6, Lcom/perm/kate/PhotoChooserActivity$ThumbTask;->o:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v1, v4, v5, v3, v6}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/perm/kate/PhotoChooserActivity$ThumbTask;->bmp:Landroid/graphics/Bitmap;

    .line 239
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 241
    :try_start_2
    iget-object v1, p0, Lcom/perm/kate/PhotoChooserActivity$ThumbTask;->bmp:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/perm/kate/PhotoChooserActivity$ThumbTask;->rotate:I

    invoke-static {v1, v2}, Lcom/perm/utils/PhotoOrientationHelper;->fixOrientation(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/perm/kate/PhotoChooserActivity$ThumbTask;->bmp:Landroid/graphics/Bitmap;

    .line 244
    iget-object v1, p0, Lcom/perm/kate/PhotoChooserActivity$ThumbTask;->bmp:Landroid/graphics/Bitmap;

    invoke-direct {p0, v1}, Lcom/perm/kate/PhotoChooserActivity$ThumbTask;->scaleIfRequired(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/perm/kate/PhotoChooserActivity$ThumbTask;->bmp:Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 253
    :goto_1
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/PhotoChooserActivity$ThumbTask;->key:Ljava/lang/String;

    iget-object v3, p0, Lcom/perm/kate/PhotoChooserActivity$ThumbTask;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2, v3}, Lcom/perm/kate/ImageLoader;->putToMemoryCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 239
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    .line 245
    :catch_0
    move-exception v0

    .line 246
    .local v0, "ex":Ljava/lang/OutOfMemoryError;
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 247
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 248
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v1

    iget-object v1, v1, Lcom/perm/kate/ImageLoader;->memoryCache:Lcom/perm/utils/MemoryCache;

    invoke-virtual {v1}, Lcom/perm/utils/MemoryCache;->clear()V

    goto :goto_1

    .line 249
    .end local v0    # "ex":Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v0

    .line 250
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 251
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method setView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 291
    new-instance v0, Ljava/lang/ref/WeakReference;

    check-cast p1, Landroid/widget/ImageView;

    .end local p1    # "view":Landroid/view/View;
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/perm/kate/PhotoChooserActivity$ThumbTask;->imageView:Ljava/lang/ref/WeakReference;

    .line 292
    return-void
.end method

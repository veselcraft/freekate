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
.field static need_px:I


# instance fields
.field imageView:Ljava/lang/ref/WeakReference;

.field rotate:I

.field thumb_id:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide v0, 0x405a800000000000L    # 106.0

    .line 223
    invoke-static {v0, v1}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v0

    sput v0, Lcom/perm/kate/PhotoChooserActivity$ThumbTask;->need_px:I

    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;II)V
    .locals 1

    .line 226
    invoke-static {p2}, Lcom/perm/kate/PhotoChooserActivity;->makeKey(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/perm/kate/ImageLoader$PhotoToLoad;-><init>(Ljava/lang/String;)V

    .line 227
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/perm/kate/PhotoChooserActivity$ThumbTask;->imageView:Ljava/lang/ref/WeakReference;

    .line 228
    iput p2, p0, Lcom/perm/kate/PhotoChooserActivity$ThumbTask;->thumb_id:I

    .line 229
    iput p3, p0, Lcom/perm/kate/PhotoChooserActivity$ThumbTask;->rotate:I

    return-void
.end method


# virtual methods
.method clear()V
    .locals 1

    .line 298
    invoke-super {p0}, Lcom/perm/kate/ImageLoader$PhotoToLoad;->clear()V

    .line 299
    iget-object v0, p0, Lcom/perm/kate/PhotoChooserActivity$ThumbTask;->imageView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    return-void
.end method

.method display()V
    .locals 2

    .line 286
    iget-object v0, p0, Lcom/perm/kate/ImageLoader$PhotoToLoad;->bmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/perm/kate/PhotoChooserActivity$ThumbTask;->imageView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/perm/kate/ImageLoader$PhotoToLoad;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method getView()Landroid/view/View;
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/perm/kate/PhotoChooserActivity$ThumbTask;->imageView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method load()V
    .locals 4

    .line 234
    iget-object v0, p0, Lcom/perm/kate/PhotoChooserActivity$ThumbTask;->imageView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 245
    :cond_0
    :try_start_0
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget v1, p0, Lcom/perm/kate/PhotoChooserActivity$ThumbTask;->thumb_id:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 247
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-ge v1, v2, :cond_1

    .line 248
    sget-object v1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    iget v2, p0, Lcom/perm/kate/PhotoChooserActivity$ThumbTask;->rotate:I

    sget v3, Lcom/perm/kate/PhotoChooserActivity$ThumbTask;->need_px:I

    invoke-static {v0, v1, v2, v3}, Lcom/perm/kate/PhotoUploadOptionsActivity;->getResampledImage(Landroid/net/Uri;Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/ImageLoader$PhotoToLoad;->bmp:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 251
    :cond_1
    sget-object v1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Landroid/util/Size;

    sget v3, Lcom/perm/kate/PhotoChooserActivity$ThumbTask;->need_px:I

    invoke-direct {v2, v3, v3}, Landroid/util/Size;-><init>(II)V

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->loadThumbnail(Landroid/net/Uri;Landroid/util/Size;Landroid/os/CancellationSignal;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/ImageLoader$PhotoToLoad;->bmp:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 264
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 265
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_0
    move-exception v0

    .line 260
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 261
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 262
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v0

    iget-object v0, v0, Lcom/perm/kate/ImageLoader;->memoryCache:Lcom/perm/utils/MemoryCache;

    invoke-virtual {v0}, Lcom/perm/utils/MemoryCache;->clear()V

    .line 267
    :goto_0
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/ImageLoader$PhotoToLoad;->key:Ljava/lang/String;

    iget-object v2, p0, Lcom/perm/kate/ImageLoader$PhotoToLoad;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Lcom/perm/kate/ImageLoader;->putToMemoryCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method setView(Landroid/view/View;)V
    .locals 1

    .line 305
    new-instance v0, Ljava/lang/ref/WeakReference;

    check-cast p1, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/perm/kate/PhotoChooserActivity$ThumbTask;->imageView:Ljava/lang/ref/WeakReference;

    return-void
.end method

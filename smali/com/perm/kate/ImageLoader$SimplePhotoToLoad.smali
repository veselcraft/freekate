.class Lcom/perm/kate/ImageLoader$SimplePhotoToLoad;
.super Lcom/perm/kate/ImageLoader$PhotoToLoad;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimplePhotoToLoad"
.end annotation


# instance fields
.field public fit_all:Z

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

.field public put_to_memory_cache:Z

.field public resample_height:I

.field public resample_width:I

.field round:Z

.field public stub_id:I

.field final synthetic this$0:Lcom/perm/kate/ImageLoader;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/perm/kate/ImageLoader;Ljava/lang/String;Landroid/widget/ImageView;ZIIIZZ)V
    .locals 1
    .param p2, "u"    # Ljava/lang/String;
    .param p3, "i"    # Landroid/widget/ImageView;
    .param p4, "put_to_memory_cache"    # Z
    .param p5, "resample_width"    # I
    .param p6, "resample_height"    # I
    .param p7, "stub_id"    # I
    .param p8, "fit_all"    # Z
    .param p9, "round"    # Z

    .prologue
    .line 482
    iput-object p1, p0, Lcom/perm/kate/ImageLoader$SimplePhotoToLoad;->this$0:Lcom/perm/kate/ImageLoader;

    .line 483
    invoke-direct {p0, p2}, Lcom/perm/kate/ImageLoader$PhotoToLoad;-><init>(Ljava/lang/String;)V

    .line 484
    iput p7, p0, Lcom/perm/kate/ImageLoader$SimplePhotoToLoad;->stub_id:I

    .line 485
    iput-object p2, p0, Lcom/perm/kate/ImageLoader$SimplePhotoToLoad;->url:Ljava/lang/String;

    .line 486
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/perm/kate/ImageLoader$SimplePhotoToLoad;->imageView:Ljava/lang/ref/WeakReference;

    .line 487
    iput-boolean p4, p0, Lcom/perm/kate/ImageLoader$SimplePhotoToLoad;->put_to_memory_cache:Z

    .line 488
    iput p5, p0, Lcom/perm/kate/ImageLoader$SimplePhotoToLoad;->resample_width:I

    .line 489
    iput p6, p0, Lcom/perm/kate/ImageLoader$SimplePhotoToLoad;->resample_height:I

    .line 490
    iput-boolean p8, p0, Lcom/perm/kate/ImageLoader$SimplePhotoToLoad;->fit_all:Z

    .line 491
    iput-boolean p9, p0, Lcom/perm/kate/ImageLoader$SimplePhotoToLoad;->round:Z

    .line 492
    return-void
.end method


# virtual methods
.method clear()V
    .locals 1

    .prologue
    .line 521
    invoke-super {p0}, Lcom/perm/kate/ImageLoader$PhotoToLoad;->clear()V

    .line 522
    iget-object v0, p0, Lcom/perm/kate/ImageLoader$SimplePhotoToLoad;->imageView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 523
    return-void
.end method

.method display()V
    .locals 4

    .prologue
    .line 508
    iget-object v1, p0, Lcom/perm/kate/ImageLoader$SimplePhotoToLoad;->imageView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 509
    .local v0, "iv":Landroid/widget/ImageView;
    if-nez v0, :cond_0

    .line 512
    :goto_0
    return-void

    .line 511
    :cond_0
    iget-object v1, p0, Lcom/perm/kate/ImageLoader$SimplePhotoToLoad;->this$0:Lcom/perm/kate/ImageLoader;

    iget-object v2, p0, Lcom/perm/kate/ImageLoader$SimplePhotoToLoad;->bmp:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/perm/kate/ImageLoader$SimplePhotoToLoad;->stub_id:I

    invoke-virtual {v1, v0, v2, v3}, Lcom/perm/kate/ImageLoader;->displayBitmap(Landroid/widget/ImageView;Landroid/graphics/Bitmap;I)V

    goto :goto_0
.end method

.method getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 516
    iget-object v0, p0, Lcom/perm/kate/ImageLoader$SimplePhotoToLoad;->imageView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method load()V
    .locals 7

    .prologue
    .line 496
    iget-object v0, p0, Lcom/perm/kate/ImageLoader$SimplePhotoToLoad;->this$0:Lcom/perm/kate/ImageLoader;

    iget-object v1, p0, Lcom/perm/kate/ImageLoader$SimplePhotoToLoad;->url:Ljava/lang/String;

    iget v2, p0, Lcom/perm/kate/ImageLoader$SimplePhotoToLoad;->resample_width:I

    iget v3, p0, Lcom/perm/kate/ImageLoader$SimplePhotoToLoad;->resample_height:I

    iget-boolean v4, p0, Lcom/perm/kate/ImageLoader$SimplePhotoToLoad;->fit_all:Z

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/perm/kate/ImageLoader;->getBitmap(Ljava/lang/String;IIZLcom/perm/utils/UploadProgressListener;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/ImageLoader$SimplePhotoToLoad;->bmp:Landroid/graphics/Bitmap;

    .line 500
    iget-boolean v0, p0, Lcom/perm/kate/ImageLoader$SimplePhotoToLoad;->round:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/perm/kate/ImageLoader;->roundAvatarsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 501
    iget-object v0, p0, Lcom/perm/kate/ImageLoader$SimplePhotoToLoad;->bmp:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/perm/kate/ImageLoader;->getRoundedBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/ImageLoader$SimplePhotoToLoad;->bmp:Landroid/graphics/Bitmap;

    .line 502
    :cond_0
    iget-boolean v0, p0, Lcom/perm/kate/ImageLoader$SimplePhotoToLoad;->put_to_memory_cache:Z

    if-eqz v0, :cond_1

    .line 503
    iget-object v0, p0, Lcom/perm/kate/ImageLoader$SimplePhotoToLoad;->this$0:Lcom/perm/kate/ImageLoader;

    iget-object v1, p0, Lcom/perm/kate/ImageLoader$SimplePhotoToLoad;->url:Ljava/lang/String;

    iget-object v2, p0, Lcom/perm/kate/ImageLoader$SimplePhotoToLoad;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Lcom/perm/kate/ImageLoader;->putToMemoryCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 504
    :cond_1
    return-void
.end method

.method setView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 527
    new-instance v0, Ljava/lang/ref/WeakReference;

    check-cast p1, Landroid/widget/ImageView;

    .end local p1    # "view":Landroid/view/View;
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/perm/kate/ImageLoader$SimplePhotoToLoad;->imageView:Ljava/lang/ref/WeakReference;

    .line 528
    return-void
.end method

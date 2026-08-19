.class Lcom/perm/kate/ImageLoader$SimplePhotoToLoad;
.super Lcom/perm/kate/ImageLoader$PhotoToLoad;
.source "ImageLoader.java"


# instance fields
.field public fit_all:Z

.field public imageView:Ljava/lang/ref/WeakReference;

.field public put_to_memory_cache:Z

.field public resample_height:I

.field public resample_width:I

.field round:Z

.field public stub_id:I

.field final synthetic this$0:Lcom/perm/kate/ImageLoader;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/perm/kate/ImageLoader;Ljava/lang/String;Landroid/widget/ImageView;ZIIIZZ)V
    .locals 0

    .line 625
    iput-object p1, p0, Lcom/perm/kate/ImageLoader$SimplePhotoToLoad;->this$0:Lcom/perm/kate/ImageLoader;

    .line 626
    invoke-direct {p0, p2}, Lcom/perm/kate/ImageLoader$PhotoToLoad;-><init>(Ljava/lang/String;)V

    .line 627
    iput p7, p0, Lcom/perm/kate/ImageLoader$SimplePhotoToLoad;->stub_id:I

    .line 628
    iput-object p2, p0, Lcom/perm/kate/ImageLoader$SimplePhotoToLoad;->url:Ljava/lang/String;

    .line 629
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/perm/kate/ImageLoader$SimplePhotoToLoad;->imageView:Ljava/lang/ref/WeakReference;

    .line 630
    iput-boolean p4, p0, Lcom/perm/kate/ImageLoader$SimplePhotoToLoad;->put_to_memory_cache:Z

    .line 631
    iput p5, p0, Lcom/perm/kate/ImageLoader$SimplePhotoToLoad;->resample_width:I

    .line 632
    iput p6, p0, Lcom/perm/kate/ImageLoader$SimplePhotoToLoad;->resample_height:I

    .line 633
    iput-boolean p8, p0, Lcom/perm/kate/ImageLoader$SimplePhotoToLoad;->fit_all:Z

    .line 634
    iput-boolean p9, p0, Lcom/perm/kate/ImageLoader$SimplePhotoToLoad;->round:Z

    return-void
.end method


# virtual methods
.method clear()V
    .locals 1

    .line 664
    invoke-super {p0}, Lcom/perm/kate/ImageLoader$PhotoToLoad;->clear()V

    .line 665
    iget-object v0, p0, Lcom/perm/kate/ImageLoader$SimplePhotoToLoad;->imageView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    return-void
.end method

.method display()V
    .locals 4

    .line 651
    iget-object v0, p0, Lcom/perm/kate/ImageLoader$SimplePhotoToLoad;->imageView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    .line 654
    :cond_0
    iget-object v1, p0, Lcom/perm/kate/ImageLoader$SimplePhotoToLoad;->this$0:Lcom/perm/kate/ImageLoader;

    iget-object v2, p0, Lcom/perm/kate/ImageLoader$PhotoToLoad;->bmp:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/perm/kate/ImageLoader$SimplePhotoToLoad;->stub_id:I

    invoke-virtual {v1, v0, v2, v3}, Lcom/perm/kate/ImageLoader;->displayBitmap(Landroid/widget/ImageView;Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method getView()Landroid/view/View;
    .locals 1

    .line 659
    iget-object v0, p0, Lcom/perm/kate/ImageLoader$SimplePhotoToLoad;->imageView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method load()V
    .locals 7

    .line 639
    iget-object v0, p0, Lcom/perm/kate/ImageLoader$SimplePhotoToLoad;->this$0:Lcom/perm/kate/ImageLoader;

    iget-object v1, p0, Lcom/perm/kate/ImageLoader$SimplePhotoToLoad;->url:Ljava/lang/String;

    iget v2, p0, Lcom/perm/kate/ImageLoader$SimplePhotoToLoad;->resample_width:I

    iget v3, p0, Lcom/perm/kate/ImageLoader$SimplePhotoToLoad;->resample_height:I

    iget-boolean v4, p0, Lcom/perm/kate/ImageLoader$SimplePhotoToLoad;->fit_all:Z

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/perm/kate/ImageLoader;->getBitmap(Ljava/lang/String;IIZLcom/perm/utils/UploadProgressListener;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/ImageLoader$PhotoToLoad;->bmp:Landroid/graphics/Bitmap;

    .line 643
    iget-boolean v0, p0, Lcom/perm/kate/ImageLoader$SimplePhotoToLoad;->round:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/perm/kate/ImageLoader;->roundAvatarsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 644
    iget-object v0, p0, Lcom/perm/kate/ImageLoader$PhotoToLoad;->bmp:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/perm/kate/ImageLoader;->getRoundedBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/ImageLoader$PhotoToLoad;->bmp:Landroid/graphics/Bitmap;

    .line 645
    :cond_0
    iget-boolean v0, p0, Lcom/perm/kate/ImageLoader$SimplePhotoToLoad;->put_to_memory_cache:Z

    if-eqz v0, :cond_1

    .line 646
    iget-object v0, p0, Lcom/perm/kate/ImageLoader$SimplePhotoToLoad;->this$0:Lcom/perm/kate/ImageLoader;

    iget-object v1, p0, Lcom/perm/kate/ImageLoader$SimplePhotoToLoad;->url:Ljava/lang/String;

    iget-object v2, p0, Lcom/perm/kate/ImageLoader$PhotoToLoad;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Lcom/perm/kate/ImageLoader;->putToMemoryCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :cond_1
    return-void
.end method

.method setView(Landroid/view/View;)V
    .locals 1

    .line 670
    new-instance v0, Ljava/lang/ref/WeakReference;

    check-cast p1, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/perm/kate/ImageLoader$SimplePhotoToLoad;->imageView:Ljava/lang/ref/WeakReference;

    return-void
.end method

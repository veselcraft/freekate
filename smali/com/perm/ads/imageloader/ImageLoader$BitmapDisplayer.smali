.class Lcom/perm/ads/imageloader/ImageLoader$BitmapDisplayer;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/ads/imageloader/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BitmapDisplayer"
.end annotation


# instance fields
.field bitmap:Landroid/graphics/Bitmap;

.field photoToLoad:Lcom/perm/ads/imageloader/ImageLoader$PhotoToLoad;

.field final synthetic this$0:Lcom/perm/ads/imageloader/ImageLoader;


# direct methods
.method public constructor <init>(Lcom/perm/ads/imageloader/ImageLoader;Landroid/graphics/Bitmap;Lcom/perm/ads/imageloader/ImageLoader$PhotoToLoad;)V
    .locals 0
    .param p2, "b"    # Landroid/graphics/Bitmap;
    .param p3, "p"    # Lcom/perm/ads/imageloader/ImageLoader$PhotoToLoad;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/perm/ads/imageloader/ImageLoader$BitmapDisplayer;->this$0:Lcom/perm/ads/imageloader/ImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/perm/ads/imageloader/ImageLoader$BitmapDisplayer;->bitmap:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/perm/ads/imageloader/ImageLoader$BitmapDisplayer;->photoToLoad:Lcom/perm/ads/imageloader/ImageLoader$PhotoToLoad;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/perm/ads/imageloader/ImageLoader$BitmapDisplayer;->this$0:Lcom/perm/ads/imageloader/ImageLoader;

    iget-object v1, p0, Lcom/perm/ads/imageloader/ImageLoader$BitmapDisplayer;->photoToLoad:Lcom/perm/ads/imageloader/ImageLoader$PhotoToLoad;

    invoke-virtual {v0, v1}, Lcom/perm/ads/imageloader/ImageLoader;->imageViewReused(Lcom/perm/ads/imageloader/ImageLoader$PhotoToLoad;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    :goto_0
    return-void

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/perm/ads/imageloader/ImageLoader$BitmapDisplayer;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 179
    iget-object v0, p0, Lcom/perm/ads/imageloader/ImageLoader$BitmapDisplayer;->photoToLoad:Lcom/perm/ads/imageloader/ImageLoader$PhotoToLoad;

    iget-object v0, v0, Lcom/perm/ads/imageloader/ImageLoader$PhotoToLoad;->imageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/perm/ads/imageloader/ImageLoader$BitmapDisplayer;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 181
    :cond_1
    iget-object v0, p0, Lcom/perm/ads/imageloader/ImageLoader$BitmapDisplayer;->photoToLoad:Lcom/perm/ads/imageloader/ImageLoader$PhotoToLoad;

    iget-object v0, v0, Lcom/perm/ads/imageloader/ImageLoader$PhotoToLoad;->imageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

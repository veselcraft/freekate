.class Lcom/perm/ads/imageloader/ImageLoader$PhotoToLoad;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/ads/imageloader/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhotoToLoad"
.end annotation


# instance fields
.field public imageView:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/perm/ads/imageloader/ImageLoader;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/perm/ads/imageloader/ImageLoader;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 0
    .param p2, "u"    # Ljava/lang/String;
    .param p3, "i"    # Landroid/widget/ImageView;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/perm/ads/imageloader/ImageLoader$PhotoToLoad;->this$0:Lcom/perm/ads/imageloader/ImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput-object p2, p0, Lcom/perm/ads/imageloader/ImageLoader$PhotoToLoad;->url:Ljava/lang/String;

    .line 134
    iput-object p3, p0, Lcom/perm/ads/imageloader/ImageLoader$PhotoToLoad;->imageView:Landroid/widget/ImageView;

    .line 135
    return-void
.end method

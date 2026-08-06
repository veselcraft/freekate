.class public Lcom/my/target/core/ui/views/FramedCacheImageView;
.super Landroid/widget/FrameLayout;
.source "FramedCacheImageView.java"


# instance fields
.field private final a:Lcom/my/target/core/ui/views/CacheImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 20
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 21
    new-instance v0, Lcom/my/target/core/ui/views/CacheImageView;

    invoke-direct {v0, p1}, Lcom/my/target/core/ui/views/CacheImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/FramedCacheImageView;->a:Lcom/my/target/core/ui/views/CacheImageView;

    .line 23
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 25
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 26
    iget-object v1, p0, Lcom/my/target/core/ui/views/FramedCacheImageView;->a:Lcom/my/target/core/ui/views/CacheImageView;

    invoke-virtual {p0, v1, v0}, Lcom/my/target/core/ui/views/FramedCacheImageView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 27
    return-void
.end method


# virtual methods
.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/my/target/core/ui/views/FramedCacheImageView;->a:Lcom/my/target/core/ui/views/CacheImageView;

    invoke-virtual {v0, p1}, Lcom/my/target/core/ui/views/CacheImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 16
    return-void
.end method

.class public abstract Lcom/my/target/core/ui/views/fspromo/FSPromoView;
.super Landroid/widget/RelativeLayout;
.source "FSPromoView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/my/target/core/ui/views/fspromo/FSPromoView$a;
    }
.end annotation


# static fields
.field static final a:I


# instance fields
.field b:F

.field private c:I

.field private final d:Landroid/graphics/Bitmap;

.field private final e:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    invoke-static {}, Lcom/my/target/core/utils/l;->a()I

    move-result v0

    sput v0, Lcom/my/target/core/ui/views/fspromo/FSPromoView;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/16 v2, 0x1c

    .line 67
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 68
    new-instance v0, Lcom/my/target/core/utils/l;

    invoke-direct {v0, p1}, Lcom/my/target/core/utils/l;-><init>(Landroid/content/Context;)V

    .line 70
    invoke-virtual {v0, v2}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    invoke-static {v1}, Lcom/my/target/core/resources/a;->e(I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoView;->d:Landroid/graphics/Bitmap;

    .line 72
    invoke-virtual {v0, v2}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v0

    invoke-static {v0}, Lcom/my/target/core/resources/a;->c(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoView;->e:Landroid/graphics/Bitmap;

    .line 73
    return-void
.end method


# virtual methods
.method protected abstract a()V
.end method

.method public abstract a(I)V
.end method

.method public abstract a(Z)V
.end method

.method protected b(I)V
    .locals 0

    .prologue
    .line 126
    iput p1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoView;->c:I

    .line 127
    return-void
.end method

.method public final b(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 131
    if-eqz p1, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/my/target/core/ui/views/fspromo/FSPromoView;->c()Lcom/my/target/core/ui/views/controls/IconButton;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoView;->e:Landroid/graphics/Bitmap;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/my/target/core/ui/views/controls/IconButton;->setBitmap(Landroid/graphics/Bitmap;Ljava/lang/Boolean;)V

    .line 135
    :goto_0
    return-void

    .line 134
    :cond_0
    invoke-virtual {p0}, Lcom/my/target/core/ui/views/fspromo/FSPromoView;->c()Lcom/my/target/core/ui/views/controls/IconButton;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoView;->d:Landroid/graphics/Bitmap;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/my/target/core/ui/views/controls/IconButton;->setBitmap(Landroid/graphics/Bitmap;Ljava/lang/Boolean;)V

    goto :goto_0
.end method

.method public abstract b()Z
.end method

.method public abstract c()Lcom/my/target/core/ui/views/controls/IconButton;
.end method

.method public abstract d()V
.end method

.method public abstract e()V
.end method

.method public abstract f()V
.end method

.method public abstract g()V
.end method

.method public abstract h()Z
.end method

.method public abstract i()V
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 44
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 45
    const/16 v0, 0xb

    invoke-static {v0}, Lcom/my/target/core/utils/l;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    iget v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoView;->b:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/my/target/core/ui/views/fspromo/FSPromoView;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoView;->a(Z)V

    .line 50
    invoke-virtual {p0}, Lcom/my/target/core/ui/views/fspromo/FSPromoView;->a()V

    .line 53
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 119
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 1095
    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 1098
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 1100
    const/4 v0, 0x2

    .line 1106
    :goto_0
    iget v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoView;->c:I

    if-eq v0, v1, :cond_0

    .line 1108
    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoView;->b(I)V

    .line 121
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 122
    return-void

    .line 1103
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setBanner(Lcom/my/target/core/models/banners/g;)V
    .locals 3

    .prologue
    .line 31
    invoke-virtual {p1}, Lcom/my/target/core/models/banners/g;->a()Lcom/my/target/core/models/banners/m;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 33
    invoke-virtual {p1}, Lcom/my/target/core/models/banners/g;->a()Lcom/my/target/core/models/banners/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/m;->f()F

    move-result v0

    iput v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoView;->b:F

    .line 35
    :cond_0
    invoke-virtual {p0}, Lcom/my/target/core/ui/views/fspromo/FSPromoView;->c()Lcom/my/target/core/ui/views/controls/IconButton;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 37
    invoke-virtual {p0}, Lcom/my/target/core/ui/views/fspromo/FSPromoView;->c()Lcom/my/target/core/ui/views/controls/IconButton;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoView;->d:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/my/target/core/ui/views/controls/IconButton;->setBitmap(Landroid/graphics/Bitmap;Ljava/lang/Boolean;)V

    .line 39
    :cond_1
    return-void
.end method

.method public abstract setCloseListener(Landroid/view/View$OnClickListener;)V
.end method

.method public abstract setOnCTAClickListener(Landroid/view/View$OnClickListener;)V
.end method

.method public abstract setOnVideoClickListener(Lcom/my/target/core/ui/views/fspromo/FSPromoView$a;)V
.end method

.method public abstract setTimeChanged(F)V
.end method

.method public abstract setVideoListener(Lcom/my/target/core/ui/views/video/VideoTextureView$a;)V
.end method

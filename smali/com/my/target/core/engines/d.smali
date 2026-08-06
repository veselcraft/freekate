.class public final Lcom/my/target/core/engines/d;
.super Lcom/my/target/core/engines/a;
.source "FSImageAdEngine.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private c:Lcom/my/target/core/engines/b$a;

.field private final d:Lcom/my/target/core/facades/d;

.field private final e:Lcom/my/target/core/models/banners/f;


# direct methods
.method public constructor <init>(Lcom/my/target/core/facades/d;Landroid/view/ViewGroup;Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v2, 0x0

    .line 24
    invoke-direct {p0, p2, p3}, Lcom/my/target/core/engines/a;-><init>(Landroid/view/ViewGroup;Landroid/content/Context;)V

    .line 25
    iput-object p1, p0, Lcom/my/target/core/engines/d;->d:Lcom/my/target/core/facades/d;

    .line 26
    new-instance v3, Lcom/my/target/core/ui/views/FSImageView;

    invoke-direct {v3, p3}, Lcom/my/target/core/ui/views/FSImageView;-><init>(Landroid/content/Context;)V

    .line 27
    invoke-virtual {v3}, Lcom/my/target/core/ui/views/FSImageView;->b()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    invoke-virtual {v3}, Lcom/my/target/core/ui/views/FSImageView;->a()Lcom/my/target/core/ui/views/controls/IconButton;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/my/target/core/ui/views/controls/IconButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    invoke-virtual {p1}, Lcom/my/target/core/facades/d;->b()Lcom/my/target/core/models/banners/f;

    move-result-object v0

    iput-object v0, p0, Lcom/my/target/core/engines/d;->e:Lcom/my/target/core/models/banners/f;

    .line 32
    iget-object v0, p0, Lcom/my/target/core/engines/d;->e:Lcom/my/target/core/models/banners/f;

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/f;->e()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 33
    iget-object v0, p0, Lcom/my/target/core/engines/d;->e:Lcom/my/target/core/models/banners/f;

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/f;->e()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/nativeads/models/ImageData;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v1, v0

    .line 35
    :goto_0
    iget-object v0, p0, Lcom/my/target/core/engines/d;->e:Lcom/my/target/core/models/banners/f;

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/f;->d()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 36
    iget-object v0, p0, Lcom/my/target/core/engines/d;->e:Lcom/my/target/core/models/banners/f;

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/f;->d()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/nativeads/models/ImageData;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 38
    :goto_1
    iget-object v4, p0, Lcom/my/target/core/engines/d;->e:Lcom/my/target/core/models/banners/f;

    invoke-virtual {v4}, Lcom/my/target/core/models/banners/f;->a()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 39
    iget-object v2, p0, Lcom/my/target/core/engines/d;->e:Lcom/my/target/core/models/banners/f;

    invoke-virtual {v2}, Lcom/my/target/core/models/banners/f;->a()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/my/target/nativeads/models/ImageData;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 41
    :cond_0
    invoke-virtual {v3, v1, v0, v2}, Lcom/my/target/core/ui/views/FSImageView;->setImages(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 42
    iget-object v0, p0, Lcom/my/target/core/engines/d;->e:Lcom/my/target/core/models/banners/f;

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/f;->getAgeRestrictions()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/my/target/core/engines/d;->e:Lcom/my/target/core/models/banners/f;

    .line 43
    invoke-virtual {v0}, Lcom/my/target/core/models/banners/f;->getAgeRestrictions()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 44
    iget-object v0, p0, Lcom/my/target/core/engines/d;->e:Lcom/my/target/core/models/banners/f;

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/f;->getAgeRestrictions()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/my/target/core/ui/views/FSImageView;->setAgeRestrictions(Ljava/lang/String;)V

    .line 46
    :cond_1
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 49
    iget-object v1, p0, Lcom/my/target/core/engines/d;->a:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    iget-object v0, p0, Lcom/my/target/core/engines/d;->e:Lcom/my/target/core/models/banners/f;

    invoke-virtual {p1, v0}, Lcom/my/target/core/facades/d;->a(Lcom/my/target/core/models/banners/d;)V

    .line 52
    return-void

    :cond_2
    move-object v0, v2

    goto :goto_1

    :cond_3
    move-object v1, v2

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/my/target/core/engines/b$a;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/my/target/core/engines/d;->c:Lcom/my/target/core/engines/b$a;

    .line 57
    return-void
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 85
    invoke-super {p0}, Lcom/my/target/core/engines/a;->e()V

    .line 86
    iget-object v0, p0, Lcom/my/target/core/engines/d;->d:Lcom/my/target/core/facades/d;

    invoke-virtual {v0}, Lcom/my/target/core/facades/d;->c()V

    .line 87
    return-void
.end method

.method public final g()V
    .locals 0

    .prologue
    .line 80
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 62
    instance-of v0, p1, Lcom/my/target/core/ui/views/controls/IconButton;

    if-eqz v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/my/target/core/engines/d;->c:Lcom/my/target/core/engines/b$a;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/my/target/core/engines/d;->c:Lcom/my/target/core/engines/b$a;

    invoke-interface {v0}, Lcom/my/target/core/engines/b$a;->onCloseClick()V

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/my/target/core/engines/d;->d:Lcom/my/target/core/facades/d;

    iget-object v1, p0, Lcom/my/target/core/engines/d;->e:Lcom/my/target/core/models/banners/f;

    invoke-virtual {v0, v1}, Lcom/my/target/core/facades/d;->b(Lcom/my/target/core/models/banners/d;)V

    .line 71
    iget-object v0, p0, Lcom/my/target/core/engines/d;->c:Lcom/my/target/core/engines/b$a;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/my/target/core/engines/d;->c:Lcom/my/target/core/engines/b$a;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/my/target/core/engines/b$a;->onClick(Z)V

    goto :goto_0
.end method

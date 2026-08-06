.class public final Lcom/my/target/core/ui/b;
.super Landroid/app/Dialog;
.source "VideoDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/my/target/core/ui/b$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/my/target/core/ui/views/video/VideoDialogView;

.field private final b:Landroid/graphics/Bitmap;

.field private final c:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/16 v2, 0x1c

    .line 37
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 38
    new-instance v0, Lcom/my/target/core/ui/views/video/VideoDialogView;

    invoke-virtual {p0}, Lcom/my/target/core/ui/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/my/target/core/ui/views/video/VideoDialogView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/b;->a:Lcom/my/target/core/ui/views/video/VideoDialogView;

    .line 39
    new-instance v0, Lcom/my/target/core/utils/l;

    invoke-virtual {p0}, Lcom/my/target/core/ui/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/my/target/core/utils/l;-><init>(Landroid/content/Context;)V

    .line 41
    invoke-virtual {v0, v2}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    invoke-static {v1}, Lcom/my/target/core/resources/a;->e(I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/my/target/core/ui/b;->b:Landroid/graphics/Bitmap;

    .line 43
    invoke-virtual {v0, v2}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v0

    invoke-static {v0}, Lcom/my/target/core/resources/a;->c(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/my/target/core/ui/b;->c:Landroid/graphics/Bitmap;

    .line 44
    return-void
.end method


# virtual methods
.method public final a()Lcom/my/target/core/ui/views/controls/IconButton;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/my/target/core/ui/b;->a:Lcom/my/target/core/ui/views/video/VideoDialogView;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/video/VideoDialogView;->a()Lcom/my/target/core/ui/views/controls/IconButton;

    move-result-object v0

    return-object v0
.end method

.method public final a(FF)V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/my/target/core/ui/b;->a:Lcom/my/target/core/ui/views/video/VideoDialogView;

    invoke-virtual {v0, p1, p2}, Lcom/my/target/core/ui/views/video/VideoDialogView;->a(FF)V

    .line 115
    return-void
.end method

.method public final a(Lcom/my/target/core/models/banners/h;Lcom/my/target/nativeads/models/VideoData;)V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/my/target/core/ui/b;->a:Lcom/my/target/core/ui/views/video/VideoDialogView;

    invoke-virtual {v0, p1, p2}, Lcom/my/target/core/ui/views/video/VideoDialogView;->setData(Lcom/my/target/core/models/banners/h;Lcom/my/target/nativeads/models/VideoData;)V

    .line 80
    return-void
.end method

.method public final a(Lcom/my/target/core/ui/b$a;)V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/my/target/core/ui/b;->a:Lcom/my/target/core/ui/views/video/VideoDialogView;

    invoke-virtual {v0, p1}, Lcom/my/target/core/ui/views/video/VideoDialogView;->setDialogListener(Lcom/my/target/core/ui/b$a;)V

    .line 67
    iget-object v0, p0, Lcom/my/target/core/ui/b;->a:Lcom/my/target/core/ui/views/video/VideoDialogView;

    new-instance v1, Lcom/my/target/core/ui/b$1;

    invoke-direct {v1, p0}, Lcom/my/target/core/ui/b$1;-><init>(Lcom/my/target/core/ui/b;)V

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/video/VideoDialogView;->setDismissButtonListener(Landroid/view/View$OnClickListener;)V

    .line 75
    return-void
.end method

.method public final a(Lcom/my/target/core/ui/views/video/VideoTextureView;)V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/my/target/core/ui/b;->a:Lcom/my/target/core/ui/views/video/VideoDialogView;

    invoke-virtual {v0, p1}, Lcom/my/target/core/ui/views/video/VideoDialogView;->a(Lcom/my/target/core/ui/views/video/VideoTextureView;)V

    .line 105
    return-void
.end method

.method public final a(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 119
    if-eqz p1, :cond_0

    .line 120
    iget-object v0, p0, Lcom/my/target/core/ui/b;->a:Lcom/my/target/core/ui/views/video/VideoDialogView;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/video/VideoDialogView;->a()Lcom/my/target/core/ui/views/controls/IconButton;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/core/ui/b;->c:Landroid/graphics/Bitmap;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/my/target/core/ui/views/controls/IconButton;->setBitmap(Landroid/graphics/Bitmap;Ljava/lang/Boolean;)V

    .line 123
    :goto_0
    return-void

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/my/target/core/ui/b;->a:Lcom/my/target/core/ui/views/video/VideoDialogView;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/video/VideoDialogView;->a()Lcom/my/target/core/ui/views/controls/IconButton;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/core/ui/b;->b:Landroid/graphics/Bitmap;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/my/target/core/ui/views/controls/IconButton;->setBitmap(Landroid/graphics/Bitmap;Ljava/lang/Boolean;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/my/target/core/ui/b;->a:Lcom/my/target/core/ui/views/video/VideoDialogView;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/video/VideoDialogView;->b()V

    .line 85
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/my/target/core/ui/b;->a:Lcom/my/target/core/ui/views/video/VideoDialogView;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/video/VideoDialogView;->f()V

    .line 90
    return-void
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/my/target/core/ui/b;->a:Lcom/my/target/core/ui/views/video/VideoDialogView;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/video/VideoDialogView;->d()V

    .line 95
    return-void
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/my/target/core/ui/b;->a:Lcom/my/target/core/ui/views/video/VideoDialogView;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/video/VideoDialogView;->e()V

    .line 100
    return-void
.end method

.method public final f()V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/my/target/core/ui/b;->a:Lcom/my/target/core/ui/views/video/VideoDialogView;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/video/VideoDialogView;->h()V

    .line 110
    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 49
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-virtual {p0}, Lcom/my/target/core/ui/b;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v2, -0x1000000

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 51
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/b;->requestWindowFeature(I)Z

    .line 53
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 55
    iget-object v1, p0, Lcom/my/target/core/ui/b;->a:Lcom/my/target/core/ui/views/video/VideoDialogView;

    invoke-virtual {v1, v0}, Lcom/my/target/core/ui/views/video/VideoDialogView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    iget-object v0, p0, Lcom/my/target/core/ui/b;->a:Lcom/my/target/core/ui/views/video/VideoDialogView;

    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/b;->setContentView(Landroid/view/View;)V

    .line 59
    invoke-virtual {p0}, Lcom/my/target/core/ui/b;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setLayout(II)V

    .line 62
    return-void
.end method

.class final Lcom/my/target/core/controllers/c$3;
.super Ljava/lang/Object;
.source "NativeAdVideoController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/core/controllers/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/my/target/core/controllers/c;


# direct methods
.method constructor <init>(Lcom/my/target/core/controllers/c;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/my/target/core/controllers/c$3;->a:Lcom/my/target/core/controllers/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 91
    const-string v0, "Dismiss dialog"

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/my/target/core/controllers/c$3;->a:Lcom/my/target/core/controllers/c;

    invoke-static {v0}, Lcom/my/target/core/controllers/c;->g(Lcom/my/target/core/controllers/c;)Lcom/my/target/core/ui/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/my/target/core/controllers/c$3;->a:Lcom/my/target/core/controllers/c;

    iget-object v1, p0, Lcom/my/target/core/controllers/c$3;->a:Lcom/my/target/core/controllers/c;

    invoke-static {v1}, Lcom/my/target/core/controllers/c;->g(Lcom/my/target/core/controllers/c;)Lcom/my/target/core/ui/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/my/target/core/ui/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/my/target/core/controllers/c;->a(Lcom/my/target/core/controllers/c;Landroid/content/Context;)V

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/my/target/core/controllers/c$3;->a:Lcom/my/target/core/controllers/c;

    invoke-static {v0}, Lcom/my/target/core/controllers/c;->h(Lcom/my/target/core/controllers/c;)Z

    .line 99
    iget-object v0, p0, Lcom/my/target/core/controllers/c$3;->a:Lcom/my/target/core/controllers/c;

    invoke-static {v0}, Lcom/my/target/core/controllers/c;->i(Lcom/my/target/core/controllers/c;)V

    .line 101
    iget-object v0, p0, Lcom/my/target/core/controllers/c$3;->a:Lcom/my/target/core/controllers/c;

    invoke-static {v0}, Lcom/my/target/core/controllers/c;->a(Lcom/my/target/core/controllers/c;)Lcom/my/target/core/ui/views/video/VideoTextureView;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 103
    iget-object v0, p0, Lcom/my/target/core/controllers/c$3;->a:Lcom/my/target/core/controllers/c;

    invoke-static {v0}, Lcom/my/target/core/controllers/c;->a(Lcom/my/target/core/controllers/c;)Lcom/my/target/core/ui/views/video/VideoTextureView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/video/VideoTextureView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 104
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/my/target/core/controllers/c$3;->a:Lcom/my/target/core/controllers/c;

    invoke-static {v1}, Lcom/my/target/core/controllers/c;->j(Lcom/my/target/core/controllers/c;)Lcom/my/target/nativeads/views/MediaAdView;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 106
    iget-object v1, p0, Lcom/my/target/core/controllers/c$3;->a:Lcom/my/target/core/controllers/c;

    invoke-static {v1}, Lcom/my/target/core/controllers/c;->a(Lcom/my/target/core/controllers/c;)Lcom/my/target/core/ui/views/video/VideoTextureView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 107
    iget-object v0, p0, Lcom/my/target/core/controllers/c$3;->a:Lcom/my/target/core/controllers/c;

    invoke-static {v0}, Lcom/my/target/core/controllers/c;->j(Lcom/my/target/core/controllers/c;)Lcom/my/target/nativeads/views/MediaAdView;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/core/controllers/c$3;->a:Lcom/my/target/core/controllers/c;

    invoke-static {v1}, Lcom/my/target/core/controllers/c;->a(Lcom/my/target/core/controllers/c;)Lcom/my/target/core/ui/views/video/VideoTextureView;

    move-result-object v1

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v3, v2}, Lcom/my/target/nativeads/views/MediaAdView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/my/target/core/controllers/c$3;->a:Lcom/my/target/core/controllers/c;

    invoke-static {v0}, Lcom/my/target/core/controllers/c;->k(Lcom/my/target/core/controllers/c;)I

    move-result v0

    if-ne v0, v5, :cond_5

    .line 115
    iget-object v0, p0, Lcom/my/target/core/controllers/c$3;->a:Lcom/my/target/core/controllers/c;

    invoke-virtual {v0}, Lcom/my/target/core/controllers/c;->f()V

    .line 116
    iget-object v0, p0, Lcom/my/target/core/controllers/c$3;->a:Lcom/my/target/core/controllers/c;

    invoke-static {v0}, Lcom/my/target/core/controllers/c;->l(Lcom/my/target/core/controllers/c;)Lcom/my/target/core/models/banners/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/h;->a()Lcom/my/target/core/models/banners/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/m;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 117
    iget-object v0, p0, Lcom/my/target/core/controllers/c$3;->a:Lcom/my/target/core/controllers/c;

    invoke-static {v0, v5}, Lcom/my/target/core/controllers/c;->b(Lcom/my/target/core/controllers/c;Z)Z

    .line 118
    :cond_2
    iget-object v0, p0, Lcom/my/target/core/controllers/c$3;->a:Lcom/my/target/core/controllers/c;

    invoke-static {v0}, Lcom/my/target/core/controllers/c;->a(Lcom/my/target/core/controllers/c;)Lcom/my/target/core/ui/views/video/VideoTextureView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/video/VideoTextureView;->setWaitingState()V

    .line 130
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/my/target/core/controllers/c$3;->a:Lcom/my/target/core/controllers/c;

    invoke-static {v0}, Lcom/my/target/core/controllers/c;->b(Lcom/my/target/core/controllers/c;)Lcom/my/target/core/controllers/c$a;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 132
    iget-object v0, p0, Lcom/my/target/core/controllers/c$3;->a:Lcom/my/target/core/controllers/c;

    invoke-static {v0}, Lcom/my/target/core/controllers/c;->b(Lcom/my/target/core/controllers/c;)Lcom/my/target/core/controllers/c$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/my/target/core/controllers/c$a;->c()V

    .line 134
    :cond_4
    iget-object v0, p0, Lcom/my/target/core/controllers/c$3;->a:Lcom/my/target/core/controllers/c;

    invoke-static {v0}, Lcom/my/target/core/controllers/c;->m(Lcom/my/target/core/controllers/c;)Lcom/my/target/core/ui/b;

    .line 135
    return-void

    .line 119
    :cond_5
    iget-object v0, p0, Lcom/my/target/core/controllers/c$3;->a:Lcom/my/target/core/controllers/c;

    invoke-static {v0}, Lcom/my/target/core/controllers/c;->k(Lcom/my/target/core/controllers/c;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_6

    .line 121
    iget-object v0, p0, Lcom/my/target/core/controllers/c$3;->a:Lcom/my/target/core/controllers/c;

    invoke-static {v0, v3}, Lcom/my/target/core/controllers/c;->b(Lcom/my/target/core/controllers/c;Z)Z

    .line 122
    iget-object v0, p0, Lcom/my/target/core/controllers/c$3;->a:Lcom/my/target/core/controllers/c;

    invoke-virtual {v0}, Lcom/my/target/core/controllers/c;->e()V

    .line 123
    iget-object v0, p0, Lcom/my/target/core/controllers/c$3;->a:Lcom/my/target/core/controllers/c;

    invoke-static {v0}, Lcom/my/target/core/controllers/c;->a(Lcom/my/target/core/controllers/c;)Lcom/my/target/core/ui/views/video/VideoTextureView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/video/VideoTextureView;->a()V

    goto :goto_0

    .line 126
    :cond_6
    iget-object v0, p0, Lcom/my/target/core/controllers/c$3;->a:Lcom/my/target/core/controllers/c;

    invoke-static {v0, v3}, Lcom/my/target/core/controllers/c;->b(Lcom/my/target/core/controllers/c;Z)Z

    goto :goto_0
.end method

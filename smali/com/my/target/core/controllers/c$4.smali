.class final Lcom/my/target/core/controllers/c$4;
.super Ljava/lang/Object;
.source "NativeAdVideoController.java"

# interfaces
.implements Lcom/my/target/core/ui/b$a;


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
    .line 138
    iput-object p1, p0, Lcom/my/target/core/controllers/c$4;->a:Lcom/my/target/core/controllers/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 142
    iget-object v0, p0, Lcom/my/target/core/controllers/c$4;->a:Lcom/my/target/core/controllers/c;

    invoke-static {v0}, Lcom/my/target/core/controllers/c;->j(Lcom/my/target/core/controllers/c;)Lcom/my/target/nativeads/views/MediaAdView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 144
    iget-object v0, p0, Lcom/my/target/core/controllers/c$4;->a:Lcom/my/target/core/controllers/c;

    invoke-static {v0, v3}, Lcom/my/target/core/controllers/c;->a(Lcom/my/target/core/controllers/c;I)I

    .line 145
    iget-object v0, p0, Lcom/my/target/core/controllers/c$4;->a:Lcom/my/target/core/controllers/c;

    invoke-static {v0}, Lcom/my/target/core/controllers/c;->a(Lcom/my/target/core/controllers/c;)Lcom/my/target/core/ui/views/video/VideoTextureView;

    move-result-object v0

    if-nez v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/my/target/core/controllers/c$4;->a:Lcom/my/target/core/controllers/c;

    iget-object v1, p0, Lcom/my/target/core/controllers/c$4;->a:Lcom/my/target/core/controllers/c;

    iget-object v2, p0, Lcom/my/target/core/controllers/c$4;->a:Lcom/my/target/core/controllers/c;

    .line 147
    invoke-static {v2}, Lcom/my/target/core/controllers/c;->j(Lcom/my/target/core/controllers/c;)Lcom/my/target/nativeads/views/MediaAdView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/my/target/nativeads/views/MediaAdView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 146
    invoke-static {v1, v2}, Lcom/my/target/core/ui/views/video/VideoTextureView;->a(Lcom/my/target/core/controllers/c;Landroid/content/Context;)Lcom/my/target/core/ui/views/video/VideoTextureView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/my/target/core/controllers/c;->a(Lcom/my/target/core/controllers/c;Lcom/my/target/core/ui/views/video/VideoTextureView;)Lcom/my/target/core/ui/views/video/VideoTextureView;

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/my/target/core/controllers/c$4;->a:Lcom/my/target/core/controllers/c;

    iget-object v1, p0, Lcom/my/target/core/controllers/c$4;->a:Lcom/my/target/core/controllers/c;

    invoke-static {v1}, Lcom/my/target/core/controllers/c;->j(Lcom/my/target/core/controllers/c;)Lcom/my/target/nativeads/views/MediaAdView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/my/target/nativeads/views/MediaAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/my/target/core/controllers/c;->b(Lcom/my/target/core/controllers/c;Landroid/content/Context;)V

    .line 149
    iget-object v0, p0, Lcom/my/target/core/controllers/c$4;->a:Lcom/my/target/core/controllers/c;

    invoke-static {v0}, Lcom/my/target/core/controllers/c;->a(Lcom/my/target/core/controllers/c;)Lcom/my/target/core/ui/views/video/VideoTextureView;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/core/controllers/c$4;->a:Lcom/my/target/core/controllers/c;

    invoke-static {v1}, Lcom/my/target/core/controllers/c;->n(Lcom/my/target/core/controllers/c;)Lcom/my/target/nativeads/models/VideoData;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/my/target/core/ui/views/video/VideoTextureView;->a(Lcom/my/target/nativeads/models/VideoData;Z)V

    .line 150
    iget-object v0, p0, Lcom/my/target/core/controllers/c$4;->a:Lcom/my/target/core/controllers/c;

    invoke-virtual {v0}, Lcom/my/target/core/controllers/c;->i()V

    .line 151
    iget-object v0, p0, Lcom/my/target/core/controllers/c$4;->a:Lcom/my/target/core/controllers/c;

    invoke-static {v0}, Lcom/my/target/core/controllers/c;->b(Lcom/my/target/core/controllers/c;)Lcom/my/target/core/controllers/c$a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 153
    iget-object v0, p0, Lcom/my/target/core/controllers/c$4;->a:Lcom/my/target/core/controllers/c;

    invoke-static {v0}, Lcom/my/target/core/controllers/c;->b(Lcom/my/target/core/controllers/c;)Lcom/my/target/core/controllers/c$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/my/target/core/controllers/c$a;->e()V

    .line 156
    :cond_1
    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/my/target/core/controllers/c$4;->a:Lcom/my/target/core/controllers/c;

    invoke-static {v0}, Lcom/my/target/core/controllers/c;->k(Lcom/my/target/core/controllers/c;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 169
    iget-object v0, p0, Lcom/my/target/core/controllers/c$4;->a:Lcom/my/target/core/controllers/c;

    invoke-static {v0}, Lcom/my/target/core/controllers/c;->c(Lcom/my/target/core/controllers/c;)V

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/my/target/core/controllers/c$4;->a:Lcom/my/target/core/controllers/c;

    invoke-static {v0}, Lcom/my/target/core/controllers/c;->o(Lcom/my/target/core/controllers/c;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/my/target/core/controllers/c$4;->a:Lcom/my/target/core/controllers/c;

    invoke-static {v0}, Lcom/my/target/core/controllers/c;->o(Lcom/my/target/core/controllers/c;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 171
    :cond_1
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/my/target/core/controllers/c$4;->a()V

    .line 162
    iget-object v0, p0, Lcom/my/target/core/controllers/c$4;->a:Lcom/my/target/core/controllers/c;

    invoke-static {v0}, Lcom/my/target/core/controllers/c;->g(Lcom/my/target/core/controllers/c;)Lcom/my/target/core/ui/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/core/ui/b;->f()V

    .line 163
    return-void
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/my/target/core/controllers/c$4;->a:Lcom/my/target/core/controllers/c;

    invoke-static {v0}, Lcom/my/target/core/controllers/c;->c(Lcom/my/target/core/controllers/c;)V

    .line 177
    iget-object v0, p0, Lcom/my/target/core/controllers/c$4;->a:Lcom/my/target/core/controllers/c;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/my/target/core/controllers/c;->a(Lcom/my/target/core/controllers/c;I)I

    .line 178
    iget-object v0, p0, Lcom/my/target/core/controllers/c$4;->a:Lcom/my/target/core/controllers/c;

    invoke-static {v0}, Lcom/my/target/core/controllers/c;->b(Lcom/my/target/core/controllers/c;)Lcom/my/target/core/controllers/c$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/my/target/core/controllers/c$4;->a:Lcom/my/target/core/controllers/c;

    invoke-static {v0}, Lcom/my/target/core/controllers/c;->b(Lcom/my/target/core/controllers/c;)Lcom/my/target/core/controllers/c$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/my/target/core/controllers/c$a;->d()V

    .line 182
    :cond_0
    return-void
.end method

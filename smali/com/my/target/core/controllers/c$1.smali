.class final Lcom/my/target/core/controllers/c$1;
.super Ljava/lang/Object;
.source "NativeAdVideoController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 32
    iput-object p1, p0, Lcom/my/target/core/controllers/c$1;->a:Lcom/my/target/core/controllers/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/my/target/core/controllers/c$1;->a:Lcom/my/target/core/controllers/c;

    invoke-static {v0}, Lcom/my/target/core/controllers/c;->a(Lcom/my/target/core/controllers/c;)Lcom/my/target/core/ui/views/video/VideoTextureView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 38
    iget-object v0, p0, Lcom/my/target/core/controllers/c$1;->a:Lcom/my/target/core/controllers/c;

    invoke-static {v0}, Lcom/my/target/core/controllers/c;->a(Lcom/my/target/core/controllers/c;)Lcom/my/target/core/ui/views/video/VideoTextureView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/video/VideoTextureView;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 40
    iget-object v0, p0, Lcom/my/target/core/controllers/c$1;->a:Lcom/my/target/core/controllers/c;

    invoke-static {v0}, Lcom/my/target/core/controllers/c;->a(Lcom/my/target/core/controllers/c;)Lcom/my/target/core/ui/views/video/VideoTextureView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/video/VideoTextureView;->h()V

    .line 41
    iget-object v0, p0, Lcom/my/target/core/controllers/c$1;->a:Lcom/my/target/core/controllers/c;

    invoke-static {v0}, Lcom/my/target/core/controllers/c;->b(Lcom/my/target/core/controllers/c;)Lcom/my/target/core/controllers/c$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/my/target/core/controllers/c$1;->a:Lcom/my/target/core/controllers/c;

    invoke-static {v0}, Lcom/my/target/core/controllers/c;->b(Lcom/my/target/core/controllers/c;)Lcom/my/target/core/controllers/c$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/my/target/core/controllers/c$a;->g()V

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/my/target/core/controllers/c$1;->a:Lcom/my/target/core/controllers/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/my/target/core/controllers/c;->a(Lcom/my/target/core/controllers/c;Z)Z

    .line 56
    :cond_1
    :goto_0
    return-void

    .line 48
    :cond_2
    iget-object v0, p0, Lcom/my/target/core/controllers/c$1;->a:Lcom/my/target/core/controllers/c;

    invoke-static {v0}, Lcom/my/target/core/controllers/c;->a(Lcom/my/target/core/controllers/c;)Lcom/my/target/core/ui/views/video/VideoTextureView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/video/VideoTextureView;->g()V

    .line 49
    iget-object v0, p0, Lcom/my/target/core/controllers/c$1;->a:Lcom/my/target/core/controllers/c;

    invoke-static {v0}, Lcom/my/target/core/controllers/c;->b(Lcom/my/target/core/controllers/c;)Lcom/my/target/core/controllers/c$a;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 51
    iget-object v0, p0, Lcom/my/target/core/controllers/c$1;->a:Lcom/my/target/core/controllers/c;

    invoke-static {v0}, Lcom/my/target/core/controllers/c;->b(Lcom/my/target/core/controllers/c;)Lcom/my/target/core/controllers/c$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/my/target/core/controllers/c$a;->f()V

    .line 53
    :cond_3
    iget-object v0, p0, Lcom/my/target/core/controllers/c$1;->a:Lcom/my/target/core/controllers/c;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/my/target/core/controllers/c;->a(Lcom/my/target/core/controllers/c;Z)Z

    goto :goto_0
.end method

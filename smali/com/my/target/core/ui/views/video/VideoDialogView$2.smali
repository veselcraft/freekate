.class final Lcom/my/target/core/ui/views/video/VideoDialogView$2;
.super Ljava/lang/Object;
.source "VideoDialogView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/core/ui/views/video/VideoDialogView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/my/target/core/ui/views/video/VideoDialogView;


# direct methods
.method constructor <init>(Lcom/my/target/core/ui/views/video/VideoDialogView;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/my/target/core/ui/views/video/VideoDialogView$2;->a:Lcom/my/target/core/ui/views/video/VideoDialogView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 108
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView$2;->a:Lcom/my/target/core/ui/views/video/VideoDialogView;

    iget-object v1, p0, Lcom/my/target/core/ui/views/video/VideoDialogView$2;->a:Lcom/my/target/core/ui/views/video/VideoDialogView;

    invoke-static {v1}, Lcom/my/target/core/ui/views/video/VideoDialogView;->b(Lcom/my/target/core/ui/views/video/VideoDialogView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/video/VideoDialogView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 109
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView$2;->a:Lcom/my/target/core/ui/views/video/VideoDialogView;

    invoke-static {v0}, Lcom/my/target/core/ui/views/video/VideoDialogView;->a(Lcom/my/target/core/ui/views/video/VideoDialogView;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 111
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView$2;->a:Lcom/my/target/core/ui/views/video/VideoDialogView;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/video/VideoDialogView;->c()V

    .line 120
    :goto_0
    return-void

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView$2;->a:Lcom/my/target/core/ui/views/video/VideoDialogView;

    invoke-static {v0}, Lcom/my/target/core/ui/views/video/VideoDialogView;->a(Lcom/my/target/core/ui/views/video/VideoDialogView;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView$2;->a:Lcom/my/target/core/ui/views/video/VideoDialogView;

    invoke-static {v0}, Lcom/my/target/core/ui/views/video/VideoDialogView;->a(Lcom/my/target/core/ui/views/video/VideoDialogView;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView$2;->a:Lcom/my/target/core/ui/views/video/VideoDialogView;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/video/VideoDialogView;->g()V

    .line 118
    :cond_2
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView$2;->a:Lcom/my/target/core/ui/views/video/VideoDialogView;

    iget-object v1, p0, Lcom/my/target/core/ui/views/video/VideoDialogView$2;->a:Lcom/my/target/core/ui/views/video/VideoDialogView;

    invoke-static {v1}, Lcom/my/target/core/ui/views/video/VideoDialogView;->b(Lcom/my/target/core/ui/views/video/VideoDialogView;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Lcom/my/target/core/ui/views/video/VideoDialogView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

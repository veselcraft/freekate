.class final Lcom/my/target/core/ui/views/video/VideoDialogView$1;
.super Ljava/lang/Object;
.source "VideoDialogView.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 91
    iput-object p1, p0, Lcom/my/target/core/ui/views/video/VideoDialogView$1;->a:Lcom/my/target/core/ui/views/video/VideoDialogView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView$1;->a:Lcom/my/target/core/ui/views/video/VideoDialogView;

    invoke-static {v0}, Lcom/my/target/core/ui/views/video/VideoDialogView;->a(Lcom/my/target/core/ui/views/video/VideoDialogView;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView$1;->a:Lcom/my/target/core/ui/views/video/VideoDialogView;

    invoke-static {v0}, Lcom/my/target/core/ui/views/video/VideoDialogView;->a(Lcom/my/target/core/ui/views/video/VideoDialogView;)I

    move-result v0

    if-nez v0, :cond_1

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoDialogView$1;->a:Lcom/my/target/core/ui/views/video/VideoDialogView;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/video/VideoDialogView;->c()V

    .line 99
    :cond_1
    return-void
.end method

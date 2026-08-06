.class final Lcom/my/target/core/ui/views/StandardNativeView$2;
.super Ljava/lang/Object;
.source "StandardNativeView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/core/ui/views/StandardNativeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/my/target/core/ui/views/StandardNativeView;


# direct methods
.method constructor <init>(Lcom/my/target/core/ui/views/StandardNativeView;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/my/target/core/ui/views/StandardNativeView$2;->a:Lcom/my/target/core/ui/views/StandardNativeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 79
    const/4 v0, 0x0

    .line 80
    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNativeView$2;->a:Lcom/my/target/core/ui/views/StandardNativeView;

    invoke-static {v1}, Lcom/my/target/core/ui/views/StandardNativeView;->e(Lcom/my/target/core/ui/views/StandardNativeView;)Lcom/my/target/core/ui/views/StandardNativeView$a;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNativeView$2;->a:Lcom/my/target/core/ui/views/StandardNativeView;

    .line 81
    invoke-static {v1}, Lcom/my/target/core/ui/views/StandardNativeView;->a(Lcom/my/target/core/ui/views/StandardNativeView;)Landroid/widget/ViewFlipper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v1

    iget-object v2, p0, Lcom/my/target/core/ui/views/StandardNativeView$2;->a:Lcom/my/target/core/ui/views/StandardNativeView;

    invoke-static {v2}, Lcom/my/target/core/ui/views/StandardNativeView;->a(Lcom/my/target/core/ui/views/StandardNativeView;)Landroid/widget/ViewFlipper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ViewFlipper;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_0

    .line 83
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView$2;->a:Lcom/my/target/core/ui/views/StandardNativeView;

    invoke-static {v0}, Lcom/my/target/core/ui/views/StandardNativeView;->e(Lcom/my/target/core/ui/views/StandardNativeView;)Lcom/my/target/core/ui/views/StandardNativeView$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/my/target/core/ui/views/StandardNativeView$a;->h()Z

    move-result v0

    .line 86
    :cond_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView$2;->a:Lcom/my/target/core/ui/views/StandardNativeView;

    invoke-static {v0}, Lcom/my/target/core/ui/views/StandardNativeView;->a(Lcom/my/target/core/ui/views/StandardNativeView;)Landroid/widget/ViewFlipper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 88
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView$2;->a:Lcom/my/target/core/ui/views/StandardNativeView;

    invoke-static {v0}, Lcom/my/target/core/ui/views/StandardNativeView;->a(Lcom/my/target/core/ui/views/StandardNativeView;)Landroid/widget/ViewFlipper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showNext()V

    .line 89
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView$2;->a:Lcom/my/target/core/ui/views/StandardNativeView;

    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNativeView$2;->a:Lcom/my/target/core/ui/views/StandardNativeView;

    invoke-static {v1}, Lcom/my/target/core/ui/views/StandardNativeView;->f(Lcom/my/target/core/ui/views/StandardNativeView;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Lcom/my/target/core/ui/views/StandardNativeView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 91
    :cond_1
    return-void
.end method

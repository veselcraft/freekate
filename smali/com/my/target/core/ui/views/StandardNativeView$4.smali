.class final Lcom/my/target/core/ui/views/StandardNativeView$4;
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
    .line 105
    iput-object p1, p0, Lcom/my/target/core/ui/views/StandardNativeView$4;->a:Lcom/my/target/core/ui/views/StandardNativeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView$4;->a:Lcom/my/target/core/ui/views/StandardNativeView;

    invoke-static {v0}, Lcom/my/target/core/ui/views/StandardNativeView;->a(Lcom/my/target/core/ui/views/StandardNativeView;)Landroid/widget/ViewFlipper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNativeView$4;->a:Lcom/my/target/core/ui/views/StandardNativeView;

    invoke-static {v1}, Lcom/my/target/core/ui/views/StandardNativeView;->a(Lcom/my/target/core/ui/views/StandardNativeView;)Landroid/widget/ViewFlipper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNativeView$4;->a:Lcom/my/target/core/ui/views/StandardNativeView;

    .line 110
    invoke-static {v1}, Lcom/my/target/core/ui/views/StandardNativeView;->a(Lcom/my/target/core/ui/views/StandardNativeView;)Landroid/widget/ViewFlipper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 112
    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNativeView$4;->a:Lcom/my/target/core/ui/views/StandardNativeView;

    invoke-static {v1}, Lcom/my/target/core/ui/views/StandardNativeView;->e(Lcom/my/target/core/ui/views/StandardNativeView;)Lcom/my/target/core/ui/views/StandardNativeView$a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 114
    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNativeView$4;->a:Lcom/my/target/core/ui/views/StandardNativeView;

    invoke-static {v1}, Lcom/my/target/core/ui/views/StandardNativeView;->e(Lcom/my/target/core/ui/views/StandardNativeView;)Lcom/my/target/core/ui/views/StandardNativeView$a;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/my/target/core/ui/views/StandardNativeView$a;->a(I)I

    move-result v0

    .line 117
    :cond_0
    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNativeView$4;->a:Lcom/my/target/core/ui/views/StandardNativeView;

    invoke-static {v1, v0}, Lcom/my/target/core/ui/views/StandardNativeView;->a(Lcom/my/target/core/ui/views/StandardNativeView;I)V

    .line 118
    return-void
.end method

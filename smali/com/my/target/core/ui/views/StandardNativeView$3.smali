.class final Lcom/my/target/core/ui/views/StandardNativeView$3;
.super Ljava/lang/Object;
.source "StandardNativeView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 94
    iput-object p1, p0, Lcom/my/target/core/ui/views/StandardNativeView$3;->a:Lcom/my/target/core/ui/views/StandardNativeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView$3;->a:Lcom/my/target/core/ui/views/StandardNativeView;

    invoke-static {v0}, Lcom/my/target/core/ui/views/StandardNativeView;->g(Lcom/my/target/core/ui/views/StandardNativeView;)Lcom/my/target/core/engines/i;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView$3;->a:Lcom/my/target/core/ui/views/StandardNativeView;

    invoke-static {v0}, Lcom/my/target/core/ui/views/StandardNativeView;->g(Lcom/my/target/core/ui/views/StandardNativeView;)Lcom/my/target/core/engines/i;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNativeView$3;->a:Lcom/my/target/core/ui/views/StandardNativeView;

    invoke-static {v1}, Lcom/my/target/core/ui/views/StandardNativeView;->h(Lcom/my/target/core/ui/views/StandardNativeView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/my/target/core/engines/i;->a(Ljava/lang/String;)V

    .line 102
    :cond_0
    return-void
.end method

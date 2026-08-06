.class final Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView$1;
.super Ljava/lang/Object;
.source "FSPromoMediaView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;


# direct methods
.method constructor <init>(Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView$1;->a:Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView$1;->a:Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;

    invoke-static {v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->a(Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;)Lcom/my/target/core/ui/views/fspromo/FSPromoView$a;

    move-result-object v0

    if-nez v0, :cond_0

    .line 54
    :goto_0
    return-void

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView$1;->a:Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->d()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView$1;->a:Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->e()Z

    move-result v0

    if-nez v0, :cond_1

    .line 46
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView$1;->a:Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;

    invoke-static {v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->a(Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;)Lcom/my/target/core/ui/views/fspromo/FSPromoView$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoView$a;->a()V

    goto :goto_0

    .line 47
    :cond_1
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView$1;->a:Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->e()Z

    move-result v0

    if-nez v0, :cond_2

    .line 49
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView$1;->a:Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;

    invoke-static {v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->a(Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;)Lcom/my/target/core/ui/views/fspromo/FSPromoView$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoView$a;->b()V

    goto :goto_0

    .line 52
    :cond_2
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView$1;->a:Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;

    invoke-static {v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->a(Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;)Lcom/my/target/core/ui/views/fspromo/FSPromoView$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoView$a;->c()V

    goto :goto_0
.end method

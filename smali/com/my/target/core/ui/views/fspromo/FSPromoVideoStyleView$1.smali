.class final Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView$1;
.super Ljava/lang/Object;
.source "FSPromoVideoStyleView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;


# direct methods
.method constructor <init>(Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView$1;->a:Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView$1;->a:Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;

    invoke-static {v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->a(Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView$1;->a:Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;

    invoke-static {v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->a(Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;)I

    move-result v0

    if-nez v0, :cond_1

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView$1;->a:Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;

    invoke-static {v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;->b(Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;)V

    .line 100
    :cond_1
    return-void
.end method

.class final Lcom/my/target/core/engines/i$2;
.super Ljava/lang/Object;
.source "StandardNativeEngine.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/core/engines/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/my/target/core/engines/i;


# direct methods
.method constructor <init>(Lcom/my/target/core/engines/i;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/my/target/core/engines/i$2;->a:Lcom/my/target/core/engines/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4

    .prologue
    .line 84
    iget-object v0, p0, Lcom/my/target/core/engines/i$2;->a:Lcom/my/target/core/engines/i;

    invoke-static {v0}, Lcom/my/target/core/engines/i;->c(Lcom/my/target/core/engines/i;)Z

    .line 85
    iget-object v0, p0, Lcom/my/target/core/engines/i$2;->a:Lcom/my/target/core/engines/i;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/my/target/core/engines/i;->a(Lcom/my/target/core/engines/i;J)J

    .line 87
    iget-object v0, p0, Lcom/my/target/core/engines/i$2;->a:Lcom/my/target/core/engines/i;

    invoke-static {v0}, Lcom/my/target/core/engines/i;->d(Lcom/my/target/core/engines/i;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/my/target/core/engines/i$2;->a:Lcom/my/target/core/engines/i;

    invoke-static {v1}, Lcom/my/target/core/engines/i;->e(Lcom/my/target/core/engines/i;)Landroid/widget/ViewFlipper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v1

    if-le v0, v1, :cond_2

    .line 88
    iget-object v1, p0, Lcom/my/target/core/engines/i$2;->a:Lcom/my/target/core/engines/i;

    iget-object v0, p0, Lcom/my/target/core/engines/i$2;->a:Lcom/my/target/core/engines/i;

    invoke-static {v0}, Lcom/my/target/core/engines/i;->d(Lcom/my/target/core/engines/i;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/my/target/core/engines/i$2;->a:Lcom/my/target/core/engines/i;

    invoke-static {v2}, Lcom/my/target/core/engines/i;->e(Lcom/my/target/core/engines/i;)Landroid/widget/ViewFlipper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/core/models/banners/j;

    invoke-static {v1, v0}, Lcom/my/target/core/engines/i;->a(Lcom/my/target/core/engines/i;Lcom/my/target/core/models/banners/j;)Lcom/my/target/core/models/banners/j;

    .line 95
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/my/target/core/engines/i$2;->a:Lcom/my/target/core/engines/i;

    invoke-static {v0}, Lcom/my/target/core/engines/i;->h(Lcom/my/target/core/engines/i;)Lcom/my/target/core/facades/h;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 97
    iget-object v0, p0, Lcom/my/target/core/engines/i$2;->a:Lcom/my/target/core/engines/i;

    iget-object v1, p0, Lcom/my/target/core/engines/i$2;->a:Lcom/my/target/core/engines/i;

    invoke-static {v1}, Lcom/my/target/core/engines/i;->h(Lcom/my/target/core/engines/i;)Lcom/my/target/core/facades/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/my/target/core/facades/h;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/my/target/core/engines/i;->a(Lcom/my/target/core/engines/i;Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/my/target/core/engines/i$2;->a:Lcom/my/target/core/engines/i;

    iget-object v1, p0, Lcom/my/target/core/engines/i$2;->a:Lcom/my/target/core/engines/i;

    invoke-static {v1}, Lcom/my/target/core/engines/i;->f(Lcom/my/target/core/engines/i;)Lcom/my/target/core/models/banners/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/my/target/core/models/banners/j;->getTimeout()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Lcom/my/target/core/engines/i;->b(Lcom/my/target/core/engines/i;J)J

    .line 101
    iget-object v0, p0, Lcom/my/target/core/engines/i$2;->a:Lcom/my/target/core/engines/i;

    invoke-static {v0}, Lcom/my/target/core/engines/i;->i(Lcom/my/target/core/engines/i;)V

    .line 102
    iget-object v0, p0, Lcom/my/target/core/engines/i$2;->a:Lcom/my/target/core/engines/i;

    invoke-static {v0}, Lcom/my/target/core/engines/i;->j(Lcom/my/target/core/engines/i;)V

    .line 104
    :cond_1
    return-void

    .line 89
    :cond_2
    iget-object v0, p0, Lcom/my/target/core/engines/i$2;->a:Lcom/my/target/core/engines/i;

    invoke-static {v0}, Lcom/my/target/core/engines/i;->f(Lcom/my/target/core/engines/i;)Lcom/my/target/core/models/banners/j;

    move-result-object v0

    if-nez v0, :cond_0

    .line 91
    const-string v0, "list of banners count doesn\'t match views count, restarting"

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/my/target/core/engines/i$2;->a:Lcom/my/target/core/engines/i;

    invoke-static {v0}, Lcom/my/target/core/engines/i;->g(Lcom/my/target/core/engines/i;)V

    goto :goto_0
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 110
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 79
    return-void
.end method

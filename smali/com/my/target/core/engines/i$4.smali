.class final Lcom/my/target/core/engines/i$4;
.super Ljava/lang/Object;
.source "StandardNativeEngine.java"

# interfaces
.implements Lcom/my/target/core/net/b$a;


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
    .line 129
    iput-object p1, p0, Lcom/my/target/core/engines/i$4;->a:Lcom/my/target/core/engines/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLoad()V
    .locals 6

    .prologue
    .line 133
    iget-object v0, p0, Lcom/my/target/core/engines/i$4;->a:Lcom/my/target/core/engines/i;

    iget-object v1, p0, Lcom/my/target/core/engines/i$4;->a:Lcom/my/target/core/engines/i;

    invoke-static {v1}, Lcom/my/target/core/engines/i;->n(Lcom/my/target/core/engines/i;)Landroid/widget/ViewFlipper;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/my/target/core/engines/i;->a(Lcom/my/target/core/engines/i;Landroid/widget/ViewFlipper;)V

    .line 134
    iget-object v0, p0, Lcom/my/target/core/engines/i$4;->a:Lcom/my/target/core/engines/i;

    invoke-static {v0}, Lcom/my/target/core/engines/i;->o(Lcom/my/target/core/engines/i;)Z

    .line 136
    iget-object v0, p0, Lcom/my/target/core/engines/i$4;->a:Lcom/my/target/core/engines/i;

    invoke-static {v0}, Lcom/my/target/core/engines/i;->k(Lcom/my/target/core/engines/i;)I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/my/target/core/engines/i$4;->a:Lcom/my/target/core/engines/i;

    .line 137
    invoke-static {v0}, Lcom/my/target/core/engines/i;->f(Lcom/my/target/core/engines/i;)Lcom/my/target/core/models/banners/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/j;->getTimeout()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    .line 138
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/my/target/core/engines/i$4;->a:Lcom/my/target/core/engines/i;

    invoke-static {v4}, Lcom/my/target/core/engines/i;->p(Lcom/my/target/core/engines/i;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/my/target/core/engines/i$4;->a:Lcom/my/target/core/engines/i;

    invoke-static {v0}, Lcom/my/target/core/engines/i;->l(Lcom/my/target/core/engines/i;)Z

    .line 142
    :cond_0
    return-void
.end method

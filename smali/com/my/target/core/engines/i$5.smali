.class final Lcom/my/target/core/engines/i$5;
.super Ljava/lang/Object;
.source "StandardNativeEngine.java"

# interfaces
.implements Lcom/my/target/core/facades/h$a;


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
    .line 145
    iput-object p1, p0, Lcom/my/target/core/engines/i$5;->a:Lcom/my/target/core/engines/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLoad(Lcom/my/target/core/facades/h;)V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/my/target/core/engines/i$5;->a:Lcom/my/target/core/engines/i;

    invoke-static {v0}, Lcom/my/target/core/engines/i;->q(Lcom/my/target/core/engines/i;)Lcom/my/target/core/facades/h;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/my/target/core/engines/i$5;->a:Lcom/my/target/core/engines/i;

    invoke-static {v0}, Lcom/my/target/core/engines/i;->q(Lcom/my/target/core/engines/i;)Lcom/my/target/core/facades/h;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/my/target/core/facades/h;->a(Lcom/my/target/core/facades/h$a;)V

    .line 152
    iget-object v0, p0, Lcom/my/target/core/engines/i$5;->a:Lcom/my/target/core/engines/i;

    iget-object v1, p0, Lcom/my/target/core/engines/i$5;->a:Lcom/my/target/core/engines/i;

    invoke-static {v1}, Lcom/my/target/core/engines/i;->q(Lcom/my/target/core/engines/i;)Lcom/my/target/core/facades/h;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/my/target/core/engines/i;->a(Lcom/my/target/core/engines/i;Lcom/my/target/core/facades/h;)V

    .line 154
    :cond_0
    return-void
.end method

.method public final onNoAd(Ljava/lang/String;Lcom/my/target/core/facades/h;)V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/my/target/core/engines/i$5;->a:Lcom/my/target/core/engines/i;

    invoke-static {v0}, Lcom/my/target/core/engines/i;->r(Lcom/my/target/core/engines/i;)V

    .line 160
    return-void
.end method

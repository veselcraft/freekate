.class final Lcom/my/target/core/engines/h$3;
.super Ljava/lang/Object;
.source "StandardJSEngine.java"

# interfaces
.implements Lcom/my/target/core/facades/h$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/core/engines/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/my/target/core/engines/h;


# direct methods
.method constructor <init>(Lcom/my/target/core/engines/h;)V
    .locals 0

    .prologue
    .line 520
    iput-object p1, p0, Lcom/my/target/core/engines/h$3;->a:Lcom/my/target/core/engines/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLoad(Lcom/my/target/core/facades/h;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 524
    iget-object v0, p0, Lcom/my/target/core/engines/h$3;->a:Lcom/my/target/core/engines/h;

    invoke-static {v0}, Lcom/my/target/core/engines/h;->h(Lcom/my/target/core/engines/h;)Lcom/my/target/core/facades/h;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 526
    iget-object v0, p0, Lcom/my/target/core/engines/h$3;->a:Lcom/my/target/core/engines/h;

    invoke-static {v0}, Lcom/my/target/core/engines/h;->h(Lcom/my/target/core/engines/h;)Lcom/my/target/core/facades/h;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/my/target/core/facades/h;->a(Lcom/my/target/core/facades/h$a;)V

    .line 527
    iget-object v0, p0, Lcom/my/target/core/engines/h$3;->a:Lcom/my/target/core/engines/h;

    invoke-static {v0, v1}, Lcom/my/target/core/engines/h;->a(Lcom/my/target/core/engines/h;Lcom/my/target/core/facades/h;)Lcom/my/target/core/facades/h;

    .line 528
    iget-object v0, p0, Lcom/my/target/core/engines/h$3;->a:Lcom/my/target/core/engines/h;

    invoke-static {v0, p1}, Lcom/my/target/core/engines/h;->b(Lcom/my/target/core/engines/h;Lcom/my/target/core/facades/h;)V

    .line 530
    :cond_0
    return-void
.end method

.method public final onNoAd(Ljava/lang/String;Lcom/my/target/core/facades/h;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 535
    iget-object v0, p0, Lcom/my/target/core/engines/h$3;->a:Lcom/my/target/core/engines/h;

    invoke-static {v0}, Lcom/my/target/core/engines/h;->h(Lcom/my/target/core/engines/h;)Lcom/my/target/core/facades/h;

    move-result-object v0

    if-ne v0, p2, :cond_0

    .line 537
    invoke-virtual {p2, v1}, Lcom/my/target/core/facades/h;->a(Lcom/my/target/core/facades/h$a;)V

    .line 538
    iget-object v0, p0, Lcom/my/target/core/engines/h$3;->a:Lcom/my/target/core/engines/h;

    invoke-static {v0, v1}, Lcom/my/target/core/engines/h;->a(Lcom/my/target/core/engines/h;Lcom/my/target/core/facades/h;)Lcom/my/target/core/facades/h;

    .line 540
    :cond_0
    return-void
.end method

.class final Lcom/my/target/core/engines/h$6;
.super Ljava/lang/Object;
.source "StandardJSEngine.java"

# interfaces
.implements Lcom/my/target/core/communication/js/b;


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
    .line 405
    iput-object p1, p0, Lcom/my/target/core/engines/h$6;->a:Lcom/my/target/core/engines/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/my/target/core/communication/js/events/f;)V
    .locals 4

    .prologue
    .line 409
    move-object v0, p1

    check-cast v0, Lcom/my/target/core/communication/js/events/e;

    .line 410
    const-string v1, "JS error"

    .line 411
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/my/target/core/communication/js/events/e;->b()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/my/target/core/communication/js/events/e;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 412
    :goto_0
    const-string v1, ""

    .line 413
    iget-object v2, p0, Lcom/my/target/core/engines/h$6;->a:Lcom/my/target/core/engines/h;

    invoke-static {v2}, Lcom/my/target/core/engines/h;->e(Lcom/my/target/core/engines/h;)Lcom/my/target/core/facades/h;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/my/target/core/engines/h$6;->a:Lcom/my/target/core/engines/h;

    invoke-static {v1}, Lcom/my/target/core/engines/h;->e(Lcom/my/target/core/engines/h;)Lcom/my/target/core/facades/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/my/target/core/facades/h;->g()Ljava/lang/String;

    move-result-object v1

    .line 414
    :cond_0
    invoke-interface {p1}, Lcom/my/target/core/communication/js/events/f;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "onError"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 416
    new-instance v2, Lcom/my/target/core/async/a;

    invoke-direct {v2, v0}, Lcom/my/target/core/async/a;-><init>(Ljava/lang/String;)V

    .line 417
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/my/target/core/async/a;->a(Ljava/lang/String;)V

    .line 418
    const/16 v0, 0x28

    invoke-virtual {v2, v0}, Lcom/my/target/core/async/a;->a(I)V

    .line 419
    const-string v0, "JSError"

    invoke-virtual {v2, v0}, Lcom/my/target/core/async/a;->b(Ljava/lang/String;)V

    .line 420
    invoke-virtual {v2, v1}, Lcom/my/target/core/async/a;->d(Ljava/lang/String;)V

    .line 421
    iget-object v0, p0, Lcom/my/target/core/engines/h$6;->a:Lcom/my/target/core/engines/h;

    iget-object v0, v0, Lcom/my/target/core/engines/h;->b:Landroid/content/Context;

    invoke-virtual {v2, v0}, Lcom/my/target/core/async/a;->a(Landroid/content/Context;)V

    .line 422
    invoke-virtual {v2}, Lcom/my/target/core/async/a;->a()V

    .line 423
    iget-object v0, p0, Lcom/my/target/core/engines/h$6;->a:Lcom/my/target/core/engines/h;

    invoke-static {v0}, Lcom/my/target/core/engines/h;->b(Lcom/my/target/core/engines/h;)Lcom/my/target/ads/MyTargetView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/ads/MyTargetView;->getListener()Lcom/my/target/ads/MyTargetView$MyTargetViewListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 425
    iget-object v0, p0, Lcom/my/target/core/engines/h$6;->a:Lcom/my/target/core/engines/h;

    invoke-static {v0}, Lcom/my/target/core/engines/h;->f(Lcom/my/target/core/engines/h;)Lcom/my/target/core/engines/h$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/core/engines/h$a;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/my/target/core/engines/h$6;->a:Lcom/my/target/core/engines/h;

    invoke-static {v0}, Lcom/my/target/core/engines/h;->b(Lcom/my/target/core/engines/h;)Lcom/my/target/ads/MyTargetView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/ads/MyTargetView;->getListener()Lcom/my/target/ads/MyTargetView$MyTargetViewListener;

    move-result-object v0

    const-string v1, "JS error"

    iget-object v2, p0, Lcom/my/target/core/engines/h$6;->a:Lcom/my/target/core/engines/h;

    invoke-static {v2}, Lcom/my/target/core/engines/h;->b(Lcom/my/target/core/engines/h;)Lcom/my/target/ads/MyTargetView;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/my/target/ads/MyTargetView$MyTargetViewListener;->onNoAd(Ljava/lang/String;Lcom/my/target/ads/MyTargetView;)V

    .line 439
    :cond_1
    :goto_1
    return-void

    .line 426
    :cond_2
    iget-object v0, p0, Lcom/my/target/core/engines/h$6;->a:Lcom/my/target/core/engines/h;

    invoke-static {v0}, Lcom/my/target/core/engines/h;->b(Lcom/my/target/core/engines/h;)Lcom/my/target/ads/MyTargetView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/ads/MyTargetView;->getListener()Lcom/my/target/ads/MyTargetView$MyTargetViewListener;

    move-result-object v0

    const-string v1, "JS init error"

    iget-object v2, p0, Lcom/my/target/core/engines/h$6;->a:Lcom/my/target/core/engines/h;

    invoke-static {v2}, Lcom/my/target/core/engines/h;->b(Lcom/my/target/core/engines/h;)Lcom/my/target/ads/MyTargetView;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/my/target/ads/MyTargetView$MyTargetViewListener;->onNoAd(Ljava/lang/String;Lcom/my/target/ads/MyTargetView;)V

    goto :goto_1

    .line 430
    :cond_3
    new-instance v2, Lcom/my/target/core/async/a;

    invoke-direct {v2, v0}, Lcom/my/target/core/async/a;-><init>(Ljava/lang/String;)V

    .line 431
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/my/target/core/async/a;->a(Ljava/lang/String;)V

    .line 432
    const/16 v0, 0x1e

    invoke-virtual {v2, v0}, Lcom/my/target/core/async/a;->a(I)V

    .line 433
    const-string v0, "JSError"

    invoke-virtual {v2, v0}, Lcom/my/target/core/async/a;->b(Ljava/lang/String;)V

    .line 434
    invoke-virtual {v2, v1}, Lcom/my/target/core/async/a;->d(Ljava/lang/String;)V

    .line 435
    iget-object v0, p0, Lcom/my/target/core/engines/h$6;->a:Lcom/my/target/core/engines/h;

    iget-object v0, v0, Lcom/my/target/core/engines/h;->b:Landroid/content/Context;

    invoke-virtual {v2, v0}, Lcom/my/target/core/async/a;->a(Landroid/content/Context;)V

    .line 436
    invoke-virtual {v2}, Lcom/my/target/core/async/a;->a()V

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto/16 :goto_0
.end method

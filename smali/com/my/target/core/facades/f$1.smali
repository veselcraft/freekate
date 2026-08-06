.class final Lcom/my/target/core/facades/f$1;
.super Ljava/lang/Object;
.source "InterstitialSliderAppwallAd.java"

# interfaces
.implements Lcom/my/target/core/net/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/core/facades/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/my/target/core/facades/f;


# direct methods
.method constructor <init>(Lcom/my/target/core/facades/f;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/my/target/core/facades/f$1;->a:Lcom/my/target/core/facades/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLoad()V
    .locals 3

    .prologue
    .line 32
    iget-object v0, p0, Lcom/my/target/core/facades/f$1;->a:Lcom/my/target/core/facades/f;

    invoke-static {v0}, Lcom/my/target/core/facades/f;->a(Lcom/my/target/core/facades/f;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 34
    const-string v0, "InterstitialSliderAppwallAd: failed to load images"

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lcom/my/target/core/facades/f$1;->a:Lcom/my/target/core/facades/f;

    invoke-static {v0}, Lcom/my/target/core/facades/f;->b(Lcom/my/target/core/facades/f;)Lcom/my/target/core/facades/c$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/my/target/core/facades/f$1;->a:Lcom/my/target/core/facades/f;

    invoke-static {v0}, Lcom/my/target/core/facades/f;->b(Lcom/my/target/core/facades/f;)Lcom/my/target/core/facades/c$a;

    move-result-object v0

    const-string v1, "Failed to load all images"

    iget-object v2, p0, Lcom/my/target/core/facades/f$1;->a:Lcom/my/target/core/facades/f;

    invoke-interface {v0, v1, v2}, Lcom/my/target/core/facades/c$a;->onError(Ljava/lang/String;Lcom/my/target/core/facades/c;)V

    .line 42
    :cond_0
    :goto_0
    return-void

    .line 40
    :cond_1
    iget-object v0, p0, Lcom/my/target/core/facades/f$1;->a:Lcom/my/target/core/facades/f;

    invoke-static {v0}, Lcom/my/target/core/facades/f;->b(Lcom/my/target/core/facades/f;)Lcom/my/target/core/facades/c$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/my/target/core/facades/f$1;->a:Lcom/my/target/core/facades/f;

    invoke-static {v0}, Lcom/my/target/core/facades/f;->b(Lcom/my/target/core/facades/f;)Lcom/my/target/core/facades/c$a;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/core/facades/f$1;->a:Lcom/my/target/core/facades/f;

    invoke-interface {v0, v1}, Lcom/my/target/core/facades/c$a;->onLoad(Lcom/my/target/core/facades/c;)V

    goto :goto_0
.end method

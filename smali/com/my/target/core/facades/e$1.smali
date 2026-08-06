.class final Lcom/my/target/core/facades/e$1;
.super Ljava/lang/Object;
.source "InterstitialPromoAd.java"

# interfaces
.implements Lcom/my/target/core/net/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/core/facades/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/my/target/core/facades/e;


# direct methods
.method constructor <init>(Lcom/my/target/core/facades/e;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/my/target/core/facades/e$1;->a:Lcom/my/target/core/facades/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLoad()V
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/my/target/core/facades/e$1;->a:Lcom/my/target/core/facades/e;

    invoke-static {v0}, Lcom/my/target/core/facades/e;->a(Lcom/my/target/core/facades/e;)Lcom/my/target/core/facades/c$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/my/target/core/facades/e$1;->a:Lcom/my/target/core/facades/e;

    invoke-static {v0}, Lcom/my/target/core/facades/e;->a(Lcom/my/target/core/facades/e;)Lcom/my/target/core/facades/c$a;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/core/facades/e$1;->a:Lcom/my/target/core/facades/e;

    invoke-interface {v0, v1}, Lcom/my/target/core/facades/c$a;->onLoad(Lcom/my/target/core/facades/c;)V

    .line 141
    :cond_0
    return-void
.end method

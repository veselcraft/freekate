.class Lcom/inmobi/commons/core/network/a$1;
.super Ljava/lang/Object;
.source "AsyncNetworkTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/commons/core/network/a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/commons/core/network/a;


# direct methods
.method constructor <init>(Lcom/inmobi/commons/core/network/a;)V
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lcom/inmobi/commons/core/network/a$1;->a:Lcom/inmobi/commons/core/network/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 20
    new-instance v0, Lcom/inmobi/commons/core/network/b;

    iget-object v1, p0, Lcom/inmobi/commons/core/network/a$1;->a:Lcom/inmobi/commons/core/network/a;

    invoke-static {v1}, Lcom/inmobi/commons/core/network/a;->a(Lcom/inmobi/commons/core/network/a;)Lcom/inmobi/commons/core/network/NetworkRequest;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/inmobi/commons/core/network/b;-><init>(Lcom/inmobi/commons/core/network/NetworkRequest;)V

    .line 21
    invoke-virtual {v0}, Lcom/inmobi/commons/core/network/b;->a()Lcom/inmobi/commons/core/network/c;

    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lcom/inmobi/commons/core/network/c;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 24
    iget-object v1, p0, Lcom/inmobi/commons/core/network/a$1;->a:Lcom/inmobi/commons/core/network/a;

    invoke-static {v1}, Lcom/inmobi/commons/core/network/a;->b(Lcom/inmobi/commons/core/network/a;)Lcom/inmobi/commons/core/network/a$a;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/inmobi/commons/core/network/a$a;->b(Lcom/inmobi/commons/core/network/c;)V

    .line 28
    :goto_0
    return-void

    .line 26
    :cond_0
    iget-object v1, p0, Lcom/inmobi/commons/core/network/a$1;->a:Lcom/inmobi/commons/core/network/a;

    invoke-static {v1}, Lcom/inmobi/commons/core/network/a;->b(Lcom/inmobi/commons/core/network/a;)Lcom/inmobi/commons/core/network/a$a;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/inmobi/commons/core/network/a$a;->a(Lcom/inmobi/commons/core/network/c;)V

    goto :goto_0
.end method

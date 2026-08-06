.class Lcom/inmobi/rendering/a/c$a$1;
.super Ljava/lang/Object;
.source "ClickManager.java"

# interfaces
.implements Lcom/inmobi/rendering/a/c$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/rendering/a/c$a;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/rendering/a/c$a;


# direct methods
.method constructor <init>(Lcom/inmobi/rendering/a/c$a;)V
    .locals 0

    .prologue
    .line 463
    iput-object p1, p0, Lcom/inmobi/rendering/a/c$a$1;->a:Lcom/inmobi/rendering/a/c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/inmobi/rendering/a/a;)V
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/inmobi/rendering/a/c$a$1;->a:Lcom/inmobi/rendering/a/c$a;

    invoke-static {v0, p1}, Lcom/inmobi/rendering/a/c$a;->a(Lcom/inmobi/rendering/a/c$a;Lcom/inmobi/rendering/a/a;)V

    .line 467
    return-void
.end method

.method public a(Lcom/inmobi/rendering/a/a;Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;)V
    .locals 4

    .prologue
    .line 471
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/rendering/a/c;->e()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pinging click ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/inmobi/rendering/a/a;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") via HTTP failed ..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    iget-object v0, p0, Lcom/inmobi/rendering/a/c$a$1;->a:Lcom/inmobi/rendering/a/c$a;

    iget-object v0, v0, Lcom/inmobi/rendering/a/c$a;->a:Lcom/inmobi/rendering/a/c;

    invoke-static {v0, p1}, Lcom/inmobi/rendering/a/c;->a(Lcom/inmobi/rendering/a/c;Lcom/inmobi/rendering/a/a;)V

    .line 473
    iget-object v0, p0, Lcom/inmobi/rendering/a/c$a$1;->a:Lcom/inmobi/rendering/a/c$a;

    invoke-static {v0, p1}, Lcom/inmobi/rendering/a/c$a;->b(Lcom/inmobi/rendering/a/c$a;Lcom/inmobi/rendering/a/a;)V

    .line 474
    return-void
.end method

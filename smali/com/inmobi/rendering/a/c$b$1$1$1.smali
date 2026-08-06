.class Lcom/inmobi/rendering/a/c$b$1$1$1;
.super Ljava/lang/Object;
.source "ClickManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/rendering/a/c$b$1$1;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/webkit/WebView;

.field final synthetic b:Lcom/inmobi/rendering/a/c$b$1$1;


# direct methods
.method constructor <init>(Lcom/inmobi/rendering/a/c$b$1$1;Landroid/webkit/WebView;)V
    .locals 0

    .prologue
    .line 321
    iput-object p1, p0, Lcom/inmobi/rendering/a/c$b$1$1$1;->b:Lcom/inmobi/rendering/a/c$b$1$1;

    iput-object p2, p0, Lcom/inmobi/rendering/a/c$b$1$1$1;->a:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 325
    :try_start_0
    sget-object v0, Lcom/inmobi/rendering/a/c;->a:Lcom/inmobi/ads/b$b;

    invoke-virtual {v0}, Lcom/inmobi/ads/b$b;->c()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    :goto_0
    iget-object v0, p0, Lcom/inmobi/rendering/a/c$b$1$1$1;->b:Lcom/inmobi/rendering/a/c$b$1$1;

    iget-object v0, v0, Lcom/inmobi/rendering/a/c$b$1$1;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 331
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/rendering/a/c;->e()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pinging click ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/inmobi/rendering/a/c$b$1$1$1;->b:Lcom/inmobi/rendering/a/c$b$1$1;

    iget-object v3, v3, Lcom/inmobi/rendering/a/c$b$1$1;->c:Lcom/inmobi/rendering/a/c$b$1;

    iget-object v3, v3, Lcom/inmobi/rendering/a/c$b$1;->a:Lcom/inmobi/rendering/a/a;

    iget v3, v3, Lcom/inmobi/rendering/a/a;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") via WebView timed out!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    iget-object v0, p0, Lcom/inmobi/rendering/a/c$b$1$1$1;->b:Lcom/inmobi/rendering/a/c$b$1$1;

    iget-object v0, v0, Lcom/inmobi/rendering/a/c$b$1$1;->c:Lcom/inmobi/rendering/a/c$b$1;

    iget-object v0, v0, Lcom/inmobi/rendering/a/c$b$1;->a:Lcom/inmobi/rendering/a/a;

    iget-object v0, v0, Lcom/inmobi/rendering/a/a;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 334
    iget-object v0, p0, Lcom/inmobi/rendering/a/c$b$1$1$1;->b:Lcom/inmobi/rendering/a/c$b$1$1;

    iget-object v0, v0, Lcom/inmobi/rendering/a/c$b$1$1;->c:Lcom/inmobi/rendering/a/c$b$1;

    iget-object v0, v0, Lcom/inmobi/rendering/a/c$b$1;->b:Landroid/os/Handler;

    new-instance v1, Lcom/inmobi/rendering/a/c$b$1$1$1$1;

    invoke-direct {v1, p0}, Lcom/inmobi/rendering/a/c$b$1$1$1$1;-><init>(Lcom/inmobi/rendering/a/c$b$1$1$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 341
    iget-object v0, p0, Lcom/inmobi/rendering/a/c$b$1$1$1;->b:Lcom/inmobi/rendering/a/c$b$1$1;

    iget-object v0, v0, Lcom/inmobi/rendering/a/c$b$1$1;->c:Lcom/inmobi/rendering/a/c$b$1;

    iget-object v0, v0, Lcom/inmobi/rendering/a/c$b$1;->c:Lcom/inmobi/rendering/a/c$b;

    invoke-static {v0}, Lcom/inmobi/rendering/a/c$b;->a(Lcom/inmobi/rendering/a/c$b;)Lcom/inmobi/rendering/a/c$d;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/rendering/a/c$b$1$1$1;->b:Lcom/inmobi/rendering/a/c$b$1$1;

    iget-object v1, v1, Lcom/inmobi/rendering/a/c$b$1$1;->c:Lcom/inmobi/rendering/a/c$b$1;

    iget-object v1, v1, Lcom/inmobi/rendering/a/c$b$1;->a:Lcom/inmobi/rendering/a/a;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/inmobi/rendering/a/c$d;->a(Lcom/inmobi/rendering/a/a;Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;)V

    .line 343
    :cond_0
    return-void

    .line 326
    :catch_0
    move-exception v0

    goto :goto_0
.end method

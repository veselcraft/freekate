.class Lcom/inmobi/rendering/a/c$b$1$1;
.super Landroid/webkit/WebViewClient;
.source "ClickManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/rendering/a/c$b$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field b:Z

.field final synthetic c:Lcom/inmobi/rendering/a/c$b$1;


# direct methods
.method constructor <init>(Lcom/inmobi/rendering/a/c$b$1;)V
    .locals 0

    .prologue
    .line 313
    iput-object p1, p0, Lcom/inmobi/rendering/a/c$b$1$1;->c:Lcom/inmobi/rendering/a/c$b$1;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 349
    iget-object v0, p0, Lcom/inmobi/rendering/a/c$b$1$1;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 350
    iget-boolean v0, p0, Lcom/inmobi/rendering/a/c$b$1$1;->b:Z

    if-nez v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/inmobi/rendering/a/c$b$1$1;->c:Lcom/inmobi/rendering/a/c$b$1;

    iget-object v0, v0, Lcom/inmobi/rendering/a/c$b$1;->a:Lcom/inmobi/rendering/a/a;

    iget-object v0, v0, Lcom/inmobi/rendering/a/a;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/inmobi/rendering/a/c$b$1$1;->c:Lcom/inmobi/rendering/a/c$b$1;

    iget-object v0, v0, Lcom/inmobi/rendering/a/c$b$1;->c:Lcom/inmobi/rendering/a/c$b;

    invoke-static {v0}, Lcom/inmobi/rendering/a/c$b;->a(Lcom/inmobi/rendering/a/c$b;)Lcom/inmobi/rendering/a/c$d;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/rendering/a/c$b$1$1;->c:Lcom/inmobi/rendering/a/c$b$1;

    iget-object v1, v1, Lcom/inmobi/rendering/a/c$b$1;->a:Lcom/inmobi/rendering/a/a;

    invoke-interface {v0, v1}, Lcom/inmobi/rendering/a/c$d;->a(Lcom/inmobi/rendering/a/a;)V

    .line 355
    :cond_0
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 319
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/inmobi/rendering/a/c$b$1$1;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 320
    iput-boolean v1, p0, Lcom/inmobi/rendering/a/c$b$1$1;->b:Z

    .line 321
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/inmobi/rendering/a/c$b$1$1$1;

    invoke-direct {v1, p0, p1}, Lcom/inmobi/rendering/a/c$b$1$1$1;-><init>(Lcom/inmobi/rendering/a/c$b$1$1;Landroid/webkit/WebView;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 344
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 345
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 361
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/rendering/a/c$b$1$1;->b:Z

    .line 362
    iget-object v0, p0, Lcom/inmobi/rendering/a/c$b$1$1;->c:Lcom/inmobi/rendering/a/c$b$1;

    iget-object v0, v0, Lcom/inmobi/rendering/a/c$b$1;->c:Lcom/inmobi/rendering/a/c$b;

    invoke-static {v0}, Lcom/inmobi/rendering/a/c$b;->a(Lcom/inmobi/rendering/a/c$b;)Lcom/inmobi/rendering/a/c$d;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/rendering/a/c$b$1$1;->c:Lcom/inmobi/rendering/a/c$b$1;

    iget-object v1, v1, Lcom/inmobi/rendering/a/c$b$1;->a:Lcom/inmobi/rendering/a/a;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/inmobi/rendering/a/c$d;->a(Lcom/inmobi/rendering/a/a;Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;)V

    .line 363
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 3

    .prologue
    .line 368
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/rendering/a/c$b$1$1;->b:Z

    .line 369
    iget-object v0, p0, Lcom/inmobi/rendering/a/c$b$1$1;->c:Lcom/inmobi/rendering/a/c$b$1;

    iget-object v0, v0, Lcom/inmobi/rendering/a/c$b$1;->c:Lcom/inmobi/rendering/a/c$b;

    invoke-static {v0}, Lcom/inmobi/rendering/a/c$b;->a(Lcom/inmobi/rendering/a/c$b;)Lcom/inmobi/rendering/a/c$d;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/rendering/a/c$b$1$1;->c:Lcom/inmobi/rendering/a/c$b$1;

    iget-object v1, v1, Lcom/inmobi/rendering/a/c$b$1;->a:Lcom/inmobi/rendering/a/a;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/inmobi/rendering/a/c$d;->a(Lcom/inmobi/rendering/a/a;Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;)V

    .line 370
    return-void
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 3

    .prologue
    .line 375
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/rendering/a/c$b$1$1;->b:Z

    .line 376
    iget-object v0, p0, Lcom/inmobi/rendering/a/c$b$1$1;->c:Lcom/inmobi/rendering/a/c$b$1;

    iget-object v0, v0, Lcom/inmobi/rendering/a/c$b$1;->c:Lcom/inmobi/rendering/a/c$b;

    invoke-static {v0}, Lcom/inmobi/rendering/a/c$b;->a(Lcom/inmobi/rendering/a/c$b;)Lcom/inmobi/rendering/a/c$d;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/rendering/a/c$b$1$1;->c:Lcom/inmobi/rendering/a/c$b$1;

    iget-object v1, v1, Lcom/inmobi/rendering/a/c$b$1;->a:Lcom/inmobi/rendering/a/a;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/inmobi/rendering/a/c$d;->a(Lcom/inmobi/rendering/a/a;Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;)V

    .line 377
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/inmobi/rendering/a/c$b$1$1;->c:Lcom/inmobi/rendering/a/c$b$1;

    iget-object v0, v0, Lcom/inmobi/rendering/a/c$b$1;->a:Lcom/inmobi/rendering/a/a;

    iget-boolean v0, v0, Lcom/inmobi/rendering/a/a;->i:Z

    if-nez v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/inmobi/rendering/a/c$b$1$1;->c:Lcom/inmobi/rendering/a/c$b$1;

    iget-object v0, v0, Lcom/inmobi/rendering/a/c$b$1;->a:Lcom/inmobi/rendering/a/a;

    iget-object v0, v0, Lcom/inmobi/rendering/a/a;->b:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 383
    const/4 v0, 0x1

    .line 386
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

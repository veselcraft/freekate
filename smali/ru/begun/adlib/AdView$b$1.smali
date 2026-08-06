.class final Lru/begun/adlib/AdView$b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/begun/adlib/AdView$b;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lru/begun/adlib/AdView$b;


# direct methods
.method constructor <init>(Lru/begun/adlib/AdView$b;)V
    .locals 0

    .prologue
    .line 402
    iput-object p1, p0, Lru/begun/adlib/AdView$b$1;->a:Lru/begun/adlib/AdView$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 404
    iget-object v0, p0, Lru/begun/adlib/AdView$b$1;->a:Lru/begun/adlib/AdView$b;

    iget-object v0, v0, Lru/begun/adlib/AdView$b;->a:Lru/begun/adlib/AdView;

    iget-boolean v0, v0, Lru/begun/adlib/AdView;->libraryHasInitialized:Z

    if-nez v0, :cond_0

    .line 405
    iget-object v0, p0, Lru/begun/adlib/AdView$b$1;->a:Lru/begun/adlib/AdView$b;

    iget-object v0, v0, Lru/begun/adlib/AdView$b;->a:Lru/begun/adlib/AdView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lru/begun/adlib/AdView;->libraryHasInitialized:Z

    .line 407
    :try_start_0
    iget-object v0, p0, Lru/begun/adlib/AdView$b$1;->a:Lru/begun/adlib/AdView$b;

    iget-object v0, v0, Lru/begun/adlib/AdView$b;->a:Lru/begun/adlib/AdView;

    iget-object v1, p0, Lru/begun/adlib/AdView$b$1;->a:Lru/begun/adlib/AdView$b;

    iget-object v1, v1, Lru/begun/adlib/AdView$b;->a:Lru/begun/adlib/AdView;

    invoke-static {v1}, Lru/begun/adlib/AdView;->g(Lru/begun/adlib/AdView;)Landroid/webkit/WebView;

    move-result-object v1

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Lru/begun/adlib/AdView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 416
    :cond_0
    :goto_0
    iget-object v0, p0, Lru/begun/adlib/AdView$b$1;->a:Lru/begun/adlib/AdView$b;

    iget-object v0, v0, Lru/begun/adlib/AdView$b;->a:Lru/begun/adlib/AdView;

    invoke-static {v0}, Lru/begun/adlib/AdView;->h(Lru/begun/adlib/AdView;)Lru/begun/adlib/Callback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 417
    iget-object v0, p0, Lru/begun/adlib/AdView$b$1;->a:Lru/begun/adlib/AdView$b;

    iget-object v0, v0, Lru/begun/adlib/AdView$b;->a:Lru/begun/adlib/AdView;

    invoke-static {v0}, Lru/begun/adlib/AdView;->h(Lru/begun/adlib/AdView;)Lru/begun/adlib/Callback;

    move-result-object v0

    invoke-interface {v0}, Lru/begun/adlib/Callback;->init()V

    .line 419
    :cond_1
    return-void

    .line 412
    :catch_0
    move-exception v0

    const-string v0, "BEGUN_AD"

    const-string v1, "Library is already initialized!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

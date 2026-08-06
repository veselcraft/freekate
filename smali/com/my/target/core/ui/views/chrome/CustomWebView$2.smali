.class final Lcom/my/target/core/ui/views/chrome/CustomWebView$2;
.super Landroid/webkit/WebChromeClient;
.source "CustomWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/core/ui/views/chrome/CustomWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/my/target/core/ui/views/chrome/CustomWebView;


# direct methods
.method constructor <init>(Lcom/my/target/core/ui/views/chrome/CustomWebView;)V
    .locals 0

    .prologue
    .line 271
    iput-object p1, p0, Lcom/my/target/core/ui/views/chrome/CustomWebView$2;->a:Lcom/my/target/core/ui/views/chrome/CustomWebView;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 4

    .prologue
    const/16 v3, 0x64

    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 283
    if-ge p2, v3, :cond_0

    iget-object v0, p0, Lcom/my/target/core/ui/views/chrome/CustomWebView$2;->a:Lcom/my/target/core/ui/views/chrome/CustomWebView;

    invoke-static {v0}, Lcom/my/target/core/ui/views/chrome/CustomWebView;->c(Lcom/my/target/core/ui/views/chrome/CustomWebView;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 285
    iget-object v0, p0, Lcom/my/target/core/ui/views/chrome/CustomWebView$2;->a:Lcom/my/target/core/ui/views/chrome/CustomWebView;

    invoke-static {v0}, Lcom/my/target/core/ui/views/chrome/CustomWebView;->c(Lcom/my/target/core/ui/views/chrome/CustomWebView;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 286
    iget-object v0, p0, Lcom/my/target/core/ui/views/chrome/CustomWebView$2;->a:Lcom/my/target/core/ui/views/chrome/CustomWebView;

    invoke-static {v0}, Lcom/my/target/core/ui/views/chrome/CustomWebView;->d(Lcom/my/target/core/ui/views/chrome/CustomWebView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/my/target/core/ui/views/chrome/CustomWebView$2;->a:Lcom/my/target/core/ui/views/chrome/CustomWebView;

    invoke-static {v0}, Lcom/my/target/core/ui/views/chrome/CustomWebView;->c(Lcom/my/target/core/ui/views/chrome/CustomWebView;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 289
    if-lt p2, v3, :cond_1

    .line 291
    iget-object v0, p0, Lcom/my/target/core/ui/views/chrome/CustomWebView$2;->a:Lcom/my/target/core/ui/views/chrome/CustomWebView;

    invoke-static {v0}, Lcom/my/target/core/ui/views/chrome/CustomWebView;->c(Lcom/my/target/core/ui/views/chrome/CustomWebView;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 292
    iget-object v0, p0, Lcom/my/target/core/ui/views/chrome/CustomWebView$2;->a:Lcom/my/target/core/ui/views/chrome/CustomWebView;

    invoke-static {v0}, Lcom/my/target/core/ui/views/chrome/CustomWebView;->d(Lcom/my/target/core/ui/views/chrome/CustomWebView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 294
    :cond_1
    return-void
.end method

.method public final onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 275
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 276
    iget-object v0, p0, Lcom/my/target/core/ui/views/chrome/CustomWebView$2;->a:Lcom/my/target/core/ui/views/chrome/CustomWebView;

    invoke-static {v0}, Lcom/my/target/core/ui/views/chrome/CustomWebView;->b(Lcom/my/target/core/ui/views/chrome/CustomWebView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    iget-object v0, p0, Lcom/my/target/core/ui/views/chrome/CustomWebView$2;->a:Lcom/my/target/core/ui/views/chrome/CustomWebView;

    invoke-static {v0}, Lcom/my/target/core/ui/views/chrome/CustomWebView;->b(Lcom/my/target/core/ui/views/chrome/CustomWebView;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 278
    return-void
.end method

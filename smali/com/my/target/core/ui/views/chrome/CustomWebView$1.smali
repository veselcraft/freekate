.class final Lcom/my/target/core/ui/views/chrome/CustomWebView$1;
.super Landroid/webkit/WebViewClient;
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
    .line 259
    iput-object p1, p0, Lcom/my/target/core/ui/views/chrome/CustomWebView$1;->a:Lcom/my/target/core/ui/views/chrome/CustomWebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 264
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Lcom/my/target/core/ui/views/chrome/CustomWebView$1;->a:Lcom/my/target/core/ui/views/chrome/CustomWebView;

    invoke-static {v0}, Lcom/my/target/core/ui/views/chrome/CustomWebView;->a(Lcom/my/target/core/ui/views/chrome/CustomWebView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {p2}, Lcom/my/target/core/ui/views/chrome/CustomWebView;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    const/4 v0, 0x1

    return v0
.end method

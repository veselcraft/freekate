.class final Lcom/my/target/core/ui/views/chrome/CustomWebView$4;
.super Ljava/lang/Object;
.source "CustomWebView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 310
    iput-object p1, p0, Lcom/my/target/core/ui/views/chrome/CustomWebView$4;->a:Lcom/my/target/core/ui/views/chrome/CustomWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 314
    iget-object v0, p0, Lcom/my/target/core/ui/views/chrome/CustomWebView$4;->a:Lcom/my/target/core/ui/views/chrome/CustomWebView;

    invoke-static {v0}, Lcom/my/target/core/ui/views/chrome/CustomWebView;->f(Lcom/my/target/core/ui/views/chrome/CustomWebView;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 315
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 317
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 318
    iget-object v0, p0, Lcom/my/target/core/ui/views/chrome/CustomWebView$4;->a:Lcom/my/target/core/ui/views/chrome/CustomWebView;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/chrome/CustomWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 320
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/my/target/core/ui/views/chrome/CustomWebView$4;->a:Lcom/my/target/core/ui/views/chrome/CustomWebView;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/chrome/CustomWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 324
    :cond_1
    return-void
.end method

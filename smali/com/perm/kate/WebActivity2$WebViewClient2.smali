.class Lcom/perm/kate/WebActivity2$WebViewClient2;
.super Landroid/webkit/WebViewClient;
.source "WebActivity2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/WebActivity2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WebViewClient2"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/WebActivity2;


# direct methods
.method constructor <init>(Lcom/perm/kate/WebActivity2;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/perm/kate/WebActivity2$WebViewClient2;->this$0:Lcom/perm/kate/WebActivity2;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 70
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 71
    iget-object p2, p0, Lcom/perm/kate/WebActivity2$WebViewClient2;->this$0:Lcom/perm/kate/WebActivity2;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 72
    iget-object p2, p0, Lcom/perm/kate/WebActivity2$WebViewClient2;->this$0:Lcom/perm/kate/WebActivity2;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/perm/kate/BaseActivity;->setHeaderTitle(Ljava/lang/String;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 64
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 65
    iget-object p1, p0, Lcom/perm/kate/WebActivity2$WebViewClient2;->this$0:Lcom/perm/kate/WebActivity2;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 78
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object p1, p0, Lcom/perm/kate/WebActivity2$WebViewClient2;->this$0:Lcom/perm/kate/WebActivity2;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void
.end method

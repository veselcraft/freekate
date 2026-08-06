.class Lcom/perm/kate/LoginActivity$FacebookWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/LoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FacebookWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/LoginActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/LoginActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/LoginActivity;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/perm/kate/LoginActivity$FacebookWebViewClient;->this$0:Lcom/perm/kate/LoginActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 105
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/perm/kate/LoginActivity$FacebookWebViewClient;->this$0:Lcom/perm/kate/LoginActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/LoginActivity;->showProgressBar(Z)V

    .line 107
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 98
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 99
    iget-object v0, p0, Lcom/perm/kate/LoginActivity$FacebookWebViewClient;->this$0:Lcom/perm/kate/LoginActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/perm/kate/LoginActivity;->showProgressBar(Z)V

    .line 100
    iget-object v0, p0, Lcom/perm/kate/LoginActivity$FacebookWebViewClient;->this$0:Lcom/perm/kate/LoginActivity;

    invoke-static {v0, p2}, Lcom/perm/kate/LoginActivity;->access$000(Lcom/perm/kate/LoginActivity;Ljava/lang/String;)V

    .line 101
    return-void
.end method

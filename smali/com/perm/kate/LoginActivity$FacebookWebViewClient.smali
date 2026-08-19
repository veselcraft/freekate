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

    .line 98
    iput-object p1, p0, Lcom/perm/kate/LoginActivity$FacebookWebViewClient;->this$0:Lcom/perm/kate/LoginActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 108
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 109
    iget-object p1, p0, Lcom/perm/kate/LoginActivity$FacebookWebViewClient;->this$0:Lcom/perm/kate/LoginActivity;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 101
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 102
    iget-object p1, p0, Lcom/perm/kate/LoginActivity$FacebookWebViewClient;->this$0:Lcom/perm/kate/LoginActivity;

    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 103
    iget-object p1, p0, Lcom/perm/kate/LoginActivity$FacebookWebViewClient;->this$0:Lcom/perm/kate/LoginActivity;

    invoke-static {p1, p2}, Lcom/perm/kate/LoginActivity;->access$000(Lcom/perm/kate/LoginActivity;Ljava/lang/String;)V

    return-void
.end method

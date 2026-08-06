.class Lcom/perm/kate/WebActivity$GifWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "WebActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/WebActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GifWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/WebActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/WebActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/WebActivity;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/perm/kate/WebActivity$GifWebViewClient;->this$0:Lcom/perm/kate/WebActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 138
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/perm/kate/WebActivity$GifWebViewClient;->this$0:Lcom/perm/kate/WebActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/WebActivity;->showProgressBar(Z)V

    .line 140
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 132
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 133
    iget-object v0, p0, Lcom/perm/kate/WebActivity$GifWebViewClient;->this$0:Lcom/perm/kate/WebActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/perm/kate/WebActivity;->showProgressBar(Z)V

    .line 134
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 145
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/perm/kate/WebActivity$GifWebViewClient;->this$0:Lcom/perm/kate/WebActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/WebActivity;->showProgressBar(Z)V

    .line 147
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 10
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 151
    const-string v0, "Kate.WebActivity"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    const-string v0, "?api_view="

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    :cond_0
    :goto_0
    return v6

    .line 157
    :cond_1
    invoke-static {p2}, Lcom/perm/kate/links/VkLinkParser;->parse(Ljava/lang/String;)Lcom/perm/kate/links/VkLink;

    move-result-object v7

    .line 158
    .local v7, "link":Lcom/perm/kate/links/VkLink;
    if-eqz v7, :cond_0

    .line 160
    iget-object v0, v7, Lcom/perm/kate/links/VkLink;->type:Lcom/perm/kate/links/VkLinkType;

    sget-object v1, Lcom/perm/kate/links/VkLinkType;->PAGE:Lcom/perm/kate/links/VkLinkType;

    if-ne v0, v1, :cond_4

    iget-object v0, v7, Lcom/perm/kate/links/VkLink;->owner_id:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, v7, Lcom/perm/kate/links/VkLink;->id:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, v7, Lcom/perm/kate/links/VkLink;->domain:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 162
    :cond_2
    iget-object v0, v7, Lcom/perm/kate/links/VkLink;->domain:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 163
    iget-object v1, p0, Lcom/perm/kate/WebActivity$GifWebViewClient;->this$0:Lcom/perm/kate/WebActivity;

    iget-object v0, v7, Lcom/perm/kate/links/VkLink;->owner_id:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iget-object v5, v7, Lcom/perm/kate/links/VkLink;->domain:Ljava/lang/String;

    invoke-static/range {v1 .. v6}, Lcom/perm/kate/WebActivity;->access$200(Lcom/perm/kate/WebActivity;JLjava/lang/Long;Ljava/lang/String;Z)V

    .line 166
    :goto_1
    const/4 v6, 0x1

    goto :goto_0

    .line 165
    :cond_3
    iget-object v0, p0, Lcom/perm/kate/WebActivity$GifWebViewClient;->this$0:Lcom/perm/kate/WebActivity;

    iget-object v1, v7, Lcom/perm/kate/links/VkLink;->owner_id:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iget-object v3, v7, Lcom/perm/kate/links/VkLink;->id:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move v5, v6

    invoke-static/range {v0 .. v5}, Lcom/perm/kate/WebActivity;->access$200(Lcom/perm/kate/WebActivity;JLjava/lang/Long;Ljava/lang/String;Z)V

    goto :goto_1

    .line 168
    :cond_4
    iget-object v0, p0, Lcom/perm/kate/WebActivity$GifWebViewClient;->this$0:Lcom/perm/kate/WebActivity;

    invoke-static {p2, v0}, Lcom/perm/kate/Helper;->openVK_COMlink(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v6

    goto :goto_0
.end method

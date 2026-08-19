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

    .line 133
    iput-object p1, p0, Lcom/perm/kate/WebActivity$GifWebViewClient;->this$0:Lcom/perm/kate/WebActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 142
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 143
    iget-object p1, p0, Lcom/perm/kate/WebActivity$GifWebViewClient;->this$0:Lcom/perm/kate/WebActivity;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 136
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 137
    iget-object p1, p0, Lcom/perm/kate/WebActivity$GifWebViewClient;->this$0:Lcom/perm/kate/WebActivity;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 149
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object p1, p0, Lcom/perm/kate/WebActivity$GifWebViewClient;->this$0:Lcom/perm/kate/WebActivity;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 13

    const-string p1, "Kate.WebActivity"

    .line 155
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "?api_view="

    .line 158
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return v0

    .line 161
    :cond_0
    invoke-static {p2}, Lcom/perm/kate/links/VkLinkParser;->parse(Ljava/lang/String;)Lcom/perm/kate/links/VkLink;

    move-result-object p1

    if-nez p1, :cond_1

    return v0

    .line 164
    :cond_1
    iget-object v0, p1, Lcom/perm/kate/links/VkLink;->type:Lcom/perm/kate/links/VkLinkType;

    sget-object v1, Lcom/perm/kate/links/VkLinkType;->PAGE:Lcom/perm/kate/links/VkLinkType;

    if-ne v0, v1, :cond_4

    iget-object v0, p1, Lcom/perm/kate/links/VkLink;->owner_id:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v1, p1, Lcom/perm/kate/links/VkLink;->id:Ljava/lang/String;

    if-nez v1, :cond_2

    iget-object v1, p1, Lcom/perm/kate/links/VkLink;->domain:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 166
    :cond_2
    iget-object p2, p1, Lcom/perm/kate/links/VkLink;->domain:Ljava/lang/String;

    if-eqz p2, :cond_3

    .line 167
    iget-object v1, p0, Lcom/perm/kate/WebActivity$GifWebViewClient;->this$0:Lcom/perm/kate/WebActivity;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const/4 v4, 0x0

    iget-object v5, p1, Lcom/perm/kate/links/VkLink;->domain:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/perm/kate/WebActivity;->access$200(Lcom/perm/kate/WebActivity;JLjava/lang/Long;Ljava/lang/String;Z)V

    goto :goto_0

    .line 169
    :cond_3
    iget-object v7, p0, Lcom/perm/kate/WebActivity$GifWebViewClient;->this$0:Lcom/perm/kate/WebActivity;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iget-object p1, p1, Lcom/perm/kate/links/VkLink;->id:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Lcom/perm/kate/WebActivity;->access$200(Lcom/perm/kate/WebActivity;JLjava/lang/Long;Ljava/lang/String;Z)V

    :goto_0
    const/4 p1, 0x1

    return p1

    .line 172
    :cond_4
    iget-object p1, p0, Lcom/perm/kate/WebActivity$GifWebViewClient;->this$0:Lcom/perm/kate/WebActivity;

    invoke-static {p2, p1}, Lcom/perm/kate/Helper;->openVK_COMlink(Ljava/lang/String;Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.class public Lcom/perm/kate/WebActivity;
.super Lcom/perm/kate/BaseActivity;
.source "WebActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perm/kate/WebActivity$GifWebViewClient;
    }
.end annotation


# instance fields
.field private access_key:Ljava/lang/String;

.field private document_id:Ljava/lang/Long;

.field private owner_id:Ljava/lang/Long;

.field private title:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private web_view:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/perm/kate/WebActivity;->url:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/WebActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/WebActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/perm/kate/WebActivity;->loadPageByUrl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/WebActivity;)Landroid/webkit/WebView;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/WebActivity;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/perm/kate/WebActivity;->web_view:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/perm/kate/WebActivity;JLjava/lang/Long;Ljava/lang/String;Z)V
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/WebActivity;
    .param p1, "x1"    # J
    .param p3, "x2"    # Ljava/lang/Long;
    .param p4, "x3"    # Ljava/lang/String;
    .param p5, "x4"    # Z

    .prologue
    .line 18
    invoke-direct/range {p0 .. p5}, Lcom/perm/kate/WebActivity;->getPageUrl(JLjava/lang/Long;Ljava/lang/String;Z)V

    return-void
.end method

.method private getPageUrl(JLjava/lang/Long;Ljava/lang/String;Z)V
    .locals 9
    .param p1, "group_id"    # J
    .param p3, "page_id"    # Ljava/lang/Long;
    .param p4, "page_title"    # Ljava/lang/String;
    .param p5, "show_progress"    # Z

    .prologue
    .line 93
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-nez v0, :cond_0

    .line 116
    :goto_0
    return-void

    .line 95
    :cond_0
    new-instance v6, Lcom/perm/kate/WebActivity$1;

    invoke-direct {v6, p0, p0, p5}, Lcom/perm/kate/WebActivity$1;-><init>(Lcom/perm/kate/WebActivity;Landroid/app/Activity;Z)V

    .line 108
    .local v6, "download_page_callback":Lcom/perm/kate/session/Callback;
    if-eqz p5, :cond_1

    .line 109
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/perm/kate/WebActivity;->showProgressBar(Z)V

    .line 110
    :cond_1
    new-instance v7, Ljava/lang/Thread;

    new-instance v0, Lcom/perm/kate/WebActivity$2;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/perm/kate/WebActivity$2;-><init>(Lcom/perm/kate/WebActivity;JLjava/lang/Long;Ljava/lang/String;Lcom/perm/kate/session/Callback;)V

    invoke-direct {v7, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 115
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private loadPageByUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "page_url"    # Ljava/lang/String;

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/perm/kate/WebActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/perm/kate/WebActivity;->web_view:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    new-instance v0, Lcom/perm/kate/WebActivity$3;

    invoke-direct {v0, p0, p1}, Lcom/perm/kate/WebActivity$3;-><init>(Lcom/perm/kate/WebActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/perm/kate/WebActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method


# virtual methods
.method protected fillMenuItems(Landroid/view/Menu;)Z
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 185
    const v0, 0x7f070203

    invoke-interface {p1, v4, v4, v4, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 186
    iget-object v0, p0, Lcom/perm/kate/WebActivity;->document_id:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 187
    const v0, 0x7f070023

    invoke-interface {p1, v4, v5, v4, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 188
    :cond_0
    const/4 v0, 0x2

    const v1, 0x7f07009e

    invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 189
    return v5
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 32
    :try_start_0
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    const v1, 0x7f030122

    invoke-virtual {p0, v1}, Lcom/perm/kate/WebActivity;->setContentView(I)V

    .line 34
    invoke-virtual {p0}, Lcom/perm/kate/WebActivity;->setupMenuButton()V

    .line 35
    invoke-virtual {p0}, Lcom/perm/kate/WebActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.perm.kate.title"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, "_title":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 37
    iput-object v0, p0, Lcom/perm/kate/WebActivity;->title:Ljava/lang/String;

    .line 38
    :cond_0
    iget-object v1, p0, Lcom/perm/kate/WebActivity;->title:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 39
    const v1, 0x7f070494

    invoke-virtual {p0, v1}, Lcom/perm/kate/WebActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/perm/kate/WebActivity;->title:Ljava/lang/String;

    .line 40
    :cond_1
    iget-object v1, p0, Lcom/perm/kate/WebActivity;->title:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/perm/kate/WebActivity;->setHeaderTitle(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p0}, Lcom/perm/kate/WebActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.perm.kate.url"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/perm/kate/WebActivity;->url:Ljava/lang/String;

    .line 42
    iget-object v1, p0, Lcom/perm/kate/WebActivity;->url:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/perm/kate/WebActivity;->url:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 43
    :cond_2
    invoke-virtual {p0}, Lcom/perm/kate/WebActivity;->finish()V

    .line 90
    .end local v0    # "_title":Ljava/lang/String;
    :goto_0
    return-void

    .line 46
    .restart local v0    # "_title":Ljava/lang/String;
    :cond_3
    iget-object v1, p0, Lcom/perm/kate/WebActivity;->url:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/WebActivity;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/perm/kate/WebActivity;->url:Ljava/lang/String;

    .line 48
    :cond_4
    invoke-virtual {p0}, Lcom/perm/kate/WebActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "document_id"

    const-wide/16 v10, 0x0

    invoke-virtual {v1, v2, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/perm/kate/WebActivity;->document_id:Ljava/lang/Long;

    .line 49
    invoke-virtual {p0}, Lcom/perm/kate/WebActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "owner_id"

    const-wide/16 v10, 0x0

    invoke-virtual {v1, v2, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/perm/kate/WebActivity;->owner_id:Ljava/lang/Long;

    .line 50
    invoke-virtual {p0}, Lcom/perm/kate/WebActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "access_key"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/perm/kate/WebActivity;->access_key:Ljava/lang/String;

    .line 51
    const v1, 0x7f0e036b

    invoke-virtual {p0, v1}, Lcom/perm/kate/WebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    iput-object v1, p0, Lcom/perm/kate/WebActivity;->web_view:Landroid/webkit/WebView;

    .line 52
    iget-object v1, p0, Lcom/perm/kate/WebActivity;->web_view:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 53
    iget-object v1, p0, Lcom/perm/kate/WebActivity;->web_view:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 54
    iget-object v1, p0, Lcom/perm/kate/WebActivity;->web_view:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const-string v2, "Android"

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 56
    iget-object v1, p0, Lcom/perm/kate/WebActivity;->web_view:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 58
    iget-object v1, p0, Lcom/perm/kate/WebActivity;->web_view:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 59
    iget-object v1, p0, Lcom/perm/kate/WebActivity;->web_view:Landroid/webkit/WebView;

    new-instance v2, Lcom/perm/kate/WebActivity$GifWebViewClient;

    invoke-direct {v2, p0}, Lcom/perm/kate/WebActivity$GifWebViewClient;-><init>(Lcom/perm/kate/WebActivity;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 61
    const/4 v4, 0x0

    .line 62
    .local v4, "page_id":Ljava/lang/Long;
    const/4 v5, 0x0

    .line 63
    .local v5, "page_title":Ljava/lang/String;
    iget-object v1, p0, Lcom/perm/kate/WebActivity;->url:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 65
    iget-object v1, p0, Lcom/perm/kate/WebActivity;->url:Ljava/lang/String;

    invoke-static {v1}, Lcom/perm/kate/links/VkLinkParser;->parse(Ljava/lang/String;)Lcom/perm/kate/links/VkLink;

    move-result-object v7

    .line 66
    .local v7, "link":Lcom/perm/kate/links/VkLink;
    if-eqz v7, :cond_6

    iget-object v1, v7, Lcom/perm/kate/links/VkLink;->type:Lcom/perm/kate/links/VkLinkType;

    sget-object v2, Lcom/perm/kate/links/VkLinkType;->PAGE:Lcom/perm/kate/links/VkLinkType;

    if-ne v1, v2, :cond_6

    iget-object v1, v7, Lcom/perm/kate/links/VkLink;->owner_id:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, v7, Lcom/perm/kate/links/VkLink;->id:Ljava/lang/String;

    if-nez v1, :cond_5

    iget-object v1, v7, Lcom/perm/kate/links/VkLink;->domain:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 68
    :cond_5
    iget-object v1, v7, Lcom/perm/kate/links/VkLink;->owner_id:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/perm/kate/WebActivity;->owner_id:Ljava/lang/Long;

    .line 69
    iget-object v1, v7, Lcom/perm/kate/links/VkLink;->domain:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 70
    iget-object v5, v7, Lcom/perm/kate/links/VkLink;->domain:Ljava/lang/String;

    .line 75
    .end local v7    # "link":Lcom/perm/kate/links/VkLink;
    :cond_6
    :goto_1
    iget-object v1, p0, Lcom/perm/kate/WebActivity;->owner_id:Ljava/lang/Long;

    if-eqz v1, :cond_9

    if-nez v4, :cond_7

    if-eqz v5, :cond_9

    .line 76
    :cond_7
    iget-object v1, p0, Lcom/perm/kate/WebActivity;->owner_id:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/4 v6, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/perm/kate/WebActivity;->getPageUrl(JLjava/lang/Long;Ljava/lang/String;Z)V

    .line 79
    :goto_2
    const-string v1, "Kate.WebActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/perm/kate/WebActivity;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v1, p0, Lcom/perm/kate/WebActivity;->web_view:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->resumeTimers()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 85
    .end local v0    # "_title":Ljava/lang/String;
    .end local v4    # "page_id":Ljava/lang/Long;
    .end local v5    # "page_title":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 87
    .local v8, "th":Ljava/lang/Throwable;
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    .line 88
    iget-object v1, p0, Lcom/perm/kate/WebActivity;->url:Ljava/lang/String;

    invoke-static {v8, v1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 72
    .end local v8    # "th":Ljava/lang/Throwable;
    .restart local v0    # "_title":Ljava/lang/String;
    .restart local v4    # "page_id":Ljava/lang/Long;
    .restart local v5    # "page_title":Ljava/lang/String;
    .restart local v7    # "link":Lcom/perm/kate/links/VkLink;
    :cond_8
    :try_start_1
    iget-object v1, v7, Lcom/perm/kate/links/VkLink;->id:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    goto :goto_1

    .line 78
    .end local v7    # "link":Lcom/perm/kate/links/VkLink;
    :cond_9
    iget-object v1, p0, Lcom/perm/kate/WebActivity;->web_view:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/perm/kate/WebActivity;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 174
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 175
    invoke-virtual {p0, p1}, Lcom/perm/kate/WebActivity;->fillMenuItems(Landroid/view/Menu;)Z

    .line 176
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 222
    :try_start_0
    iget-object v1, p0, Lcom/perm/kate/WebActivity;->web_view:Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    .line 232
    iget-object v1, p0, Lcom/perm/kate/WebActivity;->web_view:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 235
    iget-object v1, p0, Lcom/perm/kate/WebActivity;->web_view:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->destroy()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    :cond_0
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/perm/kate/WebActivity;->web_view:Landroid/webkit/WebView;

    .line 242
    invoke-super {p0}, Lcom/perm/kate/BaseActivity;->onDestroy()V

    .line 243
    return-void

    .line 237
    :catch_0
    move-exception v0

    .line 238
    .local v0, "th":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 239
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 210
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/perm/kate/WebActivity;->web_view:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/perm/kate/WebActivity;->web_view:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/perm/kate/WebActivity;->web_view:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 213
    const/4 v0, 0x0

    .line 216
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/perm/kate/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v6, 0x1

    .line 194
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 205
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 196
    :pswitch_0
    iget-object v0, p0, Lcom/perm/kate/WebActivity;->url:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/perm/kate/Helper;->openUrlInBrowser(Ljava/lang/String;Landroid/content/Context;)V

    move v0, v6

    .line 197
    goto :goto_0

    .line 199
    :pswitch_1
    iget-object v0, p0, Lcom/perm/kate/WebActivity;->owner_id:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/perm/kate/WebActivity;->document_id:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, p0, Lcom/perm/kate/WebActivity;->access_key:Ljava/lang/String;

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lcom/perm/kate/GifViewActivity;->addToMyDocs(JJLjava/lang/String;Lcom/perm/kate/BaseActivity;)V

    move v0, v6

    .line 200
    goto :goto_0

    .line 202
    :pswitch_2
    invoke-virtual {p0}, Lcom/perm/kate/WebActivity;->finish()V

    move v0, v6

    .line 203
    goto :goto_0

    .line 194
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

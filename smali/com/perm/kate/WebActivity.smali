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

    .line 19
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/perm/kate/WebActivity;->url:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/WebActivity;Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/perm/kate/WebActivity;->loadPageByUrl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/WebActivity;)Landroid/webkit/WebView;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/perm/kate/WebActivity;->web_view:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/perm/kate/WebActivity;JLjava/lang/Long;Ljava/lang/String;Z)V
    .locals 0

    .line 19
    invoke-direct/range {p0 .. p5}, Lcom/perm/kate/WebActivity;->getPageUrl(JLjava/lang/Long;Ljava/lang/String;Z)V

    return-void
.end method

.method private getPageUrl(JLjava/lang/Long;Ljava/lang/String;Z)V
    .locals 8

    .line 97
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-nez v0, :cond_0

    return-void

    .line 99
    :cond_0
    new-instance v7, Lcom/perm/kate/WebActivity$1;

    invoke-direct {v7, p0, p0, p5}, Lcom/perm/kate/WebActivity$1;-><init>(Lcom/perm/kate/WebActivity;Landroid/app/Activity;Z)V

    if-eqz p5, :cond_1

    const/4 p5, 0x1

    .line 113
    invoke-virtual {p0, p5}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 114
    :cond_1
    new-instance p5, Ljava/lang/Thread;

    new-instance v0, Lcom/perm/kate/WebActivity$2;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/perm/kate/WebActivity$2;-><init>(Lcom/perm/kate/WebActivity;JLjava/lang/Long;Ljava/lang/String;Lcom/perm/kate/session/Callback;)V

    invoke-direct {p5, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 119
    invoke-virtual {p5}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private loadPageByUrl(Ljava/lang/String;)V
    .locals 1

    .line 123
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/perm/kate/WebActivity;->web_view:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 125
    :cond_0
    new-instance v0, Lcom/perm/kate/WebActivity$3;

    invoke-direct {v0, p0, p1}, Lcom/perm/kate/WebActivity$3;-><init>(Lcom/perm/kate/WebActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected fillMenuItems(Landroid/view/Menu;)Z
    .locals 7

    const/4 v0, 0x0

    const v1, 0x7f0f025d

    .line 189
    invoke-interface {p1, v0, v0, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 190
    iget-object v1, p0, Lcom/perm/kate/WebActivity;->document_id:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    cmp-long v6, v1, v4

    if-eqz v6, :cond_0

    const v1, 0x7f0f003b

    .line 191
    invoke-interface {p1, v0, v3, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    :cond_0
    const/4 v1, 0x2

    const v2, 0x7f0f00d8

    .line 192
    invoke-interface {p1, v0, v1, v0, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    return v3
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .line 33
    :try_start_0
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0142

    .line 34
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setContentView(I)V

    .line 35
    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->setupMenuButton()V

    .line 36
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.perm.kate.title"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 38
    iput-object p1, p0, Lcom/perm/kate/WebActivity;->title:Ljava/lang/String;

    .line 39
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/WebActivity;->title:Ljava/lang/String;

    if-nez p1, :cond_1

    const p1, 0x7f0f0521

    .line 40
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/WebActivity;->title:Ljava/lang/String;

    .line 41
    :cond_1
    iget-object p1, p0, Lcom/perm/kate/WebActivity;->title:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setHeaderTitle(Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.perm.kate.url"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/WebActivity;->url:Ljava/lang/String;

    if-eqz p1, :cond_9

    .line 43
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_2

    .line 47
    :cond_2
    iget-object p1, p0, Lcom/perm/kate/WebActivity;->url:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 48
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "http://"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/perm/kate/WebActivity;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/WebActivity;->url:Ljava/lang/String;

    .line 49
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "document_id"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/WebActivity;->document_id:Ljava/lang/Long;

    .line 50
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "owner_id"

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/WebActivity;->owner_id:Ljava/lang/Long;

    .line 51
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "access_key"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/WebActivity;->access_key:Ljava/lang/String;

    const p1, 0x7f09041a

    .line 52
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    iput-object p1, p0, Lcom/perm/kate/WebActivity;->web_view:Landroid/webkit/WebView;

    .line 53
    invoke-static {p1}, Lcom/perm/utils/ProxyManager;->setProxyIfRequired(Landroid/webkit/WebView;)V

    .line 54
    iget-object p1, p0, Lcom/perm/kate/WebActivity;->web_view:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 55
    iget-object p1, p0, Lcom/perm/kate/WebActivity;->web_view:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 60
    iget-object p1, p0, Lcom/perm/kate/WebActivity;->web_view:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 62
    iget-object p1, p0, Lcom/perm/kate/WebActivity;->web_view:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 63
    iget-object p1, p0, Lcom/perm/kate/WebActivity;->web_view:Landroid/webkit/WebView;

    new-instance v0, Lcom/perm/kate/WebActivity$GifWebViewClient;

    invoke-direct {v0, p0}, Lcom/perm/kate/WebActivity$GifWebViewClient;-><init>(Lcom/perm/kate/WebActivity;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 67
    iget-object p1, p0, Lcom/perm/kate/WebActivity;->url:Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    .line 69
    invoke-static {p1}, Lcom/perm/kate/links/VkLinkParser;->parse(Ljava/lang/String;)Lcom/perm/kate/links/VkLink;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 70
    iget-object v1, p1, Lcom/perm/kate/links/VkLink;->type:Lcom/perm/kate/links/VkLinkType;

    sget-object v2, Lcom/perm/kate/links/VkLinkType;->PAGE:Lcom/perm/kate/links/VkLinkType;

    if-ne v1, v2, :cond_6

    iget-object v1, p1, Lcom/perm/kate/links/VkLink;->owner_id:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v2, p1, Lcom/perm/kate/links/VkLink;->id:Ljava/lang/String;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/perm/kate/links/VkLink;->domain:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 72
    :cond_4
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/perm/kate/WebActivity;->owner_id:Ljava/lang/Long;

    .line 73
    iget-object v1, p1, Lcom/perm/kate/links/VkLink;->domain:Ljava/lang/String;

    if-eqz v1, :cond_5

    move-object v3, v0

    move-object v4, v1

    goto :goto_0

    .line 76
    :cond_5
    iget-object p1, p1, Lcom/perm/kate/links/VkLink;->id:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    move-object v3, p1

    move-object v4, v0

    goto :goto_0

    :cond_6
    move-object v3, v0

    move-object v4, v3

    .line 79
    :goto_0
    iget-object p1, p0, Lcom/perm/kate/WebActivity;->owner_id:Ljava/lang/Long;

    if-eqz p1, :cond_8

    if-nez v3, :cond_7

    if-eqz v4, :cond_8

    .line 80
    :cond_7
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/WebActivity;->getPageUrl(JLjava/lang/Long;Ljava/lang/String;Z)V

    goto :goto_1

    .line 82
    :cond_8
    iget-object p1, p0, Lcom/perm/kate/WebActivity;->web_view:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/perm/kate/WebActivity;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :goto_1
    const-string p1, "Kate.WebActivity"

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/perm/kate/WebActivity;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 44
    :cond_9
    :goto_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 91
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 92
    iget-object v0, p0, Lcom/perm/kate/WebActivity;->url:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    .line 178
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 179
    invoke-virtual {p0, p1}, Lcom/perm/kate/WebActivity;->fillMenuItems(Landroid/view/Menu;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public onDestroy()V
    .locals 1

    .line 226
    :try_start_0
    iget-object v0, p0, Lcom/perm/kate/WebActivity;->web_view:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 236
    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 239
    iget-object v0, p0, Lcom/perm/kate/WebActivity;->web_view:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 242
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 243
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 245
    iput-object v0, p0, Lcom/perm/kate/WebActivity;->web_view:Landroid/webkit/WebView;

    .line 246
    invoke-super {p0}, Lcom/perm/kate/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/perm/kate/WebActivity;->web_view:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    iget-object p1, p0, Lcom/perm/kate/WebActivity;->web_view:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->goBack()V

    const/4 p1, 0x0

    return p1

    .line 220
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/perm/kate/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8

    .line 198
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 209
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 206
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return v1

    .line 203
    :cond_1
    iget-object p1, p0, Lcom/perm/kate/WebActivity;->owner_id:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object p1, p0, Lcom/perm/kate/WebActivity;->document_id:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v6, p0, Lcom/perm/kate/WebActivity;->access_key:Ljava/lang/String;

    move-object v7, p0

    invoke-static/range {v2 .. v7}, Lcom/perm/kate/GifViewActivity;->addToMyDocs(JJLjava/lang/String;Lcom/perm/kate/BaseActivity;)V

    return v1

    .line 200
    :cond_2
    iget-object p1, p0, Lcom/perm/kate/WebActivity;->url:Ljava/lang/String;

    invoke-static {p1, p0, v1}, Lcom/perm/kate/Helper;->openUrlInBrowser(Ljava/lang/String;Landroid/content/Context;Z)V

    return v1
.end method

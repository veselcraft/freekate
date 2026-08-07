.class public Lcom/perm/kate/LoginActivity;
.super Lcom/perm/kate/BaseActivity;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perm/kate/LoginActivity$FacebookWebViewClient;
    }
.end annotation


# instance fields
.field from_login:Z

.field group_id:J

.field handler:Landroid/os/Handler;

.field runnable:Ljava/lang/Runnable;

.field validation_mode:Z

.field webview:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/perm/kate/LoginActivity;->validation_mode:Z

    .line 84
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/LoginActivity;->handler:Landroid/os/Handler;

    .line 86
    new-instance v0, Lcom/perm/kate/LoginActivity$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/LoginActivity$1;-><init>(Lcom/perm/kate/LoginActivity;)V

    iput-object v0, p0, Lcom/perm/kate/LoginActivity;->runnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/LoginActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/LoginActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/perm/kate/LoginActivity;->parseUrl(Ljava/lang/String;)V

    return-void
.end method

.method private parseCookie()Ljava/lang/String;
    .locals 5

    .prologue
    .line 193
    :try_start_0
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    .line 194
    .local v1, "cookieManager":Landroid/webkit/CookieManager;
    const-string v4, "vk.com"

    invoke-virtual {v1, v4}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, "cookie":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 196
    const-string v4, "remixsid=(.*)"

    invoke-static {v0, v4}, Lcom/perm/utils/Utils;->extractPattern(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 203
    .end local v0    # "cookie":Ljava/lang/String;
    .end local v1    # "cookieManager":Landroid/webkit/CookieManager;
    :goto_0
    return-object v2

    .line 199
    :catch_0
    move-exception v3

    .line 200
    .local v3, "th":Ljava/lang/Throwable;
    invoke-static {v3}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 201
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 203
    .end local v3    # "th":Ljava/lang/Throwable;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static parseError(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 186
    const-string v1, "error=(.*?)&"

    invoke-static {p0, v1}, Lcom/perm/utils/Utils;->extractPattern(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, "error":Ljava/lang/String;
    const-string v1, "Kate.LoginActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    return-object v1
.end method

.method private parseUrl(Ljava/lang/String;)V
    .locals 10
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 112
    if-nez p1, :cond_1

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    :try_start_0
    sget-boolean v5, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v5, :cond_2

    .line 116
    const-string v5, "Kate.LoginActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "url="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p1}, Lcom/perm/utils/TokenHider;->hideAccessToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_2
    const/4 v3, 0x0

    .line 118
    .local v3, "result":Landroid/content/Intent;
    sget-object v5, Lcom/perm/kate/api/Auth;->redirect_url:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "/blank.html"

    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 121
    :cond_3
    const-string v5, "error="

    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "fail="

    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 122
    iget-wide v6, p0, Lcom/perm/kate/LoginActivity;->group_id:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_8

    .line 124
    iget-wide v6, p0, Lcom/perm/kate/LoginActivity;->group_id:J

    invoke-static {p1, v6, v7}, Lcom/perm/kate/api/Auth;->parseGroupRedirectUrl(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v4

    .line 125
    .local v4, "token":Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    .end local v3    # "result":Landroid/content/Intent;
    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 126
    .restart local v3    # "result":Landroid/content/Intent;
    const-string v5, "access_token"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    .end local v4    # "token":Ljava/lang/String;
    :cond_4
    :goto_1
    iget-boolean v5, p0, Lcom/perm/kate/LoginActivity;->validation_mode:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_5

    .line 140
    const/4 v1, 0x0

    .line 142
    .local v1, "auth":[Ljava/lang/String;
    :try_start_1
    invoke-static {p1}, Lcom/perm/kate/api/Auth;->parseRedirectUrl(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .line 147
    :goto_2
    if-eqz v1, :cond_5

    const/4 v5, 0x0

    :try_start_2
    aget-object v5, v1, v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 149
    iget-boolean v5, p0, Lcom/perm/kate/LoginActivity;->from_login:Z

    if-nez v5, :cond_9

    .line 150
    sget-object v5, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-eqz v5, :cond_5

    .line 151
    sget-object v5, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    const/4 v6, 0x0

    aget-object v6, v1, v6

    invoke-virtual {v5, v6}, Lcom/perm/kate/session/Session;->setAccessToken(Ljava/lang/String;)V
    # domain
    const/4 v5, 0x2

    aget-object v5, v1, v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    sget-object v5, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    const/4 v6, 0x2

    aget-object v6, v1, v6

    invoke-virtual {v5, v6}, Lcom/perm/kate/session/Session;->setDomain(Ljava/lang/String;)V
    # tls
    const/4 v5, 0x3

    aget-object v5, v1, v5

    const-string v6, "true"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_notls

    const/4 v6, 0x1
    goto :cont

    :cond_notls
    const/4 v6, 0x0

    :cont

    sget-object v5, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    #aget-object v6, v1, v6

    invoke-virtual {v5, v6}, Lcom/perm/kate/session/Session;->setTLS(Z)V

    .line 152
    sget-object v5, Lcom/perm/kate/KApplication;->accountManager:Lcom/perm/kate/account/AccountManager;

    invoke-virtual {v5}, Lcom/perm/kate/account/AccountManager;->saveAccounts()V

    .line 168
    .end local v1    # "auth":[Ljava/lang/String;
    :cond_5
    :goto_3
    const/4 v5, -0x1

    invoke-virtual {p0, v5, v3}, Lcom/perm/kate/LoginActivity;->setResult(ILandroid/content/Intent;)V

    .line 170
    :cond_6
    const-string v5, "error="

    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 171
    invoke-static {p1}, Lcom/perm/kate/LoginActivity;->parseError(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 172
    .restart local v1    # "auth":[Ljava/lang/String;
    new-instance v5, Ljava/lang/Exception;

    const/4 v6, 0x0

    aget-object v6, v1, v6

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x1

    aget-object v6, v1, v6

    invoke-static {v5, v6}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 174
    .end local v1    # "auth":[Ljava/lang/String;
    :cond_7
    iget-object v5, p0, Lcom/perm/kate/LoginActivity;->handler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/perm/kate/LoginActivity;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 175
    sget-object v5, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v5}, Lcom/perm/kate/notifications/LoginNotification;->cancel(Landroid/content/Context;)V

    .line 176
    invoke-virtual {p0}, Lcom/perm/kate/LoginActivity;->finish()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 178
    .end local v3    # "result":Landroid/content/Intent;
    :catch_0
    move-exception v2

    .line 179
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 180
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 128
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "result":Landroid/content/Intent;
    :cond_8
    :try_start_3
    iget-boolean v5, p0, Lcom/perm/kate/LoginActivity;->validation_mode:Z

    if-nez v5, :cond_4

    .line 129
    new-instance v0, Lcom/perm/kate/account/Account;

    invoke-direct {v0}, Lcom/perm/kate/account/Account;-><init>()V

    .line 130
    .local v0, "a":Lcom/perm/kate/account/Account;
    invoke-direct {p0}, Lcom/perm/kate/LoginActivity;->parseCookie()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/perm/kate/account/Account;->remixsid:Ljava/lang/String;

    .line 131
    invoke-static {p1}, Lcom/perm/kate/api/Auth;->parseRedirectUrl(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 132
    .restart local v1    # "auth":[Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v5, v1, v5

    iput-object v5, v0, Lcom/perm/kate/account/Account;->access_token:Ljava/lang/String;

    .line 133
    const/4 v5, 0x1

    aget-object v5, v1, v5

    iput-object v5, v0, Lcom/perm/kate/account/Account;->mid:Ljava/lang/String;

    const/4 v5, 0x2

    aget-object v5, v1, v5

    iput-object v5, v0, Lcom/perm/kate/account/Account;->instance_domain:Ljava/lang/String;

    const/4 v5, 0x3

    aget-object v5, v1, v5

    const-string v6, "true"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :no_tls_again

    const/4 v5, 0x1
    goto :tls_again

    :no_tls_again
    const/4 v5, 0x0

    :tls_again

    iput-boolean v5, v0, Lcom/perm/kate/account/Account;->use_tls:Z

    .line 134
    invoke-static {v0}, Lcom/perm/kate/KApplication;->addAccount(Lcom/perm/kate/account/Account;)V

    goto/16 :goto_1

    .line 156
    .end local v0    # "a":Lcom/perm/kate/account/Account;
    :cond_9
    new-instance v0, Lcom/perm/kate/account/Account;

    invoke-direct {v0}, Lcom/perm/kate/account/Account;-><init>()V

    .line 157
    .restart local v0    # "a":Lcom/perm/kate/account/Account;
    const/4 v5, 0x0

    aget-object v5, v1, v5

    iput-object v5, v0, Lcom/perm/kate/account/Account;->access_token:Ljava/lang/String;

    .line 158
    const/4 v5, 0x1

    aget-object v5, v1, v5

    iput-object v5, v0, Lcom/perm/kate/account/Account;->mid:Ljava/lang/String;

    const/4 v5, 0x2

    aget-object v5, v1, v5

    iput-object v5, v0, Lcom/perm/kate/account/Account;->instance_domain:Ljava/lang/String;

    const/4 v5, 0x3

    aget-object v5, v1, v5

    const-string v6, "true"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :no_tls_again2

    const/4 v5, 0x1
    goto :tls_again2

    :no_tls_again2
    const/4 v5, 0x0

    :tls_again2

    iput-boolean v5, v0, Lcom/perm/kate/account/Account;->use_tls:Z

    .line 159
    invoke-static {v0}, Lcom/perm/kate/KApplication;->addAccount(Lcom/perm/kate/account/Account;)V

    .line 162
    new-instance v3, Landroid/content/Intent;

    .end local v3    # "result":Landroid/content/Intent;
    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 163
    .restart local v3    # "result":Landroid/content/Intent;
    const-string v5, "account_created"

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    .line 143
    .end local v0    # "a":Lcom/perm/kate/account/Account;
    :catch_1
    move-exception v5

    goto/16 :goto_2
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const-wide/16 v8, 0x0

    .line 34
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const v4, 0x7f03009a

    invoke-virtual {p0, v4}, Lcom/perm/kate/LoginActivity;->setContentView(I)V

    .line 36
    invoke-virtual {p0}, Lcom/perm/kate/LoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "validation_uri"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 37
    .local v3, "validation_uri":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 38
    iput-boolean v6, p0, Lcom/perm/kate/LoginActivity;->validation_mode:Z

    .line 39
    :cond_0
    invoke-virtual {p0}, Lcom/perm/kate/LoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "from_login"

    invoke-virtual {v4, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/perm/kate/LoginActivity;->from_login:Z

    .line 40
    invoke-virtual {p0}, Lcom/perm/kate/LoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "group_id"

    invoke-virtual {v4, v5, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/perm/kate/LoginActivity;->group_id:J

    .line 42
    const v4, 0x7f0701c9

    invoke-virtual {p0, v4}, Lcom/perm/kate/LoginActivity;->setHeaderTitle(I)V

    .line 43
    iget-boolean v4, p0, Lcom/perm/kate/LoginActivity;->validation_mode:Z

    if-eqz v4, :cond_1

    .line 44
    const v4, 0x7f070503

    invoke-virtual {p0, v4}, Lcom/perm/kate/LoginActivity;->setHeaderTitle(I)V

    .line 45
    :cond_1
    const v4, 0x7f0e0207

    invoke-virtual {p0, v4}, Lcom/perm/kate/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/webkit/WebView;

    iput-object v4, p0, Lcom/perm/kate/LoginActivity;->webview:Landroid/webkit/WebView;

    .line 49
    iget-object v4, p0, Lcom/perm/kate/LoginActivity;->webview:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->resumeTimers()V

    .line 53
    iget-object v4, p0, Lcom/perm/kate/LoginActivity;->webview:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 54
    iget-object v4, p0, Lcom/perm/kate/LoginActivity;->webview:Landroid/webkit/WebView;

    invoke-virtual {v4, v6}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 57
    iget-object v4, p0, Lcom/perm/kate/LoginActivity;->webview:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 58
    iget-object v4, p0, Lcom/perm/kate/LoginActivity;->webview:Landroid/webkit/WebView;

    new-instance v5, Lcom/perm/kate/LoginActivity$FacebookWebViewClient;

    invoke-direct {v5, p0}, Lcom/perm/kate/LoginActivity$FacebookWebViewClient;-><init>(Lcom/perm/kate/LoginActivity;)V

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 61
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 63
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 64
    .local v0, "cookieManager":Landroid/webkit/CookieManager;
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 66
    iget-boolean v4, p0, Lcom/perm/kate/LoginActivity;->validation_mode:Z

    if-nez v4, :cond_5

    .line 67
    invoke-static {}, Lcom/perm/kate/api/Auth;->getSettings()Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, "settings":Ljava/lang/String;
    iget-wide v4, p0, Lcom/perm/kate/LoginActivity;->group_id:J

    cmp-long v4, v4, v8

    if-eqz v4, :cond_2

    .line 69
    const-string v1, "messages,photos,docs"

    .line 70
    :cond_2
    sget-object v4, Lcom/perm/kate/KateConstants;->API_ID:Ljava/lang/String;

    invoke-static {v4, v1}, Lcom/perm/kate/api/Auth;->getUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 71
    .local v2, "url":Ljava/lang/String;
    iget-wide v4, p0, Lcom/perm/kate/LoginActivity;->group_id:J

    cmp-long v4, v4, v8

    if-eqz v4, :cond_3

    .line 72
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&group_ids="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lcom/perm/kate/LoginActivity;->group_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 73
    :cond_3
    iget-object v4, p0, Lcom/perm/kate/LoginActivity;->webview:Landroid/webkit/WebView;

    invoke-virtual {v4, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 78
    .end local v1    # "settings":Ljava/lang/String;
    .end local v2    # "url":Ljava/lang/String;
    :goto_0
    iget-object v4, p0, Lcom/perm/kate/LoginActivity;->handler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/perm/kate/LoginActivity;->runnable:Ljava/lang/Runnable;

    const-wide/16 v6, 0x3e8

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 80
    iget-wide v4, p0, Lcom/perm/kate/LoginActivity;->group_id:J

    cmp-long v4, v4, v8

    if-eqz v4, :cond_4

    .line 81
    const v4, 0x7f0700c2

    invoke-virtual {p0, v4}, Lcom/perm/kate/LoginActivity;->displayToast(I)V

    .line 82
    :cond_4
    return-void

    .line 76
    :cond_5
    iget-object v4, p0, Lcom/perm/kate/LoginActivity;->webview:Landroid/webkit/WebView;

    invoke-virtual {v4, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/perm/kate/LoginActivity;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 209
    invoke-super {p0}, Lcom/perm/kate/BaseActivity;->onDestroy()V

    .line 210
    return-void
.end method

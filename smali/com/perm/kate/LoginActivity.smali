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

    .line 24
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcom/perm/kate/LoginActivity;->validation_mode:Z

    .line 87
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/LoginActivity;->handler:Landroid/os/Handler;

    .line 89
    new-instance v0, Lcom/perm/kate/LoginActivity$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/LoginActivity$1;-><init>(Lcom/perm/kate/LoginActivity;)V

    iput-object v0, p0, Lcom/perm/kate/LoginActivity;->runnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/LoginActivity;Ljava/lang/String;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/perm/kate/LoginActivity;->parseUrl(Ljava/lang/String;)V

    return-void
.end method

.method public static parseError(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    const-string v0, "error=(.*?)&"

    .line 188
    invoke-static {p0, v0}, Lcom/perm/utils/Utils;->extractPattern(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 189
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Kate.LoginActivity"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    aput-object p0, v1, v0

    return-object v1
.end method

.method private parseUrl(Ljava/lang/String;)V
    .locals 9

    const-string v0, "error="

    if-nez p1, :cond_0

    return-void

    .line 118
    :cond_0
    :try_start_0
    sget-boolean v1, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v1, :cond_1

    const-string v1, "Kate.LoginActivity"

    .line 119
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/perm/utils/TokenHider;->hideAccessToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_1
    const-string v1, "/blank.html"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 124
    :cond_2
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_7

    const-string v1, "fail="

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 125
    iget-wide v4, p0, Lcom/perm/kate/LoginActivity;->group_id:J

    const-wide/16 v6, 0x0

    const/4 v1, 0x0

    cmp-long v8, v4, v6

    if-eqz v8, :cond_3

    .line 127
    invoke-static {p1, v4, v5}, Lcom/perm/kate/api/Auth;->parseGroupRedirectUrl(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v4

    .line 128
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const-string v6, "access_token"

    .line 129
    invoke-virtual {v5, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 131
    :cond_3
    iget-boolean v4, p0, Lcom/perm/kate/LoginActivity;->validation_mode:Z

    if-nez v4, :cond_4

    .line 132
    new-instance v4, Lcom/perm/kate/account/Account;

    invoke-direct {v4}, Lcom/perm/kate/account/Account;-><init>()V

    .line 133
    invoke-static {p1}, Lcom/perm/kate/api/Auth;->parseRedirectUrl(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 134
    aget-object v6, v5, v3

    iput-object v6, v4, Lcom/perm/kate/account/Account;->access_token:Ljava/lang/String;

    .line 135
    aget-object v6, v5, v2

    iput-object v6, v4, Lcom/perm/kate/account/Account;->mid:Ljava/lang/String;

    const/4 v6, 0x2

    aget-object v6, v5, v6

    iput-object v6, v4, Lcom/perm/kate/account/Account;->instance_domain:Ljava/lang/String;

    const/4 v6, 0x3

    aget-object v6, v5, v6

    const-string v5, "true"

    invoke-static {v6, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    iput-boolean v6, v4, Lcom/perm/kate/account/Account;->use_tls:Z

    .line 136
    invoke-static {v4}, Lcom/perm/kate/KApplication;->addAccount(Lcom/perm/kate/account/Account;)V

    :cond_4
    move-object v5, v1

    .line 141
    :goto_0
    iget-boolean v4, p0, Lcom/perm/kate/LoginActivity;->validation_mode:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_6

    .line 144
    :try_start_1
    invoke-static {p1}, Lcom/perm/kate/api/Auth;->parseRedirectUrl(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    nop

    :goto_1
    if-eqz v1, :cond_6

    .line 149
    :try_start_2
    aget-object v4, v1, v3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 151
    iget-boolean v4, p0, Lcom/perm/kate/LoginActivity;->from_login:Z

    if-nez v4, :cond_5

    .line 152
    sget-object v4, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-eqz v4, :cond_6

    const/4 v6, 0x2

    aget-object v6, v1, v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_keep_domain

    invoke-virtual {v4, v6}, Lcom/perm/kate/session/Session;->setDomain(Ljava/lang/String;)V

    const/4 v6, 0x3

    aget-object v6, v1, v6

    const-string v7, "true"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    invoke-virtual {v4, v6}, Lcom/perm/kate/session/Session;->setTLS(Z)V

    :cond_keep_domain
    .line 153
    aget-object v1, v1, v3

    invoke-virtual {v4, v1}, Lcom/perm/kate/session/Session;->setAccessToken(Ljava/lang/String;)V

    .line 154
    sget-object v1, Lcom/perm/kate/KApplication;->accountManager:Lcom/perm/kate/account/AccountManager;

    invoke-virtual {v1}, Lcom/perm/kate/account/AccountManager;->saveAccounts()V

    goto :goto_2

    .line 158
    :cond_5
    new-instance v4, Lcom/perm/kate/account/Account;

    invoke-direct {v4}, Lcom/perm/kate/account/Account;-><init>()V

    .line 159
    aget-object v5, v1, v3

    iput-object v5, v4, Lcom/perm/kate/account/Account;->access_token:Ljava/lang/String;

    .line 160
    aget-object v5, v1, v2

    iput-object v5, v4, Lcom/perm/kate/account/Account;->mid:Ljava/lang/String;

    const/4 v6, 0x2

    aget-object v6, v1, v6

    iput-object v6, v4, Lcom/perm/kate/account/Account;->instance_domain:Ljava/lang/String;

    const/4 v6, 0x3

    aget-object v6, v1, v6

    const-string v7, "true"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    iput-boolean v6, v4, Lcom/perm/kate/account/Account;->use_tls:Z

    .line 161
    invoke-static {v4}, Lcom/perm/kate/KApplication;->addAccount(Lcom/perm/kate/account/Account;)V

    .line 164
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const-string v1, "account_created"

    .line 165
    invoke-virtual {v5, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_6
    :goto_2
    const/4 v1, -0x1

    .line 170
    invoke-virtual {p0, v1, v5}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 172
    :cond_7
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 173
    invoke-static {p1}, Lcom/perm/kate/LoginActivity;->parseError(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 174
    new-instance v0, Ljava/lang/Exception;

    aget-object v1, p1, v3

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    aget-object p1, p1, v2

    invoke-static {v0, p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 176
    :cond_8
    iget-object p1, p0, Lcom/perm/kate/LoginActivity;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/perm/kate/LoginActivity;->runnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 177
    sget-object p1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {p1}, Lcom/perm/kate/notifications/LoginNotification;->cancel(Landroid/content/Context;)V

    .line 178
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 181
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 182
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_9
    :goto_3
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .line 35
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c00a7

    .line 36
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setContentView(I)V

    .line 37
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "validation_uri"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 38
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 39
    iput-boolean v1, p0, Lcom/perm/kate/LoginActivity;->validation_mode:Z

    .line 40
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "from_login"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/perm/kate/LoginActivity;->from_login:Z

    .line 41
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "group_id"

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/perm/kate/LoginActivity;->group_id:J

    const v0, 0x7f0f0225

    .line 43
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseActivity;->setHeaderTitle(I)V

    .line 44
    iget-boolean v0, p0, Lcom/perm/kate/LoginActivity;->validation_mode:Z

    if-eqz v0, :cond_1

    const v0, 0x7f0f0588

    .line 45
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseActivity;->setHeaderTitle(I)V

    :cond_1
    const v0, 0x7f090128

    .line 46
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/perm/kate/LoginActivity;->webview:Landroid/webkit/WebView;

    .line 48
    invoke-static {v0}, Lcom/perm/utils/ProxyManager;->setProxyIfRequired(Landroid/webkit/WebView;)V

    .line 56
    iget-object v0, p0, Lcom/perm/kate/LoginActivity;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 57
    iget-object v0, p0, Lcom/perm/kate/LoginActivity;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 60
    iget-object v0, p0, Lcom/perm/kate/LoginActivity;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 61
    iget-object v0, p0, Lcom/perm/kate/LoginActivity;->webview:Landroid/webkit/WebView;

    new-instance v1, Lcom/perm/kate/LoginActivity$FacebookWebViewClient;

    invoke-direct {v1, p0}, Lcom/perm/kate/LoginActivity$FacebookWebViewClient;-><init>(Lcom/perm/kate/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 64
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 66
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 69
    iget-boolean v0, p0, Lcom/perm/kate/LoginActivity;->validation_mode:Z

    if-nez v0, :cond_4

    .line 70
    invoke-static {}, Lcom/perm/kate/api/Auth;->getSettings()Ljava/lang/String;

    move-result-object p1

    .line 71
    iget-wide v0, p0, Lcom/perm/kate/LoginActivity;->group_id:J

    cmp-long v2, v0, v4

    if-eqz v2, :cond_2

    const-string p1, "messages,photos,docs"

    .line 73
    :cond_2
    sget-object v0, Lcom/perm/kate/KateConstants;->API_ID:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/perm/kate/api/Auth;->getUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 74
    iget-wide v0, p0, Lcom/perm/kate/LoginActivity;->group_id:J

    cmp-long v2, v0, v4

    if-eqz v2, :cond_3

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&group_ids="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/perm/kate/LoginActivity;->group_id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 76
    :cond_3
    iget-object v0, p0, Lcom/perm/kate/LoginActivity;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 79
    :cond_4
    iget-object v0, p0, Lcom/perm/kate/LoginActivity;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 81
    :goto_0
    iget-object p1, p0, Lcom/perm/kate/LoginActivity;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/perm/kate/LoginActivity;->runnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 83
    iget-wide v0, p0, Lcom/perm/kate/LoginActivity;->group_id:J

    cmp-long p1, v0, v4

    if-eqz p1, :cond_5

    const p1, 0x7f0f010b

    .line 84
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->displayToast(I)V

    :cond_5
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 195
    iget-object v0, p0, Lcom/perm/kate/LoginActivity;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 196
    invoke-super {p0}, Lcom/perm/kate/BaseActivity;->onDestroy()V

    return-void
.end method

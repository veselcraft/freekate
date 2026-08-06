.class public Lcom/perm/kate/LoginActivity2;
.super Lcom/perm/kate/BaseActivity;
.source "LoginActivity2.java"


# instance fields
.field private final REQUEST_LOGIN:I

.field private final REQUEST_VALIDATION:I

.field private cantLoginListener:Landroid/view/View$OnClickListener;

.field private checkedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private instructionsClick:Landroid/content/DialogInterface$OnClickListener;

.field private listener:Landroid/view/View$OnClickListener;

.field login:Landroid/widget/EditText;

.field login1:Ljava/lang/String;

.field loginLogic:Lcom/perm/kate/api/LoginLogic;

.field loginView:Landroid/view/View;

.field pass:Landroid/widget/EditText;

.field password:Ljava/lang/String;

.field progressView:Landroid/view/View;

.field instance:Landroid/widget/EditText;

.field instanceDomain:Ljava/lang/String;

.field useTlsCheckBox:Landroid/widget/CheckBox;

.field use_tls:Z

.field private startReserveClick:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    .line 80
    new-instance v0, Lcom/perm/kate/LoginActivity2$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/LoginActivity2$1;-><init>(Lcom/perm/kate/LoginActivity2;)V

    iput-object v0, p0, Lcom/perm/kate/LoginActivity2;->listener:Landroid/view/View$OnClickListener;

    .line 213
    new-instance v0, Lcom/perm/kate/LoginActivity2$5;

    invoke-direct {v0, p0}, Lcom/perm/kate/LoginActivity2$5;-><init>(Lcom/perm/kate/LoginActivity2;)V

    iput-object v0, p0, Lcom/perm/kate/LoginActivity2;->checkedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 223
    new-instance v0, Lcom/perm/kate/LoginActivity2$6;

    invoke-direct {v0, p0}, Lcom/perm/kate/LoginActivity2$6;-><init>(Lcom/perm/kate/LoginActivity2;)V

    iput-object v0, p0, Lcom/perm/kate/LoginActivity2;->cantLoginListener:Landroid/view/View$OnClickListener;

    .line 230
    const/4 v0, 0x1

    iput v0, p0, Lcom/perm/kate/LoginActivity2;->REQUEST_LOGIN:I

    .line 231
    const/4 v0, 0x2

    iput v0, p0, Lcom/perm/kate/LoginActivity2;->REQUEST_VALIDATION:I

    .line 328
    new-instance v0, Lcom/perm/kate/LoginActivity2$10;

    invoke-direct {v0, p0}, Lcom/perm/kate/LoginActivity2$10;-><init>(Lcom/perm/kate/LoginActivity2;)V

    iput-object v0, p0, Lcom/perm/kate/LoginActivity2;->startReserveClick:Landroid/content/DialogInterface$OnClickListener;

    .line 353
    new-instance v0, Lcom/perm/kate/LoginActivity2$11;

    invoke-direct {v0, p0}, Lcom/perm/kate/LoginActivity2$11;-><init>(Lcom/perm/kate/LoginActivity2;)V

    iput-object v0, p0, Lcom/perm/kate/LoginActivity2;->instructionsClick:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/LoginActivity2;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/LoginActivity2;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/perm/kate/LoginActivity2;->logIn(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/LoginActivity2;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/LoginActivity2;
    .param p1, "x1"    # [Ljava/lang/Object;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/perm/kate/LoginActivity2;->done([Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/perm/kate/LoginActivity2;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/LoginActivity2;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/perm/kate/LoginActivity2;->showTimeDialogOnUiThread()V

    return-void
.end method

.method static synthetic access$300(Lcom/perm/kate/LoginActivity2;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/LoginActivity2;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/perm/kate/LoginActivity2;->showReserveLoginDialogOnUiThread()V

    return-void
.end method

.method static synthetic access$400(Lcom/perm/kate/LoginActivity2;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/LoginActivity2;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/perm/kate/LoginActivity2;->showReserveLoginDialog()V

    return-void
.end method

.method static synthetic access$500(Lcom/perm/kate/LoginActivity2;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/LoginActivity2;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/perm/kate/LoginActivity2;->startReserveLogin()V

    return-void
.end method

.method static synthetic access$600(Lcom/perm/kate/LoginActivity2;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/LoginActivity2;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/perm/kate/LoginActivity2;->reportUrlAvailabilityInThread()V

    return-void
.end method

.method static synthetic access$700(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-static {p0}, Lcom/perm/kate/LoginActivity2;->checkUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static checkUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 335
    const/4 v2, 0x0

    .line 337
    .local v2, "connection":Ljava/net/HttpURLConnection;
    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v2, v0

    .line 338
    const/16 v4, 0x7530

    invoke-virtual {v2, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 339
    const/16 v4, 0x7530

    invoke-virtual {v2, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 340
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 341
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 342
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 343
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 344
    .local v1, "code":I
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 348
    if-eqz v2, :cond_0

    .line 349
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 346
    .end local v1    # "code":I
    :cond_0
    :goto_0
    return-object v4

    .line 345
    :catch_0
    move-exception v3

    .line 346
    .local v3, "th":Ljava/lang/Throwable;
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 348
    if-eqz v2, :cond_0

    .line 349
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    .line 348
    .end local v3    # "th":Ljava/lang/Throwable;
    :catchall_0
    move-exception v4

    if-eqz v2, :cond_1

    .line 349
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    throw v4
.end method

.method private done([Ljava/lang/Object;)V
    .locals 2
    .param p1, "data"    # [Ljava/lang/Object;

    .prologue
    .line 144
    new-instance v0, Lcom/perm/kate/account/Account;

    invoke-direct {v0}, Lcom/perm/kate/account/Account;-><init>()V

    .line 145
    .local v0, "a":Lcom/perm/kate/account/Account;
    const/4 v1, 0x2

    aget-object v1, p1, v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/perm/kate/account/Account;->mid:Ljava/lang/String;

    .line 146
    const/4 v1, 0x1

    aget-object v1, p1, v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/perm/kate/account/Account;->access_token:Ljava/lang/String;

    .line 147
    const/4 v1, 0x3

    aget-object v1, p1, v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/perm/kate/account/Account;->remixsid:Ljava/lang/String;

    # get domain
    iget-object v1, p0, Lcom/perm/kate/LoginActivity2;->instance:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/account/Account;->instance_domain:Ljava/lang/String;

    # get tls toggle
    iget-object v1, p0, Lcom/perm/kate/LoginActivity2;->useTlsCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    iput-boolean v1, v0, Lcom/perm/kate/account/Account;->use_tls:Z

    .line 150
    invoke-static {v0}, Lcom/perm/kate/KApplication;->addAccount(Lcom/perm/kate/account/Account;)V

    .line 151
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/perm/kate/LoginActivity2;->setResult(I)V

    .line 152
    invoke-virtual {p0}, Lcom/perm/kate/LoginActivity2;->finish()V

    .line 153
    return-void
.end method

.method private htcPasswordFix()V
    .locals 2

    .prologue
    .line 423
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "HTC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 432
    :cond_0
    :goto_0
    return-void

    .line 426
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-gt v0, v1, :cond_0

    .line 429
    iget-object v0, p0, Lcom/perm/kate/LoginActivity2;->pass:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 431
    iget-object v0, p0, Lcom/perm/kate/LoginActivity2;->pass:Landroid/widget/EditText;

    new-instance v1, Landroid/text/method/PasswordTransformationMethod;

    invoke-direct {v1}, Landroid/text/method/PasswordTransformationMethod;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_0
.end method

.method private logIn(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 10
    .param p1, "captcha_sid"    # Ljava/lang/String;
    .param p2, "captcha_user_input"    # Ljava/lang/String;
    .param p3, "is_retry"    # Z

    .prologue
    .line 156
    iget-object v0, p0, Lcom/perm/kate/LoginActivity2;->login:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/LoginActivity2;->login1:Ljava/lang/String;

    .line 157
    iget-object v0, p0, Lcom/perm/kate/LoginActivity2;->pass:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/LoginActivity2;->password:Ljava/lang/String;
    
    .line 200000
    # get domain
    iget-object v0, p0, Lcom/perm/kate/LoginActivity2;->instance:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/LoginActivity2;->instanceDomain:Ljava/lang/String;

    # get tls toggle
    iget-object v0, p0, Lcom/perm/kate/LoginActivity2;->useTlsCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    iput-boolean v0, p0, Lcom/perm/kate/LoginActivity2;->use_tls:Z

    .line 158
    if-eqz p3, :cond_0

    .line 159
    iget-object v0, p0, Lcom/perm/kate/LoginActivity2;->password:Ljava/lang/String;

    invoke-static {v0}, Lcom/perm/utils/PasswordTransformer;->transform(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/LoginActivity2;->password:Ljava/lang/String;

    .line 160
    :cond_0
    new-instance v0, Lcom/perm/kate/api/LoginLogic;

    invoke-direct {v0}, Lcom/perm/kate/api/LoginLogic;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/LoginActivity2;->loginLogic:Lcom/perm/kate/api/LoginLogic;

    .line 161
    iget-object v0, p0, Lcom/perm/kate/LoginActivity2;->loginLogic:Lcom/perm/kate/api/LoginLogic;

    iget-object v1, p0, Lcom/perm/kate/LoginActivity2;->login1:Ljava/lang/String;

    iget-object v2, p0, Lcom/perm/kate/LoginActivity2;->password:Ljava/lang/String;

    sget-object v5, Lcom/perm/utils/UserAgent;->user_agent:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    iget-object v6, p0, Lcom/perm/kate/LoginActivity2;->instanceDomain:Ljava/lang/String;

    iget-boolean v7, p0, Lcom/perm/kate/LoginActivity2;->use_tls:Z

    invoke-virtual/range {v0 .. v7}, Lcom/perm/kate/api/LoginLogic;->logInDirect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/Object;

    move-result-object v6

    .line 162
    .local v6, "data":[Ljava/lang/Object;
    const/4 v0, 0x0

    aget-object v0, v6, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 163
    .local v8, "res":I
    const/4 v0, 0x2

    if-ne v8, v0, :cond_1

    .line 164
    const/4 v0, 0x1

    aget-object v7, v6, v0

    check-cast v7, Ljava/lang/String;

    .line 165
    .local v7, "img":Ljava/lang/String;
    const/4 v0, 0x2

    aget-object v9, v6, v0

    check-cast v9, Ljava/lang/String;

    .line 166
    .local v9, "sid":Ljava/lang/String;
    new-instance v0, Lcom/perm/kate/LoginActivity2$3;

    invoke-direct {v0, p0, v9, p3}, Lcom/perm/kate/LoginActivity2$3;-><init>(Lcom/perm/kate/LoginActivity2;Ljava/lang/String;Z)V

    invoke-static {p0, v7, v0}, Lcom/perm/kate/session/CaptchaDialog;->display(Landroid/app/Activity;Ljava/lang/String;Lcom/perm/kate/session/CaptchaDialog$CaptchaCallback;)V

    .line 211
    .end local v7    # "img":Ljava/lang/String;
    .end local v9    # "sid":Ljava/lang/String;
    :goto_0
    return-void

    .line 181
    :cond_1
    const/4 v0, 0x1

    if-ne v8, v0, :cond_2

    if-nez p3, :cond_2

    .line 182
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/perm/kate/LoginActivity2;->logIn(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 184
    :cond_2
    new-instance v0, Lcom/perm/kate/LoginActivity2$4;

    invoke-direct {v0, p0, v8, p3, v6}, Lcom/perm/kate/LoginActivity2$4;-><init>(Lcom/perm/kate/LoginActivity2;IZ[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/perm/kate/LoginActivity2;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private reportUrlAvailabilityInThread()V
    .locals 1

    .prologue
    .line 365
    new-instance v0, Lcom/perm/kate/LoginActivity2$12;

    invoke-direct {v0, p0}, Lcom/perm/kate/LoginActivity2$12;-><init>(Lcom/perm/kate/LoginActivity2;)V

    .line 388
    invoke-virtual {v0}, Lcom/perm/kate/LoginActivity2$12;->start()V

    .line 389
    return-void
.end method

.method private showOnlineSettingsDialog()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    .line 123
    sget-object v5, Lcom/perm/kate/KApplication;->online:Lcom/perm/kate/Online;

    invoke-virtual {v5}, Lcom/perm/kate/Online;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v1, 0x0

    .line 124
    .local v1, "check_value_int":I
    :goto_0
    new-instance v3, Lcom/perm/kate/LoginActivity2$2;

    invoke-direct {v3, p0}, Lcom/perm/kate/LoginActivity2$2;-><init>(Lcom/perm/kate/LoginActivity2;)V

    .line 134
    .local v3, "single_listener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 135
    .local v0, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    const v5, 0x7f070342

    invoke-virtual {v0, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 136
    const v5, 0x7f0d0025

    invoke-virtual {v0, v5, v1, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 137
    const v5, 0x7f07015d

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 138
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v2

    .line 139
    .local v2, "dialog":Landroid/support/v7/app/AlertDialog;
    invoke-virtual {v2, v4}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 140
    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 141
    return-void

    .end local v0    # "builder":Landroid/support/v7/app/AlertDialog$Builder;
    .end local v1    # "check_value_int":I
    .end local v2    # "dialog":Landroid/support/v7/app/AlertDialog;
    .end local v3    # "single_listener":Landroid/content/DialogInterface$OnClickListener;
    :cond_0
    move v1, v4

    .line 123
    goto :goto_0
.end method

.method private showReserveLoginDialog()V
    .locals 3

    .prologue
    .line 320
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0703c1

    .line 321
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070330

    iget-object v2, p0, Lcom/perm/kate/LoginActivity2;->startReserveClick:Landroid/content/DialogInterface$OnClickListener;

    .line 322
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0702c4

    .line 323
    invoke-virtual {p0, v1}, Lcom/perm/kate/LoginActivity2;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/LoginActivity2;->instructionsClick:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 324
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 325
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 326
    return-void
.end method

.method private showReserveLoginDialogOnUiThread()V
    .locals 1

    .prologue
    .line 311
    new-instance v0, Lcom/perm/kate/LoginActivity2$9;

    invoke-direct {v0, p0}, Lcom/perm/kate/LoginActivity2$9;-><init>(Lcom/perm/kate/LoginActivity2;)V

    invoke-virtual {p0, v0}, Lcom/perm/kate/LoginActivity2;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 317
    return-void
.end method

.method private showTimeDialogOnUiThread()V
    .locals 1

    .prologue
    .line 252
    new-instance v0, Lcom/perm/kate/LoginActivity2$8;

    invoke-direct {v0, p0}, Lcom/perm/kate/LoginActivity2$8;-><init>(Lcom/perm/kate/LoginActivity2;)V

    invoke-virtual {p0, v0}, Lcom/perm/kate/LoginActivity2;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 273
    return-void
.end method

.method private startReserveLogin()V
    .locals 2

    .prologue
    .line 392
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/perm/kate/LoginActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 393
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/perm/kate/LoginActivity2;->startActivityForResult(Landroid/content/Intent;I)V

    .line 394
    return-void
.end method


# virtual methods
.method checkTime()V
    .locals 1

    .prologue
    .line 234
    new-instance v0, Lcom/perm/kate/LoginActivity2$7;

    invoke-direct {v0, p0}, Lcom/perm/kate/LoginActivity2$7;-><init>(Lcom/perm/kate/LoginActivity2;)V

    .line 248
    invoke-virtual {v0}, Lcom/perm/kate/LoginActivity2$7;->start()V

    .line 249
    return-void
.end method

.method protected fillMenuItems(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 108
    const/4 v0, 0x0

    const/4 v1, 0x2

    const/16 v2, 0xbea

    const v3, 0x7f070342

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 109
    const/4 v0, 0x1

    return v0
.end method

.method getCorrectTime()J
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    .line 276
    const/4 v3, 0x0

    .line 282
    .local v3, "connection":Ljava/net/HttpURLConnection;
    :try_start_0
    const-string v8, "http://openvk.xyz/method/utils.getServerTime"
    # FIXME: Hard-coded (temporary, maybe)

    .line 283
    .local v8, "url":Ljava/lang/String;
    new-instance v9, Ljava/net/URL;

    invoke-direct {v9, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v3, v0

    .line 284
    const/16 v9, 0x2710

    invoke-virtual {v3, v9}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 285
    const/16 v9, 0x2710

    invoke-virtual {v3, v9}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 286
    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 287
    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 288
    const/4 v9, 0x1

    invoke-virtual {v3, v9}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 289
    invoke-static {v3}, Lcom/perm/utils/UserAgent;->set(Ljava/net/HttpURLConnection;)V

    .line 290
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 291
    .local v2, "code":I
    const/4 v9, -0x1

    if-ne v2, v9, :cond_1

    .line 304
    if-eqz v3, :cond_0

    .line 305
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 307
    .end local v2    # "code":I
    .end local v8    # "url":Ljava/lang/String;
    :cond_0
    :goto_0
    return-wide v10

    .line 293
    .restart local v2    # "code":I
    .restart local v8    # "url":Ljava/lang/String;
    :cond_1
    :try_start_1
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v4, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 294
    .local v4, "is":Ljava/io/InputStream;
    invoke-static {v4}, Lcom/perm/utils/Utils;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    .line 295
    .local v5, "response":Ljava/lang/String;
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 296
    .local v6, "root":Lorg/json/JSONObject;
    const-string v9, "response"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v10

    .line 304
    if-eqz v3, :cond_0

    .line 305
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    .line 297
    .end local v2    # "code":I
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v5    # "response":Ljava/lang/String;
    .end local v6    # "root":Lorg/json/JSONObject;
    .end local v8    # "url":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 299
    .local v7, "th":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 304
    if-eqz v3, :cond_0

    .line 305
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    .line 300
    .end local v7    # "th":Ljava/io/IOException;
    :catch_1
    move-exception v7

    .line 301
    .local v7, "th":Ljava/lang/Throwable;
    :try_start_3
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    .line 302
    invoke-static {v7}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 304
    if-eqz v3, :cond_0

    .line 305
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    .line 304
    .end local v7    # "th":Ljava/lang/Throwable;
    :catchall_0
    move-exception v9

    if-eqz v3, :cond_2

    .line 305
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    throw v9
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v3, -0x1

    .line 398
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 399
    if-ne p2, v3, :cond_0

    .line 400
    invoke-virtual {p0, v3}, Lcom/perm/kate/LoginActivity2;->setResult(I)V

    .line 401
    invoke-virtual {p0}, Lcom/perm/kate/LoginActivity2;->finish()V

    .line 404
    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 405
    if-ne p2, v3, :cond_1

    .line 406
    if-eqz p3, :cond_1

    .line 407
    const-string v1, "account_created"

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 409
    .local v0, "account_created":Z
    if-eqz v0, :cond_1

    .line 410
    invoke-virtual {p0, v3}, Lcom/perm/kate/LoginActivity2;->setResult(I)V

    .line 411
    invoke-virtual {p0}, Lcom/perm/kate/LoginActivity2;->finish()V

    .line 416
    .end local v0    # "account_created":Z
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const v2, 0x7f0300b3

    invoke-virtual {p0, v2}, Lcom/perm/kate/LoginActivity2;->setContentView(I)V

    .line 54
    const v2, 0x7f0701c9

    invoke-virtual {p0, v2}, Lcom/perm/kate/LoginActivity2;->setHeaderTitle(I)V

    .line 55
    invoke-virtual {p0}, Lcom/perm/kate/LoginActivity2;->setupMenuButton()V

    .line 56
    const v2, 0x7f0e024d

    invoke-virtual {p0, v2}, Lcom/perm/kate/LoginActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/perm/kate/LoginActivity2;->loginView:Landroid/view/View;

    .line 57
    const v2, 0x7f0e0253

    invoke-virtual {p0, v2}, Lcom/perm/kate/LoginActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/perm/kate/LoginActivity2;->progressView:Landroid/view/View;

    .line 58
    const v2, 0x7f0e024e

    invoke-virtual {p0, v2}, Lcom/perm/kate/LoginActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/perm/kate/LoginActivity2;->login:Landroid/widget/EditText;

    const v2, 0x7f0e03ab

    invoke-virtual {p0, v2}, Lcom/perm/kate/LoginActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/perm/kate/LoginActivity2;->instance:Landroid/widget/EditText;

    const v2, 0x7f0e03ac

    invoke-virtual {p0, v2}, Lcom/perm/kate/LoginActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/perm/kate/LoginActivity2;->useTlsCheckBox:Landroid/widget/CheckBox;

    .line 59
    const v2, 0x7f0e024f

    invoke-virtual {p0, v2}, Lcom/perm/kate/LoginActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/perm/kate/LoginActivity2;->pass:Landroid/widget/EditText;

    .line 61
    const v2, 0x7f0e0250

    invoke-virtual {p0, v2}, Lcom/perm/kate/LoginActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 62
    .local v0, "b":Landroid/widget/Button;
    iget-object v2, p0, Lcom/perm/kate/LoginActivity2;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    const v2, 0x7f0e0252

    invoke-virtual {p0, v2}, Lcom/perm/kate/LoginActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 65
    .local v1, "forgot":Landroid/widget/TextView;
    const v2, 0x7f0700ac

    invoke-virtual {p0, v2}, Lcom/perm/kate/LoginActivity2;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 68
    const v2, 0x7f0e00c5

    invoke-virtual {p0, v2}, Lcom/perm/kate/LoginActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/perm/kate/LoginActivity2;->checkedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 70
    const v2, 0x7f0e0251

    invoke-virtual {p0, v2}, Lcom/perm/kate/LoginActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/perm/kate/LoginActivity2;->cantLoginListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    invoke-virtual {p0}, Lcom/perm/kate/LoginActivity2;->setButtonsBg()V

    .line 73
    invoke-direct {p0}, Lcom/perm/kate/LoginActivity2;->htcPasswordFix()V

    .line 74
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 102
    invoke-virtual {p0, p1}, Lcom/perm/kate/LoginActivity2;->fillMenuItems(Landroid/view/Menu;)Z

    .line 103
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 114
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 119
    :goto_0
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 116
    :pswitch_0
    invoke-direct {p0}, Lcom/perm/kate/LoginActivity2;->showOnlineSettingsDialog()V

    goto :goto_0

    .line 114
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method showView(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 94
    iget-object v3, p0, Lcom/perm/kate/LoginActivity2;->loginView:Landroid/view/View;

    iget-object v0, p0, Lcom/perm/kate/LoginActivity2;->loginView:Landroid/view/View;

    if-ne p1, v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 95
    iget-object v0, p0, Lcom/perm/kate/LoginActivity2;->progressView:Landroid/view/View;

    iget-object v3, p0, Lcom/perm/kate/LoginActivity2;->progressView:Landroid/view/View;

    if-ne p1, v3, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 96
    return-void

    :cond_0
    move v0, v2

    .line 94
    goto :goto_0

    :cond_1
    move v1, v2

    .line 95
    goto :goto_1
.end method

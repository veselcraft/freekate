.class public Lcom/perm/kate/LoginActivity2;
.super Lcom/perm/kate/BaseActivity;
.source "LoginActivity2.java"


# instance fields
.field private cantLoginListener:Landroid/view/View$OnClickListener;

.field private checkedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private instructionsClick:Landroid/content/DialogInterface$OnClickListener;

.field instance:Landroid/widget/EditText;

.field instanceDomain:Ljava/lang/String;

.field useTlsCheckBox:Landroid/widget/CheckBox;

.field use_tls:Z

.field private listener:Landroid/view/View$OnClickListener;

.field login:Landroid/widget/EditText;

.field login1:Ljava/lang/String;

.field loginLogic:Lcom/perm/kate/api/LoginLogic;

.field loginView:Landroid/view/View;

.field pass:Landroid/widget/EditText;

.field password:Ljava/lang/String;

.field progressView:Landroid/view/View;

.field private startReserveClick:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    .line 83
    new-instance v0, Lcom/perm/kate/LoginActivity2$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/LoginActivity2$1;-><init>(Lcom/perm/kate/LoginActivity2;)V

    iput-object v0, p0, Lcom/perm/kate/LoginActivity2;->listener:Landroid/view/View$OnClickListener;

    .line 225
    new-instance v0, Lcom/perm/kate/LoginActivity2$5;

    invoke-direct {v0, p0}, Lcom/perm/kate/LoginActivity2$5;-><init>(Lcom/perm/kate/LoginActivity2;)V

    iput-object v0, p0, Lcom/perm/kate/LoginActivity2;->checkedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 235
    new-instance v0, Lcom/perm/kate/LoginActivity2$6;

    invoke-direct {v0, p0}, Lcom/perm/kate/LoginActivity2$6;-><init>(Lcom/perm/kate/LoginActivity2;)V

    iput-object v0, p0, Lcom/perm/kate/LoginActivity2;->cantLoginListener:Landroid/view/View$OnClickListener;

    .line 335
    new-instance v0, Lcom/perm/kate/LoginActivity2$10;

    invoke-direct {v0, p0}, Lcom/perm/kate/LoginActivity2$10;-><init>(Lcom/perm/kate/LoginActivity2;)V

    iput-object v0, p0, Lcom/perm/kate/LoginActivity2;->startReserveClick:Landroid/content/DialogInterface$OnClickListener;

    .line 360
    new-instance v0, Lcom/perm/kate/LoginActivity2$11;

    invoke-direct {v0, p0}, Lcom/perm/kate/LoginActivity2$11;-><init>(Lcom/perm/kate/LoginActivity2;)V

    iput-object v0, p0, Lcom/perm/kate/LoginActivity2;->instructionsClick:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/LoginActivity2;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/perm/kate/LoginActivity2;->logIn(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/LoginActivity2;[Ljava/lang/Object;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/perm/kate/LoginActivity2;->done([Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/perm/kate/LoginActivity2;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/perm/kate/LoginActivity2;->showTimeDialogOnUiThread()V

    return-void
.end method

.method static synthetic access$300(Lcom/perm/kate/LoginActivity2;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/perm/kate/LoginActivity2;->showReserveLoginDialogOnUiThread()V

    return-void
.end method

.method static synthetic access$400(Lcom/perm/kate/LoginActivity2;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/perm/kate/LoginActivity2;->showReserveLoginDialog()V

    return-void
.end method

.method static synthetic access$500(Lcom/perm/kate/LoginActivity2;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/perm/kate/LoginActivity2;->startReserveLogin()V

    return-void
.end method

.method static synthetic access$600(Lcom/perm/kate/LoginActivity2;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/perm/kate/LoginActivity2;->reportUrlAvailabilityInThread()V

    return-void
.end method

.method static synthetic access$700(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 46
    invoke-static {p0}, Lcom/perm/kate/LoginActivity2;->checkUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static checkUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    .line 344
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/perm/utils/ProxyManager;->getConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v0

    const/16 p0, 0x7530

    .line 345
    invoke-virtual {v0, p0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 346
    invoke-virtual {v0, p0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 p0, 0x0

    .line 347
    invoke-virtual {v0, p0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 348
    invoke-virtual {v0, p0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const/4 p0, 0x1

    .line 349
    invoke-virtual {v0, p0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 350
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p0

    .line 351
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 356
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 353
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_0

    .line 356
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    return-object p0

    :catchall_1
    move-exception p0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 357
    :cond_1
    throw p0
.end method

.method private done([Ljava/lang/Object;)V
    .locals 2

    .line 151
    new-instance v0, Lcom/perm/kate/account/Account;

    invoke-direct {v0}, Lcom/perm/kate/account/Account;-><init>()V

    const/4 v1, 0x2

    .line 152
    aget-object v1, p1, v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/perm/kate/account/Account;->mid:Ljava/lang/String;

    const/4 v1, 0x1

    .line 153
    aget-object p1, p1, v1

    check-cast p1, Ljava/lang/String;

    iput-object p1, v0, Lcom/perm/kate/account/Account;->access_token:Ljava/lang/String;

    iget-object p1, p0, Lcom/perm/kate/LoginActivity2;->instanceDomain:Ljava/lang/String;

    iput-object p1, v0, Lcom/perm/kate/account/Account;->instance_domain:Ljava/lang/String;

    iget-boolean p1, p0, Lcom/perm/kate/LoginActivity2;->use_tls:Z

    iput-boolean p1, v0, Lcom/perm/kate/account/Account;->use_tls:Z

    .line 156
    invoke-static {v0}, Lcom/perm/kate/KApplication;->addAccount(Lcom/perm/kate/account/Account;)V

    const/4 p1, -0x1

    .line 157
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 158
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private htcPasswordFix()V
    .locals 2

    .line 431
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "HTC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 434
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-le v0, v1, :cond_1

    return-void

    .line 437
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/LoginActivity2;->pass:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 439
    iget-object v0, p0, Lcom/perm/kate/LoginActivity2;->pass:Landroid/widget/EditText;

    new-instance v1, Landroid/text/method/PasswordTransformationMethod;

    invoke-direct {v1}, Landroid/text/method/PasswordTransformationMethod;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    return-void
.end method

.method private logIn(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 9

    .line 162
    iget-object v0, p0, Lcom/perm/kate/LoginActivity2;->login:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/LoginActivity2;->login1:Ljava/lang/String;

    .line 163
    iget-object v0, p0, Lcom/perm/kate/LoginActivity2;->pass:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/LoginActivity2;->password:Ljava/lang/String;

    if-eqz p3, :cond_0

    .line 165
    invoke-static {v0}, Lcom/perm/utils/PasswordTransformer;->transform(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/LoginActivity2;->password:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/perm/kate/LoginActivity2;->instance:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/LoginActivity2;->instanceDomain:Ljava/lang/String;

    iget-object v0, p0, Lcom/perm/kate/LoginActivity2;->useTlsCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    iput-boolean v0, p0, Lcom/perm/kate/LoginActivity2;->use_tls:Z

    .line 166
    new-instance v1, Lcom/perm/kate/api/LoginLogic;

    invoke-direct {v1}, Lcom/perm/kate/api/LoginLogic;-><init>()V

    iput-object v1, p0, Lcom/perm/kate/LoginActivity2;->loginLogic:Lcom/perm/kate/api/LoginLogic;

    .line 167
    iget-object v2, p0, Lcom/perm/kate/LoginActivity2;->login1:Ljava/lang/String;

    iget-object v3, p0, Lcom/perm/kate/LoginActivity2;->password:Ljava/lang/String;

    sget-object v6, Lcom/perm/utils/UserAgent;->user_agent:Ljava/lang/String;

    move-object v4, p1

    move-object v5, p2

    iget-object v7, p0, Lcom/perm/kate/LoginActivity2;->instanceDomain:Ljava/lang/String;

    iget-boolean v8, p0, Lcom/perm/kate/LoginActivity2;->use_tls:Z

    invoke-virtual/range {v1 .. v8}, Lcom/perm/kate/api/LoginLogic;->logInDirect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x0

    .line 168
    aget-object p2, p1, p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p2, v0, :cond_1

    .line 170
    aget-object p2, p1, v1

    check-cast p2, Ljava/lang/String;

    .line 171
    aget-object p1, p1, v0

    check-cast p1, Ljava/lang/String;

    .line 172
    new-instance v0, Lcom/perm/kate/LoginActivity2$3;

    invoke-direct {v0, p0, p1, p3}, Lcom/perm/kate/LoginActivity2$3;-><init>(Lcom/perm/kate/LoginActivity2;Ljava/lang/String;Z)V

    invoke-static {p0, p2, v0}, Lcom/perm/kate/session/CaptchaDialog;->display(Landroid/app/Activity;Ljava/lang/String;Lcom/perm/kate/session/CaptchaDialog$CaptchaCallback;)V

    goto :goto_0

    :cond_1
    if-ne p2, v1, :cond_2

    if-nez p3, :cond_2

    const/4 p1, 0x0

    .line 188
    invoke-direct {p0, p1, p1, v1}, Lcom/perm/kate/LoginActivity2;->logIn(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 190
    :cond_2
    new-instance v0, Lcom/perm/kate/LoginActivity2$4;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/perm/kate/LoginActivity2$4;-><init>(Lcom/perm/kate/LoginActivity2;IZ[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method private reportUrlAvailabilityInThread()V
    .locals 1

    .line 372
    new-instance v0, Lcom/perm/kate/LoginActivity2$12;

    invoke-direct {v0, p0}, Lcom/perm/kate/LoginActivity2$12;-><init>(Lcom/perm/kate/LoginActivity2;)V

    .line 395
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private showOnlineSettingsDialog()V
    .locals 5

    .line 130
    sget-object v0, Lcom/perm/kate/KApplication;->online:Lcom/perm/kate/Online;

    invoke-virtual {v0}, Lcom/perm/kate/Online;->isEnabled()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 131
    new-instance v2, Lcom/perm/kate/LoginActivity2$2;

    invoke-direct {v2, p0}, Lcom/perm/kate/LoginActivity2$2;-><init>(Lcom/perm/kate/LoginActivity2;)V

    .line 141
    new-instance v3, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0f03a7

    .line 142
    invoke-virtual {v3, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    const v4, 0x7f030026

    .line 143
    invoke-virtual {v3, v4, v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const v0, 0x7f0f01c5

    const/4 v2, 0x0

    .line 144
    invoke-virtual {v3, v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 145
    invoke-virtual {v3}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 146
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 147
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showReserveLoginDialog()V
    .locals 3

    .line 327
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f0441

    .line 328
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/LoginActivity2;->startReserveClick:Landroid/content/DialogInterface$OnClickListener;

    const v2, 0x7f0f0394

    .line 329
    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0f031f

    .line 330
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/LoginActivity2;->instructionsClick:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 331
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 332
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showReserveLoginDialogOnUiThread()V
    .locals 1

    .line 318
    new-instance v0, Lcom/perm/kate/LoginActivity2$9;

    invoke-direct {v0, p0}, Lcom/perm/kate/LoginActivity2$9;-><init>(Lcom/perm/kate/LoginActivity2;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private showTimeDialogOnUiThread()V
    .locals 1

    .line 264
    new-instance v0, Lcom/perm/kate/LoginActivity2$8;

    invoke-direct {v0, p0}, Lcom/perm/kate/LoginActivity2$8;-><init>(Lcom/perm/kate/LoginActivity2;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private startReserveLogin()V
    .locals 2

    .line 399
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/perm/kate/LoginActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x1

    .line 400
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method checkTime()V
    .locals 1

    .line 246
    new-instance v0, Lcom/perm/kate/LoginActivity2$7;

    invoke-direct {v0, p0}, Lcom/perm/kate/LoginActivity2$7;-><init>(Lcom/perm/kate/LoginActivity2;)V

    .line 260
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method protected fillMenuItems(Landroid/view/Menu;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/16 v2, 0xbea

    const v3, 0x7f0f03a7

    .line 111
    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const/16 v1, 0x12c

    const v3, 0x7f0f0408

    .line 112
    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const/4 p1, 0x1

    return p1
.end method

.method getCorrectTime()J
    .locals 6

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "https://currentmillis.com/time/seconds-since-unix-epoch.php"

    .line 291
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v2, 0x2710

    .line 292
    :try_start_1
    invoke-virtual {v3, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 293
    invoke-virtual {v3, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v2, 0x0

    .line 294
    invoke-virtual {v3, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 295
    invoke-virtual {v3, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const/4 v2, 0x1

    .line 296
    invoke-virtual {v3, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 297
    invoke-static {v3}, Lcom/perm/utils/UserAgent;->set(Ljava/net/HttpURLConnection;)V

    .line 298
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    .line 312
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    return-wide v0

    .line 301
    :cond_0
    :try_start_2
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 302
    invoke-static {v2}, Lcom/perm/utils/Utils;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    .line 303
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 312
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    return-wide v0

    :catchall_0
    move-exception v2

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1

    :catchall_1
    move-exception v3

    move-object v5, v3

    move-object v3, v2

    move-object v2, v5

    .line 308
    :goto_0
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 309
    invoke-static {v2}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    if-eqz v3, :cond_1

    goto :goto_2

    :catch_1
    move-exception v3

    move-object v5, v3

    move-object v3, v2

    move-object v2, v5

    .line 306
    :goto_1
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v3, :cond_1

    .line 312
    :goto_2
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    return-wide v0

    :catchall_2
    move-exception v0

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 313
    :cond_2
    throw v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 405
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    if-ne p2, v0, :cond_0

    .line 408
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 409
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    if-ne p2, v0, :cond_1

    if-eqz p3, :cond_1

    const/4 p1, 0x0

    const-string p2, "account_created"

    .line 415
    invoke-virtual {p3, p2, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 418
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 419
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 55
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c00c4

    .line 56
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setContentView(I)V

    const p1, 0x7f0f0225

    .line 57
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setHeaderTitle(I)V

    .line 58
    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->setupMenuButton()V

    const p1, 0x7f090206

    .line 59
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/LoginActivity2;->loginView:Landroid/view/View;

    const p1, 0x7f09028d

    .line 60
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/LoginActivity2;->progressView:Landroid/view/View;

    const p1, 0x7f090405

    .line 61
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/perm/kate/LoginActivity2;->login:Landroid/widget/EditText;

    const p1, 0x7f090269

    .line 62
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/perm/kate/LoginActivity2;->pass:Landroid/widget/EditText;

    const p1, 0x7f090428

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/perm/kate/LoginActivity2;->instance:Landroid/widget/EditText;

    const p1, 0x7f09042a

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/perm/kate/LoginActivity2;->useTlsCheckBox:Landroid/widget/CheckBox;

    const p1, 0x7f090205

    .line 64
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 65
    iget-object v0, p0, Lcom/perm/kate/LoginActivity2;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f09014f

    .line 67
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v0, 0x7f0f00ee

    .line 68
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const p1, 0x7f0902ce

    .line 71
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/perm/kate/LoginActivity2;->checkedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const p1, 0x7f0900a5

    .line 73
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/perm/kate/LoginActivity2;->cantLoginListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->setButtonsBg()V

    .line 76
    invoke-direct {p0}, Lcom/perm/kate/LoginActivity2;->htcPasswordFix()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    .line 105
    invoke-virtual {p0, p1}, Lcom/perm/kate/LoginActivity2;->fillMenuItems(Landroid/view/Menu;)Z

    .line 106
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 118
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/16 v1, 0x12c

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 123
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/perm/kate/ProxyActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 120
    :cond_1
    invoke-direct {p0}, Lcom/perm/kate/LoginActivity2;->showOnlineSettingsDialog()V

    .line 126
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method showView(Landroid/view/View;)V
    .locals 4

    .line 97
    iget-object v0, p0, Lcom/perm/kate/LoginActivity2;->loginView:Landroid/view/View;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-ne p1, v0, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 98
    iget-object v0, p0, Lcom/perm/kate/LoginActivity2;->progressView:Landroid/view/View;

    if-ne p1, v0, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

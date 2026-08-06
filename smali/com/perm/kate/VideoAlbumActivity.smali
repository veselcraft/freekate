.class public Lcom/perm/kate/VideoAlbumActivity;
.super Lcom/perm/kate/BaseActivity;
.source "VideoAlbumActivity.java"


# instance fields
.field private btn_cancel:Landroid/widget/Button;

.field private btn_save:Landroid/widget/Button;

.field private callback:Lcom/perm/kate/session/Callback;

.field private cancelClickListener:Landroid/view/View$OnClickListener;

.field private group_id:Ljava/lang/Long;

.field private privacy:Ljava/lang/String;

.field private saveClickListener:Landroid/view/View$OnClickListener;

.field private sp_privacy:Landroid/widget/Spinner;

.field private tb_title:Landroid/widget/EditText;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    .line 62
    new-instance v0, Lcom/perm/kate/VideoAlbumActivity$2;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/VideoAlbumActivity$2;-><init>(Lcom/perm/kate/VideoAlbumActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/VideoAlbumActivity;->callback:Lcom/perm/kate/session/Callback;

    .line 79
    new-instance v0, Lcom/perm/kate/VideoAlbumActivity$3;

    invoke-direct {v0, p0}, Lcom/perm/kate/VideoAlbumActivity$3;-><init>(Lcom/perm/kate/VideoAlbumActivity;)V

    iput-object v0, p0, Lcom/perm/kate/VideoAlbumActivity;->saveClickListener:Landroid/view/View$OnClickListener;

    .line 86
    new-instance v0, Lcom/perm/kate/VideoAlbumActivity$4;

    invoke-direct {v0, p0}, Lcom/perm/kate/VideoAlbumActivity$4;-><init>(Lcom/perm/kate/VideoAlbumActivity;)V

    iput-object v0, p0, Lcom/perm/kate/VideoAlbumActivity;->cancelClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/VideoAlbumActivity;)Ljava/lang/Long;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/VideoAlbumActivity;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/perm/kate/VideoAlbumActivity;->group_id:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic access$100(Lcom/perm/kate/VideoAlbumActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/VideoAlbumActivity;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/perm/kate/VideoAlbumActivity;->title:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/perm/kate/VideoAlbumActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/VideoAlbumActivity;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/perm/kate/VideoAlbumActivity;->privacy:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/perm/kate/VideoAlbumActivity;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/VideoAlbumActivity;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/perm/kate/VideoAlbumActivity;->callback:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$400(Lcom/perm/kate/VideoAlbumActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/VideoAlbumActivity;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/perm/kate/VideoAlbumActivity;->finishOnUiThread()V

    return-void
.end method

.method static synthetic access$500(Lcom/perm/kate/VideoAlbumActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/VideoAlbumActivity;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/perm/kate/VideoAlbumActivity;->save()V

    return-void
.end method

.method static synthetic access$600(Lcom/perm/kate/VideoAlbumActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/VideoAlbumActivity;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/perm/kate/VideoAlbumActivity;->onConfirmCancel()Z

    move-result v0

    return v0
.end method

.method private finishOnUiThread()V
    .locals 1

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/perm/kate/VideoAlbumActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    :goto_0
    return-void

    .line 126
    :cond_0
    new-instance v0, Lcom/perm/kate/VideoAlbumActivity$7;

    invoke-direct {v0, p0}, Lcom/perm/kate/VideoAlbumActivity$7;-><init>(Lcom/perm/kate/VideoAlbumActivity;)V

    invoke-virtual {p0, v0}, Lcom/perm/kate/VideoAlbumActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private onConfirmCancel()Z
    .locals 5

    .prologue
    .line 105
    iget-object v2, p0, Lcom/perm/kate/VideoAlbumActivity;->tb_title:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 106
    .local v1, "text":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 107
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 108
    .local v0, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    const v2, 0x7f07044c

    invoke-virtual {v0, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f07051d

    new-instance v4, Lcom/perm/kate/VideoAlbumActivity$6;

    invoke-direct {v4, p0}, Lcom/perm/kate/VideoAlbumActivity$6;-><init>(Lcom/perm/kate/VideoAlbumActivity;)V

    .line 109
    invoke-virtual {v2, v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f070319

    new-instance v4, Lcom/perm/kate/VideoAlbumActivity$5;

    invoke-direct {v4, p0}, Lcom/perm/kate/VideoAlbumActivity$5;-><init>(Lcom/perm/kate/VideoAlbumActivity;)V

    .line 114
    invoke-virtual {v2, v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 117
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 118
    const/4 v2, 0x1

    .line 120
    .end local v0    # "builder":Landroid/support/v7/app/AlertDialog$Builder;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private save()V
    .locals 3

    .prologue
    .line 47
    iget-object v0, p0, Lcom/perm/kate/VideoAlbumActivity;->tb_title:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/VideoAlbumActivity;->title:Ljava/lang/String;

    .line 48
    iget-object v0, p0, Lcom/perm/kate/VideoAlbumActivity;->title:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/perm/kate/VideoAlbumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0702df

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 60
    :goto_0
    return-void

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/VideoAlbumActivity;->sp_privacy:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    invoke-static {v0}, Lcom/perm/kate/api/Privacy;->getPrivacyValueFromInt(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/VideoAlbumActivity;->privacy:Ljava/lang/String;

    .line 53
    new-instance v0, Lcom/perm/kate/VideoAlbumActivity$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/VideoAlbumActivity$1;-><init>(Lcom/perm/kate/VideoAlbumActivity;)V

    .line 59
    invoke-virtual {v0}, Lcom/perm/kate/VideoAlbumActivity$1;->start()V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v4, 0x0

    .line 31
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const v1, 0x7f030112

    invoke-virtual {p0, v1}, Lcom/perm/kate/VideoAlbumActivity;->setContentView(I)V

    .line 33
    const v1, 0x7f07047a

    invoke-virtual {p0, v1}, Lcom/perm/kate/VideoAlbumActivity;->setHeaderTitle(I)V

    .line 34
    const v1, 0x7f0e004b

    invoke-virtual {p0, v1}, Lcom/perm/kate/VideoAlbumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/perm/kate/VideoAlbumActivity;->tb_title:Landroid/widget/EditText;

    .line 35
    const v1, 0x7f0e019d

    invoke-virtual {p0, v1}, Lcom/perm/kate/VideoAlbumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/perm/kate/VideoAlbumActivity;->btn_save:Landroid/widget/Button;

    .line 36
    const v1, 0x7f0e019b

    invoke-virtual {p0, v1}, Lcom/perm/kate/VideoAlbumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/perm/kate/VideoAlbumActivity;->btn_cancel:Landroid/widget/Button;

    .line 37
    iget-object v1, p0, Lcom/perm/kate/VideoAlbumActivity;->btn_save:Landroid/widget/Button;

    iget-object v2, p0, Lcom/perm/kate/VideoAlbumActivity;->saveClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    iget-object v1, p0, Lcom/perm/kate/VideoAlbumActivity;->btn_cancel:Landroid/widget/Button;

    iget-object v2, p0, Lcom/perm/kate/VideoAlbumActivity;->cancelClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    const v1, 0x7f0e034e

    invoke-virtual {p0, v1}, Lcom/perm/kate/VideoAlbumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/perm/kate/VideoAlbumActivity;->sp_privacy:Landroid/widget/Spinner;

    .line 40
    invoke-virtual {p0}, Lcom/perm/kate/VideoAlbumActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.perm.kate.owner_id"

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 41
    .local v0, "owner_id":Ljava/lang/Long;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 42
    const-wide/16 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    mul-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/perm/kate/VideoAlbumActivity;->group_id:Ljava/lang/Long;

    .line 44
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 96
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 98
    invoke-direct {p0}, Lcom/perm/kate/VideoAlbumActivity;->onConfirmCancel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    const/4 v0, 0x1

    .line 101
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/perm/kate/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

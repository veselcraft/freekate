.class public Lcom/perm/kate/AudioAlbumActivity;
.super Lcom/perm/kate/BaseActivity;
.source "AudioAlbumActivity.java"


# instance fields
.field private album_id:Ljava/lang/Long;

.field private album_title:Ljava/lang/String;

.field private btn_cancel:Landroid/widget/Button;

.field private btn_save:Landroid/widget/Button;

.field private callback:Lcom/perm/kate/session/Callback;

.field private cancelClickListener:Landroid/view/View$OnClickListener;

.field private edit_callback:Lcom/perm/kate/session/Callback;

.field private is_edit:Z

.field private owner_id:Ljava/lang/Long;

.field private saveClickListener:Landroid/view/View$OnClickListener;

.field private tb_title:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    .line 68
    new-instance v0, Lcom/perm/kate/AudioAlbumActivity$2;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/AudioAlbumActivity$2;-><init>(Lcom/perm/kate/AudioAlbumActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/AudioAlbumActivity;->callback:Lcom/perm/kate/session/Callback;

    .line 85
    new-instance v0, Lcom/perm/kate/AudioAlbumActivity$3;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/AudioAlbumActivity$3;-><init>(Lcom/perm/kate/AudioAlbumActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/AudioAlbumActivity;->edit_callback:Lcom/perm/kate/session/Callback;

    .line 102
    new-instance v0, Lcom/perm/kate/AudioAlbumActivity$4;

    invoke-direct {v0, p0}, Lcom/perm/kate/AudioAlbumActivity$4;-><init>(Lcom/perm/kate/AudioAlbumActivity;)V

    iput-object v0, p0, Lcom/perm/kate/AudioAlbumActivity;->saveClickListener:Landroid/view/View$OnClickListener;

    .line 109
    new-instance v0, Lcom/perm/kate/AudioAlbumActivity$5;

    invoke-direct {v0, p0}, Lcom/perm/kate/AudioAlbumActivity$5;-><init>(Lcom/perm/kate/AudioAlbumActivity;)V

    iput-object v0, p0, Lcom/perm/kate/AudioAlbumActivity;->cancelClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/AudioAlbumActivity;)Ljava/lang/Long;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/AudioAlbumActivity;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/perm/kate/AudioAlbumActivity;->owner_id:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic access$100(Lcom/perm/kate/AudioAlbumActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/AudioAlbumActivity;

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/perm/kate/AudioAlbumActivity;->is_edit:Z

    return v0
.end method

.method static synthetic access$200(Lcom/perm/kate/AudioAlbumActivity;)Ljava/lang/Long;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/AudioAlbumActivity;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/perm/kate/AudioAlbumActivity;->album_id:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic access$300(Lcom/perm/kate/AudioAlbumActivity;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/AudioAlbumActivity;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/perm/kate/AudioAlbumActivity;->edit_callback:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$400(Lcom/perm/kate/AudioAlbumActivity;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/AudioAlbumActivity;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/perm/kate/AudioAlbumActivity;->callback:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$500(Lcom/perm/kate/AudioAlbumActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/AudioAlbumActivity;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/perm/kate/AudioAlbumActivity;->finishOnUiThread()V

    return-void
.end method

.method static synthetic access$600(Lcom/perm/kate/AudioAlbumActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/AudioAlbumActivity;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/perm/kate/AudioAlbumActivity;->save()V

    return-void
.end method

.method static synthetic access$700(Lcom/perm/kate/AudioAlbumActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/AudioAlbumActivity;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/perm/kate/AudioAlbumActivity;->onConfirmCancel()Z

    move-result v0

    return v0
.end method

.method private finishOnUiThread()V
    .locals 1

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/perm/kate/AudioAlbumActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    :goto_0
    return-void

    .line 149
    :cond_0
    new-instance v0, Lcom/perm/kate/AudioAlbumActivity$8;

    invoke-direct {v0, p0}, Lcom/perm/kate/AudioAlbumActivity$8;-><init>(Lcom/perm/kate/AudioAlbumActivity;)V

    invoke-virtual {p0, v0}, Lcom/perm/kate/AudioAlbumActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private onConfirmCancel()Z
    .locals 5

    .prologue
    .line 128
    iget-object v2, p0, Lcom/perm/kate/AudioAlbumActivity;->tb_title:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 129
    .local v1, "text":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 130
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 131
    .local v0, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    const v2, 0x7f07044c

    invoke-virtual {v0, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f07051d

    new-instance v4, Lcom/perm/kate/AudioAlbumActivity$7;

    invoke-direct {v4, p0}, Lcom/perm/kate/AudioAlbumActivity$7;-><init>(Lcom/perm/kate/AudioAlbumActivity;)V

    .line 132
    invoke-virtual {v2, v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f070319

    new-instance v4, Lcom/perm/kate/AudioAlbumActivity$6;

    invoke-direct {v4, p0}, Lcom/perm/kate/AudioAlbumActivity$6;-><init>(Lcom/perm/kate/AudioAlbumActivity;)V

    .line 137
    invoke-virtual {v2, v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 140
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 141
    const/4 v2, 0x1

    .line 143
    .end local v0    # "builder":Landroid/support/v7/app/AlertDialog$Builder;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private save()V
    .locals 4

    .prologue
    .line 48
    iget-object v1, p0, Lcom/perm/kate/AudioAlbumActivity;->tb_title:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, "title":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/perm/kate/AudioAlbumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0702df

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 66
    :goto_0
    return-void

    .line 53
    :cond_0
    new-instance v1, Lcom/perm/kate/AudioAlbumActivity$1;

    invoke-direct {v1, p0, v0}, Lcom/perm/kate/AudioAlbumActivity$1;-><init>(Lcom/perm/kate/AudioAlbumActivity;Ljava/lang/String;)V

    .line 65
    invoke-virtual {v1}, Lcom/perm/kate/AudioAlbumActivity$1;->start()V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v2, 0x0

    .line 29
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    const v0, 0x7f03002b

    invoke-virtual {p0, v0}, Lcom/perm/kate/AudioAlbumActivity;->setContentView(I)V

    .line 31
    const v0, 0x7f070475

    invoke-virtual {p0, v0}, Lcom/perm/kate/AudioAlbumActivity;->setHeaderTitle(I)V

    .line 32
    const v0, 0x7f0e004b

    invoke-virtual {p0, v0}, Lcom/perm/kate/AudioAlbumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/perm/kate/AudioAlbumActivity;->tb_title:Landroid/widget/EditText;

    .line 33
    const v0, 0x7f0e019d

    invoke-virtual {p0, v0}, Lcom/perm/kate/AudioAlbumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/perm/kate/AudioAlbumActivity;->btn_save:Landroid/widget/Button;

    .line 34
    const v0, 0x7f0e019b

    invoke-virtual {p0, v0}, Lcom/perm/kate/AudioAlbumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/perm/kate/AudioAlbumActivity;->btn_cancel:Landroid/widget/Button;

    .line 35
    iget-object v0, p0, Lcom/perm/kate/AudioAlbumActivity;->btn_save:Landroid/widget/Button;

    iget-object v1, p0, Lcom/perm/kate/AudioAlbumActivity;->saveClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    iget-object v0, p0, Lcom/perm/kate/AudioAlbumActivity;->btn_cancel:Landroid/widget/Button;

    iget-object v1, p0, Lcom/perm/kate/AudioAlbumActivity;->cancelClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    invoke-virtual {p0}, Lcom/perm/kate/AudioAlbumActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.perm.kate.owner_id"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/AudioAlbumActivity;->owner_id:Ljava/lang/Long;

    .line 38
    invoke-virtual {p0}, Lcom/perm/kate/AudioAlbumActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.perm.kate.album_id"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/AudioAlbumActivity;->album_id:Ljava/lang/Long;

    .line 39
    invoke-virtual {p0}, Lcom/perm/kate/AudioAlbumActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.perm.kate.album_title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/AudioAlbumActivity;->album_title:Ljava/lang/String;

    .line 40
    invoke-virtual {p0}, Lcom/perm/kate/AudioAlbumActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.perm.kate.is_edit"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/perm/kate/AudioAlbumActivity;->is_edit:Z

    .line 41
    iget-boolean v0, p0, Lcom/perm/kate/AudioAlbumActivity;->is_edit:Z

    if-eqz v0, :cond_0

    .line 42
    const v0, 0x7f07018e

    invoke-virtual {p0, v0}, Lcom/perm/kate/AudioAlbumActivity;->setHeaderTitle(I)V

    .line 43
    iget-object v0, p0, Lcom/perm/kate/AudioAlbumActivity;->tb_title:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/perm/kate/AudioAlbumActivity;->album_title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 45
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 119
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 121
    invoke-direct {p0}, Lcom/perm/kate/AudioAlbumActivity;->onConfirmCancel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    const/4 v0, 0x1

    .line 124
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/perm/kate/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

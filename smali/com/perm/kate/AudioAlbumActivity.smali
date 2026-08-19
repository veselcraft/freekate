.class public Lcom/perm/kate/AudioAlbumActivity;
.super Lcom/perm/kate/BaseActivity;
.source "AudioAlbumActivity.java"


# instance fields
.field private album_id:Ljava/lang/Long;

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

    .line 17
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    .line 62
    new-instance v0, Lcom/perm/kate/AudioAlbumActivity$2;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/AudioAlbumActivity$2;-><init>(Lcom/perm/kate/AudioAlbumActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/AudioAlbumActivity;->callback:Lcom/perm/kate/session/Callback;

    .line 79
    new-instance v0, Lcom/perm/kate/AudioAlbumActivity$3;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/AudioAlbumActivity$3;-><init>(Lcom/perm/kate/AudioAlbumActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/AudioAlbumActivity;->edit_callback:Lcom/perm/kate/session/Callback;

    .line 96
    new-instance v0, Lcom/perm/kate/AudioAlbumActivity$4;

    invoke-direct {v0, p0}, Lcom/perm/kate/AudioAlbumActivity$4;-><init>(Lcom/perm/kate/AudioAlbumActivity;)V

    iput-object v0, p0, Lcom/perm/kate/AudioAlbumActivity;->saveClickListener:Landroid/view/View$OnClickListener;

    .line 103
    new-instance v0, Lcom/perm/kate/AudioAlbumActivity$5;

    invoke-direct {v0, p0}, Lcom/perm/kate/AudioAlbumActivity$5;-><init>(Lcom/perm/kate/AudioAlbumActivity;)V

    iput-object v0, p0, Lcom/perm/kate/AudioAlbumActivity;->cancelClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/AudioAlbumActivity;)Z
    .locals 0

    .line 17
    iget-boolean p0, p0, Lcom/perm/kate/AudioAlbumActivity;->is_edit:Z

    return p0
.end method

.method static synthetic access$100(Lcom/perm/kate/AudioAlbumActivity;)Ljava/lang/Long;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/perm/kate/AudioAlbumActivity;->album_id:Ljava/lang/Long;

    return-object p0
.end method

.method static synthetic access$200(Lcom/perm/kate/AudioAlbumActivity;)Ljava/lang/Long;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/perm/kate/AudioAlbumActivity;->owner_id:Ljava/lang/Long;

    return-object p0
.end method

.method static synthetic access$300(Lcom/perm/kate/AudioAlbumActivity;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/perm/kate/AudioAlbumActivity;->edit_callback:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$400(Lcom/perm/kate/AudioAlbumActivity;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/perm/kate/AudioAlbumActivity;->callback:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$500(Lcom/perm/kate/AudioAlbumActivity;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/perm/kate/AudioAlbumActivity;->finishOnUiThread()V

    return-void
.end method

.method static synthetic access$600(Lcom/perm/kate/AudioAlbumActivity;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/perm/kate/AudioAlbumActivity;->save()V

    return-void
.end method

.method static synthetic access$700(Lcom/perm/kate/AudioAlbumActivity;)Z
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/perm/kate/AudioAlbumActivity;->onConfirmCancel()Z

    move-result p0

    return p0
.end method

.method private finishOnUiThread()V
    .locals 1

    .line 141
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 143
    :cond_0
    new-instance v0, Lcom/perm/kate/AudioAlbumActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/perm/kate/AudioAlbumActivity$$ExternalSyntheticLambda0;-><init>(Lcom/perm/kate/AudioAlbumActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private onConfirmCancel()Z
    .locals 4

    .line 122
    iget-object v0, p0, Lcom/perm/kate/AudioAlbumActivity;->tb_title:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f04de

    .line 125
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0f05a7

    new-instance v3, Lcom/perm/kate/AudioAlbumActivity$7;

    invoke-direct {v3, p0}, Lcom/perm/kate/AudioAlbumActivity$7;-><init>(Lcom/perm/kate/AudioAlbumActivity;)V

    .line 126
    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0f037a

    new-instance v3, Lcom/perm/kate/AudioAlbumActivity$6;

    invoke-direct {v3, p0}, Lcom/perm/kate/AudioAlbumActivity$6;-><init>(Lcom/perm/kate/AudioAlbumActivity;)V

    .line 131
    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 134
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private save()V
    .locals 3

    .line 45
    iget-object v0, p0, Lcom/perm/kate/AudioAlbumActivity;->tb_title:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f033c

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 50
    :cond_0
    new-instance v1, Lcom/perm/kate/AudioAlbumActivity$1;

    invoke-direct {v1, p0, v0}, Lcom/perm/kate/AudioAlbumActivity$1;-><init>(Lcom/perm/kate/AudioAlbumActivity;Ljava/lang/String;)V

    .line 59
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 26
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c002d

    .line 27
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setContentView(I)V

    const p1, 0x7f0f0504

    .line 28
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setHeaderTitle(I)V

    const p1, 0x7f09033a

    .line 29
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/perm/kate/AudioAlbumActivity;->tb_title:Landroid/widget/EditText;

    const p1, 0x7f090078

    .line 30
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    const v0, 0x7f09006a

    .line 31
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 32
    iget-object v1, p0, Lcom/perm/kate/AudioAlbumActivity;->saveClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    iget-object p1, p0, Lcom/perm/kate/AudioAlbumActivity;->cancelClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.perm.kate.owner_id"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/AudioAlbumActivity;->owner_id:Ljava/lang/Long;

    .line 35
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.perm.kate.album_id"

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/AudioAlbumActivity;->album_id:Ljava/lang/Long;

    .line 36
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.perm.kate.album_title"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 37
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.perm.kate.is_edit"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/perm/kate/AudioAlbumActivity;->is_edit:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0f01ec

    .line 39
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseActivity;->setHeaderTitle(I)V

    .line 40
    iget-object v0, p0, Lcom/perm/kate/AudioAlbumActivity;->tb_title:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 115
    invoke-direct {p0}, Lcom/perm/kate/AudioAlbumActivity;->onConfirmCancel()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 118
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/perm/kate/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

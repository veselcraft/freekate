.class public Lcom/perm/kate/VideoAlbumActivity;
.super Lcom/perm/kate/BaseActivity;
.source "VideoAlbumActivity.java"


# instance fields
.field private album_id:Ljava/lang/Long;

.field private album_title:Ljava/lang/String;

.field private btn_cancel:Landroid/widget/Button;

.field private btn_save:Landroid/widget/Button;

.field private callback:Lcom/perm/kate/session/Callback;

.field private cancelClickListener:Landroid/view/View$OnClickListener;

.field private edit_callback:Lcom/perm/kate/session/Callback;

.field private group_id:Ljava/lang/Long;

.field private is_edit:Z

.field private privacy:Ljava/lang/String;

.field private saveClickListener:Landroid/view/View$OnClickListener;

.field private sp_privacy:Landroid/widget/Spinner;

.field private tb_title:Landroid/widget/EditText;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    .line 80
    new-instance v0, Lcom/perm/kate/VideoAlbumActivity$2;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/VideoAlbumActivity$2;-><init>(Lcom/perm/kate/VideoAlbumActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/VideoAlbumActivity;->edit_callback:Lcom/perm/kate/session/Callback;

    .line 97
    new-instance v0, Lcom/perm/kate/VideoAlbumActivity$3;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/VideoAlbumActivity$3;-><init>(Lcom/perm/kate/VideoAlbumActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/VideoAlbumActivity;->callback:Lcom/perm/kate/session/Callback;

    .line 114
    new-instance v0, Lcom/perm/kate/VideoAlbumActivity$4;

    invoke-direct {v0, p0}, Lcom/perm/kate/VideoAlbumActivity$4;-><init>(Lcom/perm/kate/VideoAlbumActivity;)V

    iput-object v0, p0, Lcom/perm/kate/VideoAlbumActivity;->saveClickListener:Landroid/view/View$OnClickListener;

    .line 121
    new-instance v0, Lcom/perm/kate/VideoAlbumActivity$5;

    invoke-direct {v0, p0}, Lcom/perm/kate/VideoAlbumActivity$5;-><init>(Lcom/perm/kate/VideoAlbumActivity;)V

    iput-object v0, p0, Lcom/perm/kate/VideoAlbumActivity;->cancelClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/VideoAlbumActivity;)Z
    .locals 0

    .line 18
    iget-boolean p0, p0, Lcom/perm/kate/VideoAlbumActivity;->is_edit:Z

    return p0
.end method

.method static synthetic access$100(Lcom/perm/kate/VideoAlbumActivity;)Ljava/lang/Long;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/perm/kate/VideoAlbumActivity;->album_id:Ljava/lang/Long;

    return-object p0
.end method

.method static synthetic access$200(Lcom/perm/kate/VideoAlbumActivity;)Ljava/lang/Long;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/perm/kate/VideoAlbumActivity;->group_id:Ljava/lang/Long;

    return-object p0
.end method

.method static synthetic access$300(Lcom/perm/kate/VideoAlbumActivity;)Ljava/lang/String;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/perm/kate/VideoAlbumActivity;->title:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/perm/kate/VideoAlbumActivity;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/perm/kate/VideoAlbumActivity;->edit_callback:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$500(Lcom/perm/kate/VideoAlbumActivity;)Ljava/lang/String;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/perm/kate/VideoAlbumActivity;->privacy:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/perm/kate/VideoAlbumActivity;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/perm/kate/VideoAlbumActivity;->callback:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$700(Lcom/perm/kate/VideoAlbumActivity;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/perm/kate/VideoAlbumActivity;->finishOnUiThread()V

    return-void
.end method

.method static synthetic access$800(Lcom/perm/kate/VideoAlbumActivity;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/perm/kate/VideoAlbumActivity;->save()V

    return-void
.end method

.method static synthetic access$900(Lcom/perm/kate/VideoAlbumActivity;)Z
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/perm/kate/VideoAlbumActivity;->onConfirmCancel()Z

    move-result p0

    return p0
.end method

.method private finishOnUiThread()V
    .locals 1

    .line 159
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 161
    :cond_0
    new-instance v0, Lcom/perm/kate/VideoAlbumActivity$8;

    invoke-direct {v0, p0}, Lcom/perm/kate/VideoAlbumActivity$8;-><init>(Lcom/perm/kate/VideoAlbumActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private onConfirmCancel()Z
    .locals 4

    .line 140
    iget-object v0, p0, Lcom/perm/kate/VideoAlbumActivity;->tb_title:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    .line 141
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f04de

    .line 143
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0f05a7

    new-instance v3, Lcom/perm/kate/VideoAlbumActivity$7;

    invoke-direct {v3, p0}, Lcom/perm/kate/VideoAlbumActivity$7;-><init>(Lcom/perm/kate/VideoAlbumActivity;)V

    .line 144
    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0f037a

    new-instance v3, Lcom/perm/kate/VideoAlbumActivity$6;

    invoke-direct {v3, p0}, Lcom/perm/kate/VideoAlbumActivity$6;-><init>(Lcom/perm/kate/VideoAlbumActivity;)V

    .line 149
    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 152
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

    .line 62
    iget-object v0, p0, Lcom/perm/kate/VideoAlbumActivity;->tb_title:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/VideoAlbumActivity;->title:Ljava/lang/String;

    const-string v1, ""

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f033c

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/VideoAlbumActivity;->sp_privacy:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    invoke-static {v0}, Lcom/perm/kate/api/Privacy;->getPrivacyValueFromInt(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/VideoAlbumActivity;->privacy:Ljava/lang/String;

    .line 68
    new-instance v0, Lcom/perm/kate/VideoAlbumActivity$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/VideoAlbumActivity$1;-><init>(Lcom/perm/kate/VideoAlbumActivity;)V

    .line 77
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 35
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0132

    .line 36
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setContentView(I)V

    const p1, 0x7f0f0509

    .line 37
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setHeaderTitle(I)V

    const p1, 0x7f09033a

    .line 38
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/perm/kate/VideoAlbumActivity;->tb_title:Landroid/widget/EditText;

    const p1, 0x7f090078

    .line 39
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/perm/kate/VideoAlbumActivity;->btn_save:Landroid/widget/Button;

    const p1, 0x7f09006a

    .line 40
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/perm/kate/VideoAlbumActivity;->btn_cancel:Landroid/widget/Button;

    .line 41
    iget-object p1, p0, Lcom/perm/kate/VideoAlbumActivity;->btn_save:Landroid/widget/Button;

    iget-object v0, p0, Lcom/perm/kate/VideoAlbumActivity;->saveClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    iget-object p1, p0, Lcom/perm/kate/VideoAlbumActivity;->btn_cancel:Landroid/widget/Button;

    iget-object v0, p0, Lcom/perm/kate/VideoAlbumActivity;->cancelClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0902f3

    .line 43
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lcom/perm/kate/VideoAlbumActivity;->sp_privacy:Landroid/widget/Spinner;

    .line 44
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.perm.kate.owner_id"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 45
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    const-wide/16 v3, -0x1

    .line 46
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    mul-long v5, v5, v3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/VideoAlbumActivity;->group_id:Ljava/lang/Long;

    .line 48
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.perm.kate.album_id"

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/VideoAlbumActivity;->album_id:Ljava/lang/Long;

    .line 49
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.perm.kate.album_title"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/VideoAlbumActivity;->album_title:Ljava/lang/String;

    .line 50
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "com.perm.kate.is_edit"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/perm/kate/VideoAlbumActivity;->is_edit:Z

    if-eqz p1, :cond_1

    const p1, 0x7f0f01ec

    .line 52
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setHeaderTitle(I)V

    .line 53
    iget-object p1, p0, Lcom/perm/kate/VideoAlbumActivity;->tb_title:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/perm/kate/VideoAlbumActivity;->album_title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 54
    iget-object p1, p0, Lcom/perm/kate/VideoAlbumActivity;->tb_title:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    const p1, 0x7f0903a3

    .line 56
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 57
    iget-object p1, p0, Lcom/perm/kate/VideoAlbumActivity;->sp_privacy:Landroid/widget/Spinner;

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 133
    invoke-direct {p0}, Lcom/perm/kate/VideoAlbumActivity;->onConfirmCancel()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 136
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/perm/kate/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

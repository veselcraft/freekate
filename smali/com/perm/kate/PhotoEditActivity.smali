.class public Lcom/perm/kate/PhotoEditActivity;
.super Lcom/perm/kate/BaseActivity;
.source "PhotoEditActivity.java"


# instance fields
.field private btn_status_cancel:Landroid/widget/Button;

.field private btn_status_save:Landroid/widget/Button;

.field private callback_save:Lcom/perm/kate/session/Callback;

.field private cancel_OnClickListerer:Landroid/view/View$OnClickListener;

.field private owner_id:Ljava/lang/Long;

.field private pid:J

.field private save_OnClickListerer:Landroid/view/View$OnClickListener;

.field private tb_caption:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    .line 43
    new-instance v0, Lcom/perm/kate/PhotoEditActivity$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/PhotoEditActivity$1;-><init>(Lcom/perm/kate/PhotoEditActivity;)V

    iput-object v0, p0, Lcom/perm/kate/PhotoEditActivity;->save_OnClickListerer:Landroid/view/View$OnClickListener;

    .line 68
    new-instance v0, Lcom/perm/kate/PhotoEditActivity$2;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/PhotoEditActivity$2;-><init>(Lcom/perm/kate/PhotoEditActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/PhotoEditActivity;->callback_save:Lcom/perm/kate/session/Callback;

    .line 93
    new-instance v0, Lcom/perm/kate/PhotoEditActivity$3;

    invoke-direct {v0, p0}, Lcom/perm/kate/PhotoEditActivity$3;-><init>(Lcom/perm/kate/PhotoEditActivity;)V

    iput-object v0, p0, Lcom/perm/kate/PhotoEditActivity;->cancel_OnClickListerer:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/PhotoEditActivity;)Landroid/widget/EditText;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/perm/kate/PhotoEditActivity;->tb_caption:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$100(Lcom/perm/kate/PhotoEditActivity;)Ljava/lang/Long;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/perm/kate/PhotoEditActivity;->owner_id:Ljava/lang/Long;

    return-object p0
.end method

.method static synthetic access$200(Lcom/perm/kate/PhotoEditActivity;)J
    .locals 2

    .line 14
    iget-wide v0, p0, Lcom/perm/kate/PhotoEditActivity;->pid:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/perm/kate/PhotoEditActivity;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/perm/kate/PhotoEditActivity;->callback_save:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$400(Lcom/perm/kate/PhotoEditActivity;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/perm/kate/PhotoEditActivity;->updatePhoto()V

    return-void
.end method

.method static synthetic access$500(Lcom/perm/kate/PhotoEditActivity;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/perm/kate/PhotoEditActivity;->resultOk()V

    return-void
.end method

.method private resultOk()V
    .locals 3

    .line 63
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 64
    iget-object v1, p0, Lcom/perm/kate/PhotoEditActivity;->tb_caption:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.perm.kate.photo_caption"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, -0x1

    .line 65
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    return-void
.end method

.method private updatePhoto()V
    .locals 7

    .line 58
    iget-object v0, p0, Lcom/perm/kate/PhotoEditActivity;->tb_caption:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 59
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v2, p0, Lcom/perm/kate/PhotoEditActivity;->pid:J

    iget-object v0, p0, Lcom/perm/kate/PhotoEditActivity;->owner_id:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v0, p0, Lcom/perm/kate/PhotoEditActivity;->tb_caption:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lcom/perm/kate/db/DataHelper;->updatePhotoText(JJLjava/lang/String;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 24
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c00ee

    .line 25
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setContentView(I)V

    const p1, 0x7f0f04f6

    .line 26
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setHeaderTitle(I)V

    const p1, 0x7f09031f

    .line 27
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/perm/kate/PhotoEditActivity;->tb_caption:Landroid/widget/EditText;

    const p1, 0x7f090078

    .line 28
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/perm/kate/PhotoEditActivity;->btn_status_save:Landroid/widget/Button;

    .line 29
    iget-object v0, p0, Lcom/perm/kate/PhotoEditActivity;->save_OnClickListerer:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f09006a

    .line 30
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/perm/kate/PhotoEditActivity;->btn_status_cancel:Landroid/widget/Button;

    .line 31
    iget-object v0, p0, Lcom/perm/kate/PhotoEditActivity;->cancel_OnClickListerer:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.perm.kate.owner_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 34
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/PhotoEditActivity;->owner_id:Ljava/lang/Long;

    .line 35
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-wide/16 v0, 0x0

    const-string v2, "com.perm.kate.pid"

    invoke-virtual {p1, v2, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/perm/kate/PhotoEditActivity;->pid:J

    .line 36
    sget-object p1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v2, p0, Lcom/perm/kate/PhotoEditActivity;->owner_id:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/perm/kate/db/DataHelper;->fetchPhotoFull(JJ)Lcom/perm/kate/api/Photo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 37
    iget-object p1, p1, Lcom/perm/kate/api/Photo;->phototext:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 38
    iget-object v0, p0, Lcom/perm/kate/PhotoEditActivity;->tb_caption:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 39
    iget-object p1, p0, Lcom/perm/kate/PhotoEditActivity;->tb_caption:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->length()I

    move-result v0

    iget-object v1, p0, Lcom/perm/kate/PhotoEditActivity;->tb_caption:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/EditText;->setSelection(II)V

    :cond_1
    return-void
.end method

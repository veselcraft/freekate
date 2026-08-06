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

    .prologue
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
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/PhotoEditActivity;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/perm/kate/PhotoEditActivity;->tb_caption:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/perm/kate/PhotoEditActivity;)Ljava/lang/Long;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/PhotoEditActivity;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/perm/kate/PhotoEditActivity;->owner_id:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic access$200(Lcom/perm/kate/PhotoEditActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/perm/kate/PhotoEditActivity;

    .prologue
    .line 14
    iget-wide v0, p0, Lcom/perm/kate/PhotoEditActivity;->pid:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/perm/kate/PhotoEditActivity;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/PhotoEditActivity;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/perm/kate/PhotoEditActivity;->callback_save:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$400(Lcom/perm/kate/PhotoEditActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/PhotoEditActivity;

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/perm/kate/PhotoEditActivity;->updatePhoto()V

    return-void
.end method

.method static synthetic access$500(Lcom/perm/kate/PhotoEditActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/PhotoEditActivity;

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/perm/kate/PhotoEditActivity;->resultOk()V

    return-void
.end method

.method private resultOk()V
    .locals 3

    .prologue
    .line 63
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 64
    .local v0, "data":Landroid/content/Intent;
    const-string v1, "com.perm.kate.photo_caption"

    iget-object v2, p0, Lcom/perm/kate/PhotoEditActivity;->tb_caption:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/perm/kate/PhotoEditActivity;->setResult(ILandroid/content/Intent;)V

    .line 66
    return-void
.end method

.method private updatePhoto()V
    .locals 7

    .prologue
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

    .line 60
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 24
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    const v2, 0x7f0300d3

    invoke-virtual {p0, v2}, Lcom/perm/kate/PhotoEditActivity;->setContentView(I)V

    .line 26
    const v2, 0x7f070466

    invoke-virtual {p0, v2}, Lcom/perm/kate/PhotoEditActivity;->setHeaderTitle(I)V

    .line 27
    const v2, 0x7f0e028a

    invoke-virtual {p0, v2}, Lcom/perm/kate/PhotoEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/perm/kate/PhotoEditActivity;->tb_caption:Landroid/widget/EditText;

    .line 28
    const v2, 0x7f0e019d

    invoke-virtual {p0, v2}, Lcom/perm/kate/PhotoEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/perm/kate/PhotoEditActivity;->btn_status_save:Landroid/widget/Button;

    .line 29
    iget-object v2, p0, Lcom/perm/kate/PhotoEditActivity;->btn_status_save:Landroid/widget/Button;

    iget-object v3, p0, Lcom/perm/kate/PhotoEditActivity;->save_OnClickListerer:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    const v2, 0x7f0e019b

    invoke-virtual {p0, v2}, Lcom/perm/kate/PhotoEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/perm/kate/PhotoEditActivity;->btn_status_cancel:Landroid/widget/Button;

    .line 31
    iget-object v2, p0, Lcom/perm/kate/PhotoEditActivity;->btn_status_cancel:Landroid/widget/Button;

    iget-object v3, p0, Lcom/perm/kate/PhotoEditActivity;->cancel_OnClickListerer:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    invoke-virtual {p0}, Lcom/perm/kate/PhotoEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.perm.kate.owner_id"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, "id":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 34
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/perm/kate/PhotoEditActivity;->owner_id:Ljava/lang/Long;

    .line 35
    :cond_0
    invoke-virtual {p0}, Lcom/perm/kate/PhotoEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.perm.kate.pid"

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/perm/kate/PhotoEditActivity;->pid:J

    .line 36
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v4, p0, Lcom/perm/kate/PhotoEditActivity;->pid:J

    iget-object v3, p0, Lcom/perm/kate/PhotoEditActivity;->owner_id:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/perm/kate/db/DataHelper;->fetchPhotoFull(JJ)Lcom/perm/kate/api/Photo;

    move-result-object v1

    .line 37
    .local v1, "photo":Lcom/perm/kate/api/Photo;
    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/perm/kate/api/Photo;->phototext:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 38
    iget-object v2, p0, Lcom/perm/kate/PhotoEditActivity;->tb_caption:Landroid/widget/EditText;

    iget-object v3, v1, Lcom/perm/kate/api/Photo;->phototext:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 39
    iget-object v2, p0, Lcom/perm/kate/PhotoEditActivity;->tb_caption:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/perm/kate/PhotoEditActivity;->tb_caption:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v3

    iget-object v4, p0, Lcom/perm/kate/PhotoEditActivity;->tb_caption:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/EditText;->setSelection(II)V

    .line 41
    :cond_1
    return-void
.end method

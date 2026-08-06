.class public Lcom/perm/kate/SearchAudioParamsActivity;
.super Lcom/perm/kate/BaseActivity;
.source "SearchAudioParamsActivity.java"


# instance fields
.field private btn_cancel:Landroid/widget/Button;

.field private btn_clear:Landroid/widget/Button;

.field private btn_search:Landroid/widget/Button;

.field private cancel_OnClickListener:Landroid/view/View$OnClickListener;

.field private cb_performer_only:Landroid/widget/CheckBox;

.field private clear_OnClickListener:Landroid/view/View$OnClickListener;

.field private performer_only:Ljava/lang/Integer;

.field private search_OnClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    .line 37
    new-instance v0, Lcom/perm/kate/SearchAudioParamsActivity$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/SearchAudioParamsActivity$1;-><init>(Lcom/perm/kate/SearchAudioParamsActivity;)V

    iput-object v0, p0, Lcom/perm/kate/SearchAudioParamsActivity;->cancel_OnClickListener:Landroid/view/View$OnClickListener;

    .line 44
    new-instance v0, Lcom/perm/kate/SearchAudioParamsActivity$2;

    invoke-direct {v0, p0}, Lcom/perm/kate/SearchAudioParamsActivity$2;-><init>(Lcom/perm/kate/SearchAudioParamsActivity;)V

    iput-object v0, p0, Lcom/perm/kate/SearchAudioParamsActivity;->clear_OnClickListener:Landroid/view/View$OnClickListener;

    .line 52
    new-instance v0, Lcom/perm/kate/SearchAudioParamsActivity$3;

    invoke-direct {v0, p0}, Lcom/perm/kate/SearchAudioParamsActivity$3;-><init>(Lcom/perm/kate/SearchAudioParamsActivity;)V

    iput-object v0, p0, Lcom/perm/kate/SearchAudioParamsActivity;->search_OnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/SearchAudioParamsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/SearchAudioParamsActivity;

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/perm/kate/SearchAudioParamsActivity;->clearValues()V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/SearchAudioParamsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/SearchAudioParamsActivity;

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/perm/kate/SearchAudioParamsActivity;->setViews()V

    return-void
.end method

.method static synthetic access$200(Lcom/perm/kate/SearchAudioParamsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/SearchAudioParamsActivity;

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/perm/kate/SearchAudioParamsActivity;->onSearch()V

    return-void
.end method

.method private clearValues()V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchAudioParamsActivity;->performer_only:Ljava/lang/Integer;

    .line 65
    return-void
.end method

.method private getDataIntentFromValues()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 77
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 78
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "com.perm.kate.performer_only"

    iget-object v2, p0, Lcom/perm/kate/SearchAudioParamsActivity;->performer_only:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 79
    return-object v0
.end method

.method private onSearch()V
    .locals 2

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/perm/kate/SearchAudioParamsActivity;->readValues()V

    .line 72
    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/perm/kate/SearchAudioParamsActivity;->getDataIntentFromValues()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/perm/kate/SearchAudioParamsActivity;->setResult(ILandroid/content/Intent;)V

    .line 73
    invoke-virtual {p0}, Lcom/perm/kate/SearchAudioParamsActivity;->finish()V

    .line 74
    return-void
.end method

.method private readValues()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/perm/kate/SearchAudioParamsActivity;->cb_performer_only:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchAudioParamsActivity;->performer_only:Ljava/lang/Integer;

    .line 68
    return-void

    .line 67
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setViews()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 60
    iget-object v1, p0, Lcom/perm/kate/SearchAudioParamsActivity;->cb_performer_only:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/perm/kate/SearchAudioParamsActivity;->performer_only:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v0, v2, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 61
    return-void

    .line 60
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 21
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    const v1, 0x7f0300ef

    invoke-virtual {p0, v1}, Lcom/perm/kate/SearchAudioParamsActivity;->setContentView(I)V

    .line 23
    const v1, 0x7f070252

    invoke-virtual {p0, v1}, Lcom/perm/kate/SearchAudioParamsActivity;->setHeaderTitle(I)V

    .line 24
    const v1, 0x7f0e01a1

    invoke-virtual {p0, v1}, Lcom/perm/kate/SearchAudioParamsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/perm/kate/SearchAudioParamsActivity;->btn_search:Landroid/widget/Button;

    .line 25
    iget-object v1, p0, Lcom/perm/kate/SearchAudioParamsActivity;->btn_search:Landroid/widget/Button;

    iget-object v2, p0, Lcom/perm/kate/SearchAudioParamsActivity;->search_OnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    const v1, 0x7f0e01a0

    invoke-virtual {p0, v1}, Lcom/perm/kate/SearchAudioParamsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/perm/kate/SearchAudioParamsActivity;->btn_clear:Landroid/widget/Button;

    .line 27
    iget-object v1, p0, Lcom/perm/kate/SearchAudioParamsActivity;->btn_clear:Landroid/widget/Button;

    iget-object v2, p0, Lcom/perm/kate/SearchAudioParamsActivity;->clear_OnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    const v1, 0x7f0e019b

    invoke-virtual {p0, v1}, Lcom/perm/kate/SearchAudioParamsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/perm/kate/SearchAudioParamsActivity;->btn_cancel:Landroid/widget/Button;

    .line 29
    iget-object v1, p0, Lcom/perm/kate/SearchAudioParamsActivity;->btn_cancel:Landroid/widget/Button;

    iget-object v2, p0, Lcom/perm/kate/SearchAudioParamsActivity;->cancel_OnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    invoke-virtual {p0}, Lcom/perm/kate/SearchAudioParamsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 31
    .local v0, "i":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 32
    const-string v1, "com.perm.kate.performer_only"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/perm/kate/SearchAudioParamsActivity;->performer_only:Ljava/lang/Integer;

    .line 33
    :cond_0
    const v1, 0x7f0e0302

    invoke-virtual {p0, v1}, Lcom/perm/kate/SearchAudioParamsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/perm/kate/SearchAudioParamsActivity;->cb_performer_only:Landroid/widget/CheckBox;

    .line 34
    invoke-direct {p0}, Lcom/perm/kate/SearchAudioParamsActivity;->setViews()V

    .line 35
    return-void
.end method

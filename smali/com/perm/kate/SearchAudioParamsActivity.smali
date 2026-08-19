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

    .line 9
    invoke-direct {p0}, Lcom/perm/kate/SearchAudioParamsActivity;->clearValues()V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/SearchAudioParamsActivity;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/perm/kate/SearchAudioParamsActivity;->setViews()V

    return-void
.end method

.method static synthetic access$200(Lcom/perm/kate/SearchAudioParamsActivity;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/perm/kate/SearchAudioParamsActivity;->onSearch()V

    return-void
.end method

.method private clearValues()V
    .locals 1

    const/4 v0, 0x0

    .line 64
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchAudioParamsActivity;->performer_only:Ljava/lang/Integer;

    return-void
.end method

.method private getDataIntentFromValues()Landroid/content/Intent;
    .locals 3

    .line 77
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 78
    iget-object v1, p0, Lcom/perm/kate/SearchAudioParamsActivity;->performer_only:Ljava/lang/Integer;

    const-string v2, "com.perm.kate.performer_only"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    return-object v0
.end method

.method private onSearch()V
    .locals 2

    .line 71
    invoke-direct {p0}, Lcom/perm/kate/SearchAudioParamsActivity;->readValues()V

    .line 72
    invoke-direct {p0}, Lcom/perm/kate/SearchAudioParamsActivity;->getDataIntentFromValues()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 73
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private readValues()V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/perm/kate/SearchAudioParamsActivity;->cb_performer_only:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchAudioParamsActivity;->performer_only:Ljava/lang/Integer;

    return-void
.end method

.method private setViews()V
    .locals 3

    .line 60
    iget-object v0, p0, Lcom/perm/kate/SearchAudioParamsActivity;->cb_performer_only:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/perm/kate/SearchAudioParamsActivity;->performer_only:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 21
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c010b

    .line 22
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setContentView(I)V

    const p1, 0x7f0f02ac

    .line 23
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setHeaderTitle(I)V

    const p1, 0x7f090091

    .line 24
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/perm/kate/SearchAudioParamsActivity;->btn_search:Landroid/widget/Button;

    .line 25
    iget-object v0, p0, Lcom/perm/kate/SearchAudioParamsActivity;->search_OnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f09006f

    .line 26
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/perm/kate/SearchAudioParamsActivity;->btn_clear:Landroid/widget/Button;

    .line 27
    iget-object v0, p0, Lcom/perm/kate/SearchAudioParamsActivity;->clear_OnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f09006a

    .line 28
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/perm/kate/SearchAudioParamsActivity;->btn_cancel:Landroid/widget/Button;

    .line 29
    iget-object v0, p0, Lcom/perm/kate/SearchAudioParamsActivity;->cancel_OnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    const-string v1, "com.perm.kate.performer_only"

    .line 32
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/SearchAudioParamsActivity;->performer_only:Ljava/lang/Integer;

    :cond_0
    const p1, 0x7f0900b2

    .line 33
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/perm/kate/SearchAudioParamsActivity;->cb_performer_only:Landroid/widget/CheckBox;

    .line 34
    invoke-direct {p0}, Lcom/perm/kate/SearchAudioParamsActivity;->setViews()V

    return-void
.end method

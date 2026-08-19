.class public Lcom/perm/kate/SearchVideoParamsActivity;
.super Lcom/perm/kate/BaseActivity;
.source "SearchVideoParamsActivity.java"


# instance fields
.field private adult:Ljava/lang/Integer;

.field private btn_cancel:Landroid/widget/Button;

.field private btn_clear:Landroid/widget/Button;

.field private btn_search:Landroid/widget/Button;

.field private cancel_OnClickListerer:Landroid/view/View$OnClickListener;

.field private cb_adult:Landroid/widget/CheckBox;

.field private cb_hd:Landroid/widget/CheckBox;

.field private clear_OnClickListerer:Landroid/view/View$OnClickListener;

.field private filters:Ljava/lang/String;

.field private hd:Ljava/lang/Integer;

.field private search_OnClickListener:Landroid/view/View$OnClickListener;

.field private sort:Ljava/lang/Integer;

.field private sp_video_duration:Landroid/widget/Spinner;

.field private sp_video_sort:Landroid/widget/Spinner;

.field private sp_video_type:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    .line 56
    new-instance v0, Lcom/perm/kate/SearchVideoParamsActivity$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/SearchVideoParamsActivity$1;-><init>(Lcom/perm/kate/SearchVideoParamsActivity;)V

    iput-object v0, p0, Lcom/perm/kate/SearchVideoParamsActivity;->cancel_OnClickListerer:Landroid/view/View$OnClickListener;

    .line 63
    new-instance v0, Lcom/perm/kate/SearchVideoParamsActivity$2;

    invoke-direct {v0, p0}, Lcom/perm/kate/SearchVideoParamsActivity$2;-><init>(Lcom/perm/kate/SearchVideoParamsActivity;)V

    iput-object v0, p0, Lcom/perm/kate/SearchVideoParamsActivity;->clear_OnClickListerer:Landroid/view/View$OnClickListener;

    .line 71
    new-instance v0, Lcom/perm/kate/SearchVideoParamsActivity$3;

    invoke-direct {v0, p0}, Lcom/perm/kate/SearchVideoParamsActivity$3;-><init>(Lcom/perm/kate/SearchVideoParamsActivity;)V

    iput-object v0, p0, Lcom/perm/kate/SearchVideoParamsActivity;->search_OnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/SearchVideoParamsActivity;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/perm/kate/SearchVideoParamsActivity;->clearValues()V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/SearchVideoParamsActivity;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/perm/kate/SearchVideoParamsActivity;->setViews()V

    return-void
.end method

.method static synthetic access$200(Lcom/perm/kate/SearchVideoParamsActivity;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/perm/kate/SearchVideoParamsActivity;->onSearch()V

    return-void
.end method

.method private clearValues()V
    .locals 2

    const/4 v0, 0x0

    .line 107
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchVideoParamsActivity;->adult:Ljava/lang/Integer;

    const/4 v1, 0x0

    .line 108
    iput-object v1, p0, Lcom/perm/kate/SearchVideoParamsActivity;->filters:Ljava/lang/String;

    const/4 v1, 0x2

    .line 109
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/perm/kate/SearchVideoParamsActivity;->sort:Ljava/lang/Integer;

    .line 110
    iput-object v0, p0, Lcom/perm/kate/SearchVideoParamsActivity;->hd:Ljava/lang/Integer;

    return-void
.end method

.method private getDataIntentFromValues()Landroid/content/Intent;
    .locals 3

    .line 150
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 151
    iget-object v1, p0, Lcom/perm/kate/SearchVideoParamsActivity;->adult:Ljava/lang/Integer;

    const-string v2, "com.perm.kate.adult"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 152
    iget-object v1, p0, Lcom/perm/kate/SearchVideoParamsActivity;->filters:Ljava/lang/String;

    const-string v2, "com.perm.kate.filters"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    iget-object v1, p0, Lcom/perm/kate/SearchVideoParamsActivity;->sort:Ljava/lang/Integer;

    const-string v2, "com.perm.kate.sort"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 154
    iget-object v1, p0, Lcom/perm/kate/SearchVideoParamsActivity;->hd:Ljava/lang/Integer;

    const-string v2, "com.perm.kate.hd"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    return-object v0
.end method

.method private onSearch()V
    .locals 2

    .line 144
    invoke-direct {p0}, Lcom/perm/kate/SearchVideoParamsActivity;->readValues()V

    .line 145
    invoke-direct {p0}, Lcom/perm/kate/SearchVideoParamsActivity;->getDataIntentFromValues()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 146
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private readValues()V
    .locals 4

    .line 113
    iget-object v0, p0, Lcom/perm/kate/SearchVideoParamsActivity;->cb_adult:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchVideoParamsActivity;->adult:Ljava/lang/Integer;

    .line 114
    iget-object v0, p0, Lcom/perm/kate/SearchVideoParamsActivity;->cb_hd:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchVideoParamsActivity;->hd:Ljava/lang/Integer;

    .line 115
    iget-object v0, p0, Lcom/perm/kate/SearchVideoParamsActivity;->sp_video_type:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    const/4 v2, 0x2

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/perm/kate/SearchVideoParamsActivity;->sp_video_duration:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    .line 116
    iput-object v0, p0, Lcom/perm/kate/SearchVideoParamsActivity;->filters:Ljava/lang/String;

    goto/16 :goto_1

    :cond_0
    const-string v0, ""

    .line 118
    iput-object v0, p0, Lcom/perm/kate/SearchVideoParamsActivity;->filters:Ljava/lang/String;

    .line 120
    iget-object v0, p0, Lcom/perm/kate/SearchVideoParamsActivity;->sp_video_type:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/perm/kate/SearchVideoParamsActivity;->filters:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "mp4"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchVideoParamsActivity;->filters:Ljava/lang/String;

    goto :goto_0

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/SearchVideoParamsActivity;->sp_video_type:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/perm/kate/SearchVideoParamsActivity;->filters:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "youtube"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchVideoParamsActivity;->filters:Ljava/lang/String;

    goto :goto_0

    .line 124
    :cond_2
    iget-object v0, p0, Lcom/perm/kate/SearchVideoParamsActivity;->sp_video_type:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_3

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/perm/kate/SearchVideoParamsActivity;->filters:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "vimeo"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchVideoParamsActivity;->filters:Ljava/lang/String;

    .line 127
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/perm/kate/SearchVideoParamsActivity;->filters:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/perm/kate/SearchVideoParamsActivity;->filters:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchVideoParamsActivity;->filters:Ljava/lang/String;

    .line 130
    :cond_4
    iget-object v0, p0, Lcom/perm/kate/SearchVideoParamsActivity;->sp_video_duration:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-ne v0, v1, :cond_5

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/perm/kate/SearchVideoParamsActivity;->filters:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "short"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchVideoParamsActivity;->filters:Ljava/lang/String;

    goto :goto_1

    .line 132
    :cond_5
    iget-object v0, p0, Lcom/perm/kate/SearchVideoParamsActivity;->sp_video_duration:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-ne v0, v2, :cond_6

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/perm/kate/SearchVideoParamsActivity;->filters:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "long"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchVideoParamsActivity;->filters:Ljava/lang/String;

    .line 135
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/perm/kate/SearchVideoParamsActivity;->sp_video_sort:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-ne v0, v1, :cond_7

    const/4 v0, 0x0

    .line 136
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchVideoParamsActivity;->sort:Ljava/lang/Integer;

    goto :goto_2

    .line 137
    :cond_7
    iget-object v0, p0, Lcom/perm/kate/SearchVideoParamsActivity;->sp_video_sort:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-ne v0, v2, :cond_8

    .line 138
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchVideoParamsActivity;->sort:Ljava/lang/Integer;

    goto :goto_2

    .line 140
    :cond_8
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchVideoParamsActivity;->sort:Ljava/lang/Integer;

    :goto_2
    return-void
.end method

.method private setViews()V
    .locals 5

    .line 79
    iget-object v0, p0, Lcom/perm/kate/SearchVideoParamsActivity;->cb_adult:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/perm/kate/SearchVideoParamsActivity;->adult:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 80
    iget-object v0, p0, Lcom/perm/kate/SearchVideoParamsActivity;->cb_hd:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/perm/kate/SearchVideoParamsActivity;->hd:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v3, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 81
    iget-object v0, p0, Lcom/perm/kate/SearchVideoParamsActivity;->filters:Ljava/lang/String;

    const/4 v1, 0x2

    if-nez v0, :cond_2

    .line 82
    iget-object v0, p0, Lcom/perm/kate/SearchVideoParamsActivity;->sp_video_type:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 83
    iget-object v0, p0, Lcom/perm/kate/SearchVideoParamsActivity;->sp_video_duration:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_3

    :cond_2
    const-string v4, "mp4"

    .line 86
    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 87
    iget-object v0, p0, Lcom/perm/kate/SearchVideoParamsActivity;->sp_video_type:Landroid/widget/Spinner;

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_2

    .line 88
    :cond_3
    iget-object v0, p0, Lcom/perm/kate/SearchVideoParamsActivity;->filters:Ljava/lang/String;

    const-string v4, "youtube"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 89
    iget-object v0, p0, Lcom/perm/kate/SearchVideoParamsActivity;->sp_video_type:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_2

    .line 90
    :cond_4
    iget-object v0, p0, Lcom/perm/kate/SearchVideoParamsActivity;->filters:Ljava/lang/String;

    const-string v4, "vimeo"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 91
    iget-object v0, p0, Lcom/perm/kate/SearchVideoParamsActivity;->sp_video_type:Landroid/widget/Spinner;

    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setSelection(I)V

    .line 93
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/perm/kate/SearchVideoParamsActivity;->filters:Ljava/lang/String;

    const-string v4, "short"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 94
    iget-object v0, p0, Lcom/perm/kate/SearchVideoParamsActivity;->sp_video_duration:Landroid/widget/Spinner;

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_3

    .line 95
    :cond_6
    iget-object v0, p0, Lcom/perm/kate/SearchVideoParamsActivity;->filters:Ljava/lang/String;

    const-string v4, "long"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 96
    iget-object v0, p0, Lcom/perm/kate/SearchVideoParamsActivity;->sp_video_duration:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 99
    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/perm/kate/SearchVideoParamsActivity;->sort:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v2, 0x1

    goto :goto_4

    .line 101
    :cond_8
    iget-object v0, p0, Lcom/perm/kate/SearchVideoParamsActivity;->sort:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_9

    const/4 v2, 0x2

    .line 103
    :cond_9
    :goto_4
    iget-object v0, p0, Lcom/perm/kate/SearchVideoParamsActivity;->sp_video_sort:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setSelection(I)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 32
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c010f

    .line 33
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setContentView(I)V

    const p1, 0x7f0f02ac

    .line 34
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setHeaderTitle(I)V

    const p1, 0x7f090091

    .line 35
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/perm/kate/SearchVideoParamsActivity;->btn_search:Landroid/widget/Button;

    .line 36
    iget-object v0, p0, Lcom/perm/kate/SearchVideoParamsActivity;->search_OnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f09006f

    .line 37
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/perm/kate/SearchVideoParamsActivity;->btn_clear:Landroid/widget/Button;

    .line 38
    iget-object v0, p0, Lcom/perm/kate/SearchVideoParamsActivity;->clear_OnClickListerer:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f09006a

    .line 39
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/perm/kate/SearchVideoParamsActivity;->btn_cancel:Landroid/widget/Button;

    .line 40
    iget-object v0, p0, Lcom/perm/kate/SearchVideoParamsActivity;->cancel_OnClickListerer:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "com.perm.kate.adult"

    const/4 v1, 0x0

    .line 43
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchVideoParamsActivity;->adult:Ljava/lang/Integer;

    const-string v0, "com.perm.kate.filters"

    .line 44
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchVideoParamsActivity;->filters:Ljava/lang/String;

    const/4 v0, 0x2

    const-string v2, "com.perm.kate.sort"

    .line 45
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchVideoParamsActivity;->sort:Ljava/lang/Integer;

    const-string v0, "com.perm.kate.hd"

    .line 46
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/SearchVideoParamsActivity;->hd:Ljava/lang/Integer;

    :cond_0
    const p1, 0x7f0900a7

    .line 48
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/perm/kate/SearchVideoParamsActivity;->cb_adult:Landroid/widget/CheckBox;

    const p1, 0x7f0902fe

    .line 49
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lcom/perm/kate/SearchVideoParamsActivity;->sp_video_type:Landroid/widget/Spinner;

    const p1, 0x7f0902fc

    .line 50
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lcom/perm/kate/SearchVideoParamsActivity;->sp_video_duration:Landroid/widget/Spinner;

    const p1, 0x7f0902fd

    .line 51
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lcom/perm/kate/SearchVideoParamsActivity;->sp_video_sort:Landroid/widget/Spinner;

    const p1, 0x7f0900ac

    .line 52
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/perm/kate/SearchVideoParamsActivity;->cb_hd:Landroid/widget/CheckBox;

    .line 53
    invoke-direct {p0}, Lcom/perm/kate/SearchVideoParamsActivity;->setViews()V

    return-void
.end method

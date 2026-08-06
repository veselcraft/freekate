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

    .prologue
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
    .param p0, "x0"    # Lcom/perm/kate/SearchVideoParamsActivity;

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/perm/kate/SearchVideoParamsActivity;->clearValues()V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/SearchVideoParamsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/SearchVideoParamsActivity;

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/perm/kate/SearchVideoParamsActivity;->setViews()V

    return-void
.end method

.method static synthetic access$200(Lcom/perm/kate/SearchVideoParamsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/SearchVideoParamsActivity;

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/perm/kate/SearchVideoParamsActivity;->onSearch()V

    return-void
.end method

.method private clearValues()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 107
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchVideoParamsActivity;->adult:Ljava/lang/Integer;

    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/perm/kate/SearchVideoParamsActivity;->filters:Ljava/lang/String;

    .line 109
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchVideoParamsActivity;->sort:Ljava/lang/Integer;

    .line 110
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchVideoParamsActivity;->hd:Ljava/lang/Integer;

    .line 111
    return-void
.end method

.method private getDataIntentFromValues()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 150
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 151
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "com.perm.kate.adult"

    iget-object v2, p0, Lcom/perm/kate/SearchVideoParamsActivity;->adult:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 152
    const-string v1, "com.perm.kate.filters"

    iget-object v2, p0, Lcom/perm/kate/SearchVideoParamsActivity;->filters:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    const-string v1, "com.perm.kate.sort"

    iget-object v2, p0, Lcom/perm/kate/SearchVideoParamsActivity;->sort:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 154
    const-string v1, "com.perm.kate.hd"

    iget-object v2, p0, Lcom/perm/kate/SearchVideoParamsActivity;->hd:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 155
    return-object v0
.end method

.method private onSearch()V
    .locals 2

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/perm/kate/SearchVideoParamsActivity;->readValues()V

    .line 145
    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/perm/kate/SearchVideoParamsActivity;->getDataIntentFromValues()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/perm/kate/SearchVideoParamsActivity;->setResult(ILandroid/content/Intent;)V

    .line 146
    invoke-virtual {p0}, Lcom/perm/kate/SearchVideoParamsActivity;->finish()V

    .line 147
    return-void
.end method

.method private readValues()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x2

    const/4 v2, 0x1

    .line 113
    iget-object v0, p0, Lcom/perm/kate/SearchVideoParamsActivity;->cb_adult:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchVideoParamsActivity;->adult:Ljava/lang/Integer;

    .line 114
    iget-object v0, p0, Lcom/perm/kate/SearchVideoParamsActivity;->cb_hd:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchVideoParamsActivity;->hd:Ljava/lang/Integer;

    .line 115
    iget-object v0, p0, Lcom/perm/kate/SearchVideoParamsActivity;->sp_video_type:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-ge v0, v2, :cond_3

    iget-object v0, p0, Lcom/perm/kate/SearchVideoParamsActivity;->sp_video_duration:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-ge v0, v2, :cond_3

    .line 116
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/perm/kate/SearchVideoParamsActivity;->filters:Ljava/lang/String;

    .line 135
    :cond_0
    :goto_2
    iget-object v0, p0, Lcom/perm/kate/SearchVideoParamsActivity;->sp_video_sort:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-ne v0, v2, :cond_9

    .line 136
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchVideoParamsActivity;->sort:Ljava/lang/Integer;

    .line 141
    :goto_3
    return-void

    :cond_1
    move v0, v2

    .line 113
    goto :goto_0

    :cond_2
    move v0, v1

    .line 114
    goto :goto_1

    .line 118
    :cond_3
    const-string v0, ""

    iput-object v0, p0, Lcom/perm/kate/SearchVideoParamsActivity;->filters:Ljava/lang/String;

    .line 120
    iget-object v0, p0, Lcom/perm/kate/SearchVideoParamsActivity;->sp_video_type:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-ne v0, v2, :cond_6

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/perm/kate/SearchVideoParamsActivity;->filters:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "mp4"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchVideoParamsActivity;->filters:Ljava/lang/String;

    .line 127
    :cond_4
    :goto_4
    iget-object v0, p0, Lcom/perm/kate/SearchVideoParamsActivity;->filters:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/perm/kate/SearchVideoParamsActivity;->filters:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchVideoParamsActivity;->filters:Ljava/lang/String;

    .line 130
    :cond_5
    iget-object v0, p0, Lcom/perm/kate/SearchVideoParamsActivity;->sp_video_duration:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-ne v0, v2, :cond_8

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/perm/kate/SearchVideoParamsActivity;->filters:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "short"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchVideoParamsActivity;->filters:Ljava/lang/String;

    goto :goto_2

    .line 122
    :cond_6
    iget-object v0, p0, Lcom/perm/kate/SearchVideoParamsActivity;->sp_video_type:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-ne v0, v4, :cond_7

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/perm/kate/SearchVideoParamsActivity;->filters:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "youtube"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchVideoParamsActivity;->filters:Ljava/lang/String;

    goto :goto_4

    .line 124
    :cond_7
    iget-object v0, p0, Lcom/perm/kate/SearchVideoParamsActivity;->sp_video_type:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_4

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/perm/kate/SearchVideoParamsActivity;->filters:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "vimeo"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchVideoParamsActivity;->filters:Ljava/lang/String;

    goto :goto_4

    .line 132
    :cond_8
    iget-object v0, p0, Lcom/perm/kate/SearchVideoParamsActivity;->sp_video_duration:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/perm/kate/SearchVideoParamsActivity;->filters:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "long"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchVideoParamsActivity;->filters:Ljava/lang/String;

    goto/16 :goto_2

    .line 137
    :cond_9
    iget-object v0, p0, Lcom/perm/kate/SearchVideoParamsActivity;->sp_video_sort:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-ne v0, v4, :cond_a

    .line 138
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchVideoParamsActivity;->sort:Ljava/lang/Integer;

    goto/16 :goto_3

    .line 140
    :cond_a
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchVideoParamsActivity;->sort:Ljava/lang/Integer;

    goto/16 :goto_3
.end method

.method private setViews()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 79
    iget-object v4, p0, Lcom/perm/kate/SearchVideoParamsActivity;->cb_adult:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/perm/kate/SearchVideoParamsActivity;->adult:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_2

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 80
    iget-object v4, p0, Lcom/perm/kate/SearchVideoParamsActivity;->cb_hd:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/perm/kate/SearchVideoParamsActivity;->hd:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v2, v1, :cond_3

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 81
    iget-object v1, p0, Lcom/perm/kate/SearchVideoParamsActivity;->filters:Ljava/lang/String;

    if-nez v1, :cond_4

    .line 82
    iget-object v1, p0, Lcom/perm/kate/SearchVideoParamsActivity;->sp_video_type:Landroid/widget/Spinner;

    invoke-virtual {v1, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 83
    iget-object v1, p0, Lcom/perm/kate/SearchVideoParamsActivity;->sp_video_duration:Landroid/widget/Spinner;

    invoke-virtual {v1, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 98
    :cond_0
    :goto_2
    const/4 v0, 0x0

    .line 99
    .local v0, "sort_pos":I
    iget-object v1, p0, Lcom/perm/kate/SearchVideoParamsActivity;->sort:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_9

    .line 100
    const/4 v0, 0x1

    .line 103
    :cond_1
    :goto_3
    iget-object v1, p0, Lcom/perm/kate/SearchVideoParamsActivity;->sp_video_sort:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 104
    return-void

    .end local v0    # "sort_pos":I
    :cond_2
    move v1, v3

    .line 79
    goto :goto_0

    :cond_3
    move v1, v3

    .line 80
    goto :goto_1

    .line 86
    :cond_4
    iget-object v1, p0, Lcom/perm/kate/SearchVideoParamsActivity;->filters:Ljava/lang/String;

    const-string v3, "mp4"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 87
    iget-object v1, p0, Lcom/perm/kate/SearchVideoParamsActivity;->sp_video_type:Landroid/widget/Spinner;

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 93
    :cond_5
    :goto_4
    iget-object v1, p0, Lcom/perm/kate/SearchVideoParamsActivity;->filters:Ljava/lang/String;

    const-string v3, "short"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 94
    iget-object v1, p0, Lcom/perm/kate/SearchVideoParamsActivity;->sp_video_duration:Landroid/widget/Spinner;

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_2

    .line 88
    :cond_6
    iget-object v1, p0, Lcom/perm/kate/SearchVideoParamsActivity;->filters:Ljava/lang/String;

    const-string v3, "youtube"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 89
    iget-object v1, p0, Lcom/perm/kate/SearchVideoParamsActivity;->sp_video_type:Landroid/widget/Spinner;

    invoke-virtual {v1, v5}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_4

    .line 90
    :cond_7
    iget-object v1, p0, Lcom/perm/kate/SearchVideoParamsActivity;->filters:Ljava/lang/String;

    const-string v3, "vimeo"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 91
    iget-object v1, p0, Lcom/perm/kate/SearchVideoParamsActivity;->sp_video_type:Landroid/widget/Spinner;

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_4

    .line 95
    :cond_8
    iget-object v1, p0, Lcom/perm/kate/SearchVideoParamsActivity;->filters:Ljava/lang/String;

    const-string v3, "long"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    iget-object v1, p0, Lcom/perm/kate/SearchVideoParamsActivity;->sp_video_duration:Landroid/widget/Spinner;

    invoke-virtual {v1, v5}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_2

    .line 101
    .restart local v0    # "sort_pos":I
    :cond_9
    iget-object v1, p0, Lcom/perm/kate/SearchVideoParamsActivity;->sort:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 102
    const/4 v0, 0x2

    goto :goto_3
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 32
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    const v1, 0x7f0300f3

    invoke-virtual {p0, v1}, Lcom/perm/kate/SearchVideoParamsActivity;->setContentView(I)V

    .line 34
    const v1, 0x7f070252

    invoke-virtual {p0, v1}, Lcom/perm/kate/SearchVideoParamsActivity;->setHeaderTitle(I)V

    .line 35
    const v1, 0x7f0e01a1

    invoke-virtual {p0, v1}, Lcom/perm/kate/SearchVideoParamsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/perm/kate/SearchVideoParamsActivity;->btn_search:Landroid/widget/Button;

    .line 36
    iget-object v1, p0, Lcom/perm/kate/SearchVideoParamsActivity;->btn_search:Landroid/widget/Button;

    iget-object v2, p0, Lcom/perm/kate/SearchVideoParamsActivity;->search_OnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    const v1, 0x7f0e01a0

    invoke-virtual {p0, v1}, Lcom/perm/kate/SearchVideoParamsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/perm/kate/SearchVideoParamsActivity;->btn_clear:Landroid/widget/Button;

    .line 38
    iget-object v1, p0, Lcom/perm/kate/SearchVideoParamsActivity;->btn_clear:Landroid/widget/Button;

    iget-object v2, p0, Lcom/perm/kate/SearchVideoParamsActivity;->clear_OnClickListerer:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    const v1, 0x7f0e019b

    invoke-virtual {p0, v1}, Lcom/perm/kate/SearchVideoParamsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/perm/kate/SearchVideoParamsActivity;->btn_cancel:Landroid/widget/Button;

    .line 40
    iget-object v1, p0, Lcom/perm/kate/SearchVideoParamsActivity;->btn_cancel:Landroid/widget/Button;

    iget-object v2, p0, Lcom/perm/kate/SearchVideoParamsActivity;->cancel_OnClickListerer:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    invoke-virtual {p0}, Lcom/perm/kate/SearchVideoParamsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 42
    .local v0, "i":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 43
    const-string v1, "com.perm.kate.adult"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/perm/kate/SearchVideoParamsActivity;->adult:Ljava/lang/Integer;

    .line 44
    const-string v1, "com.perm.kate.filters"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/perm/kate/SearchVideoParamsActivity;->filters:Ljava/lang/String;

    .line 45
    const-string v1, "com.perm.kate.sort"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/perm/kate/SearchVideoParamsActivity;->sort:Ljava/lang/Integer;

    .line 46
    const-string v1, "com.perm.kate.hd"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/perm/kate/SearchVideoParamsActivity;->hd:Ljava/lang/Integer;

    .line 48
    :cond_0
    const v1, 0x7f0e0315

    invoke-virtual {p0, v1}, Lcom/perm/kate/SearchVideoParamsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/perm/kate/SearchVideoParamsActivity;->cb_adult:Landroid/widget/CheckBox;

    .line 49
    const v1, 0x7f0e0312

    invoke-virtual {p0, v1}, Lcom/perm/kate/SearchVideoParamsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/perm/kate/SearchVideoParamsActivity;->sp_video_type:Landroid/widget/Spinner;

    .line 50
    const v1, 0x7f0e0313

    invoke-virtual {p0, v1}, Lcom/perm/kate/SearchVideoParamsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/perm/kate/SearchVideoParamsActivity;->sp_video_duration:Landroid/widget/Spinner;

    .line 51
    const v1, 0x7f0e0314

    invoke-virtual {p0, v1}, Lcom/perm/kate/SearchVideoParamsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/perm/kate/SearchVideoParamsActivity;->sp_video_sort:Landroid/widget/Spinner;

    .line 52
    const v1, 0x7f0e0316

    invoke-virtual {p0, v1}, Lcom/perm/kate/SearchVideoParamsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/perm/kate/SearchVideoParamsActivity;->cb_hd:Landroid/widget/CheckBox;

    .line 53
    invoke-direct {p0}, Lcom/perm/kate/SearchVideoParamsActivity;->setViews()V

    .line 54
    return-void
.end method

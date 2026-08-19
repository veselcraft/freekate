.class public Lcom/perm/kate/AudioListAdapter;
.super Landroid/widget/BaseAdapter;
.source "AudioListAdapter.java"


# instance fields
.field private activity:Landroid/app/Activity;

.field public audios:Ljava/util/ArrayList;

.field private checkboxClickListener:Landroid/view/View$OnClickListener;

.field private checked_audios:Ljava/util/LinkedHashSet;

.field public displayDownloadStates:Z

.field public downloadStates:Ljava/util/HashMap;

.field public fromPlayer:Z

.field private play_OnClickListener:Landroid/view/View$OnClickListener;

.field public selectButton:Landroid/widget/Button;

.field private selectedAudios:Ljava/util/HashSet;

.field source:I

.field private use_checks:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 2

    .line 44
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/AudioListAdapter;->audios:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/perm/kate/AudioListAdapter;->fromPlayer:Z

    .line 33
    iput-boolean v0, p0, Lcom/perm/kate/AudioListAdapter;->displayDownloadStates:Z

    .line 34
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/perm/kate/AudioListAdapter;->downloadStates:Ljava/util/HashMap;

    .line 35
    iput-boolean v0, p0, Lcom/perm/kate/AudioListAdapter;->use_checks:Z

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/perm/kate/AudioListAdapter;->checked_audios:Ljava/util/LinkedHashSet;

    .line 37
    iput-object v0, p0, Lcom/perm/kate/AudioListAdapter;->selectButton:Landroid/widget/Button;

    .line 41
    iput-object v0, p0, Lcom/perm/kate/AudioListAdapter;->selectedAudios:Ljava/util/HashSet;

    .line 162
    new-instance v0, Lcom/perm/kate/AudioListAdapter$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/AudioListAdapter$1;-><init>(Lcom/perm/kate/AudioListAdapter;)V

    iput-object v0, p0, Lcom/perm/kate/AudioListAdapter;->play_OnClickListener:Landroid/view/View$OnClickListener;

    .line 240
    new-instance v0, Lcom/perm/kate/AudioListAdapter$2;

    invoke-direct {v0, p0}, Lcom/perm/kate/AudioListAdapter$2;-><init>(Lcom/perm/kate/AudioListAdapter;)V

    iput-object v0, p0, Lcom/perm/kate/AudioListAdapter;->checkboxClickListener:Landroid/view/View$OnClickListener;

    .line 45
    iput-object p1, p0, Lcom/perm/kate/AudioListAdapter;->activity:Landroid/app/Activity;

    iput p2, p0, Lcom/perm/kate/AudioListAdapter;->source:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;ZLjava/util/HashSet;I)V
    .locals 2

    .line 48
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/AudioListAdapter;->audios:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/perm/kate/AudioListAdapter;->fromPlayer:Z

    .line 33
    iput-boolean v0, p0, Lcom/perm/kate/AudioListAdapter;->displayDownloadStates:Z

    .line 34
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/perm/kate/AudioListAdapter;->downloadStates:Ljava/util/HashMap;

    .line 35
    iput-boolean v0, p0, Lcom/perm/kate/AudioListAdapter;->use_checks:Z

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/perm/kate/AudioListAdapter;->checked_audios:Ljava/util/LinkedHashSet;

    .line 37
    iput-object v0, p0, Lcom/perm/kate/AudioListAdapter;->selectButton:Landroid/widget/Button;

    .line 41
    iput-object v0, p0, Lcom/perm/kate/AudioListAdapter;->selectedAudios:Ljava/util/HashSet;

    .line 162
    new-instance v0, Lcom/perm/kate/AudioListAdapter$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/AudioListAdapter$1;-><init>(Lcom/perm/kate/AudioListAdapter;)V

    iput-object v0, p0, Lcom/perm/kate/AudioListAdapter;->play_OnClickListener:Landroid/view/View$OnClickListener;

    .line 240
    new-instance v0, Lcom/perm/kate/AudioListAdapter$2;

    invoke-direct {v0, p0}, Lcom/perm/kate/AudioListAdapter$2;-><init>(Lcom/perm/kate/AudioListAdapter;)V

    iput-object v0, p0, Lcom/perm/kate/AudioListAdapter;->checkboxClickListener:Landroid/view/View$OnClickListener;

    .line 49
    iput-object p1, p0, Lcom/perm/kate/AudioListAdapter;->activity:Landroid/app/Activity;

    .line 50
    iput-boolean p2, p0, Lcom/perm/kate/AudioListAdapter;->use_checks:Z

    if-eqz p2, :cond_0

    .line 52
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/perm/kate/AudioListAdapter;->checked_audios:Ljava/util/LinkedHashSet;

    :cond_0
    if-eqz p3, :cond_1

    .line 54
    iput-object p3, p0, Lcom/perm/kate/AudioListAdapter;->selectedAudios:Ljava/util/HashSet;

    .line 55
    :cond_1
    iput p4, p0, Lcom/perm/kate/AudioListAdapter;->source:I

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/AudioListAdapter;)Landroid/app/Activity;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/perm/kate/AudioListAdapter;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$100(Lcom/perm/kate/AudioListAdapter;)Ljava/util/LinkedHashSet;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/perm/kate/AudioListAdapter;->checked_audios:Ljava/util/LinkedHashSet;

    return-object p0
.end method

.method static synthetic access$200(Lcom/perm/kate/AudioListAdapter;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/perm/kate/AudioListAdapter;->updateSelectButton()V

    return-void
.end method

.method private displayDownloadState(Landroid/view/View;Lcom/perm/kate/api/Audio;)V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    const v0, 0x7f090284

    .line 118
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    const v1, 0x7f090288

    .line 119
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const v2, 0x7f090287

    .line 120
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f09028a

    .line 121
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f09030c

    .line 122
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 124
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v5, p2, Lcom/perm/kate/api/Audio;->owner_id:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p2, Lcom/perm/kate/api/Audio;->aid:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 125
    iget-object v5, p0, Lcom/perm/kate/AudioListAdapter;->downloadStates:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    .line 126
    iget-object v5, p0, Lcom/perm/kate/AudioListAdapter;->downloadStates:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    const/16 v5, 0x8

    if-eqz v4, :cond_4

    const/4 v7, 0x1

    if-eq v4, v7, :cond_2

    const/4 p2, 0x3

    if-eq v4, p2, :cond_1

    .line 155
    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 156
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 157
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 149
    :cond_1
    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 150
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 151
    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    const p2, 0x7f0f00de

    .line 152
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2

    .line 135
    :cond_2
    invoke-virtual {v0, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 136
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 137
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 138
    sget-object p1, Lcom/perm/kate/audio_cache/AudioCacheService;->currentDownloadId:Ljava/lang/Long;

    if-eqz p1, :cond_5

    iget-wide v4, p2, Lcom/perm/kate/api/Audio;->aid:J

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    cmp-long v1, v4, p1

    if-nez v1, :cond_5

    .line 139
    sget p1, Lcom/perm/kate/audio_cache/AudioCacheService;->currentLength:I

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 140
    sget p1, Lcom/perm/kate/audio_cache/AudioCacheService;->currentProgress:I

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 141
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/perm/kate/audio_cache/AudioCacheService;->currentProgress:I

    div-int/lit16 v0, v0, 0x400

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/perm/kate/audio_cache/AudioCacheService;->currentLength:I

    div-int/lit16 v0, v0, 0x400

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " KB"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 142
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p2, Lcom/perm/kate/audio_cache/AudioCacheService;->currentLength:I

    if-nez p2, :cond_3

    const-wide/16 v0, 0x0

    goto :goto_1

    :cond_3
    sget p2, Lcom/perm/kate/audio_cache/AudioCacheService;->currentProgress:I

    int-to-long v0, p2

    const-wide/16 v4, 0x64

    mul-long v0, v0, v4

    sget p2, Lcom/perm/kate/audio_cache/AudioCacheService;->currentLength:I

    int-to-long v4, p2

    div-long/2addr v0, v4

    :goto_1
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 145
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "%"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 129
    :cond_4
    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 130
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 131
    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    const p2, 0x7f0f041a

    .line 132
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    :cond_5
    :goto_2
    return-void
.end method

.method public static getAudioIconByTheme(Z)I
    .locals 5

    .line 212
    sget v0, Lcom/perm/kate/BaseActivity;->Theme:I

    const v1, 0x7f08021e

    const v2, 0x7f08021b

    const v3, 0x7f08021f

    const v4, 0x7f08021c

    sparse-switch v0, :sswitch_data_0

    if-eqz p0, :cond_b

    goto :goto_b

    :sswitch_0
    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const v3, 0x7f08021c

    :goto_0
    return v3

    :sswitch_1
    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    const v1, 0x7f08021b

    :goto_1
    return v1

    :sswitch_2
    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    const v1, 0x7f08021b

    :goto_2
    return v1

    :sswitch_3
    if-eqz p0, :cond_3

    goto :goto_3

    :cond_3
    const v1, 0x7f08021b

    :goto_3
    return v1

    :sswitch_4
    if-eqz p0, :cond_4

    goto :goto_4

    :cond_4
    const v3, 0x7f08021c

    :goto_4
    return v3

    :sswitch_5
    if-eqz p0, :cond_5

    goto :goto_5

    :cond_5
    const v3, 0x7f08021c

    :goto_5
    return v3

    :sswitch_6
    if-eqz p0, :cond_6

    goto :goto_6

    :cond_6
    const v3, 0x7f08021c

    :goto_6
    return v3

    :sswitch_7
    if-eqz p0, :cond_7

    goto :goto_7

    :cond_7
    const v3, 0x7f08021c

    :goto_7
    return v3

    :sswitch_8
    if-eqz p0, :cond_8

    goto :goto_8

    :cond_8
    const v3, 0x7f08021c

    :goto_8
    return v3

    :sswitch_9
    if-eqz p0, :cond_9

    goto :goto_9

    :cond_9
    const v3, 0x7f08021c

    :goto_9
    return v3

    :sswitch_a
    if-eqz p0, :cond_a

    goto :goto_a

    :cond_a
    const v3, 0x7f08021c

    :goto_a
    return v3

    :cond_b
    const v1, 0x7f08021b

    :goto_b
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f1000c5 -> :sswitch_a
        0x7f1000c7 -> :sswitch_9
        0x7f1000c9 -> :sswitch_8
        0x7f1000cb -> :sswitch_7
        0x7f1000d1 -> :sswitch_6
        0x7f1000d3 -> :sswitch_5
        0x7f1000d5 -> :sswitch_4
        0x7f1000d7 -> :sswitch_3
        0x7f1000d9 -> :sswitch_2
        0x7f1000db -> :sswitch_1
        0x7f1000df -> :sswitch_0
    .end sparse-switch
.end method

.method private updateSelectButton()V
    .locals 2

    .line 257
    iget-object v0, p0, Lcom/perm/kate/AudioListAdapter;->selectButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/perm/kate/AudioListAdapter;->checked_audios:Ljava/util/LinkedHashSet;

    if-eqz v0, :cond_1

    .line 258
    iget-object v0, p0, Lcom/perm/kate/AudioListAdapter;->activity:Landroid/app/Activity;

    const v1, 0x7f0f0051

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 259
    iget-object v1, p0, Lcom/perm/kate/AudioListAdapter;->checked_audios:Ljava/util/LinkedHashSet;

    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 260
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/perm/kate/AudioListAdapter;->checked_audios:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 261
    :cond_0
    iget-object v1, p0, Lcom/perm/kate/AudioListAdapter;->selectButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public displayNewData(Ljava/util/ArrayList;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/perm/kate/AudioListAdapter;->audios:Ljava/util/ArrayList;

    .line 208
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getCheckedAudioObjects()Ljava/util/Set;
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/perm/kate/AudioListAdapter;->checked_audios:Ljava/util/LinkedHashSet;

    return-object v0
.end method

.method public getCheckedAudios()Ljava/lang/String;
    .locals 6

    .line 268
    iget-object v0, p0, Lcom/perm/kate/AudioListAdapter;->checked_audios:Ljava/util/LinkedHashSet;

    const-string v1, ""

    if-eqz v0, :cond_1

    .line 269
    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/api/Audio;

    .line 270
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 271
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 272
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v2, Lcom/perm/kate/api/Audio;->owner_id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v2, Lcom/perm/kate/api/Audio;->aid:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 273
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public getCount()I
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/perm/kate/AudioListAdapter;->audios:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/perm/kate/AudioListAdapter;->audios:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 203
    iget-object v0, p0, Lcom/perm/kate/AudioListAdapter;->audios:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/api/Audio;

    iget-wide v0, p1, Lcom/perm/kate/api/Audio;->aid:J

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 66
    iget-object p2, p0, Lcom/perm/kate/AudioListAdapter;->activity:Landroid/app/Activity;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c0032

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 68
    :cond_0
    :try_start_0
    iget-object p3, p0, Lcom/perm/kate/AudioListAdapter;->audios:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/perm/kate/api/Audio;

    const v1, 0x7f090354

    .line 69
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 70
    iget-object v2, p3, Lcom/perm/kate/api/Audio;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f090356

    .line 71
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 72
    invoke-virtual {p3}, Lcom/perm/kate/api/Audio;->isPodcast()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/perm/kate/AudioListAdapter;->activity:Landroid/app/Activity;

    const v4, 0x7f0f03f5

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p3, Lcom/perm/kate/api/Audio;->artist:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    iget-object v2, p3, Lcom/perm/kate/api/Audio;->artist:Ljava/lang/String;

    .line 73
    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v1, p3, Lcom/perm/kate/api/Audio;->url:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x3e4ccccd    # 0.2f

    goto :goto_1

    :cond_2
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {p2, v1}, Landroid/view/View;->setAlpha(F)V

    const v1, 0x7f090355

    .line 76
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 77
    iget-wide v2, p3, Lcom/perm/kate/api/Audio;->duration:J

    invoke-static {v2, v3}, Lcom/perm/kate/Helper;->getDurationTextBySeconds(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const v1, 0x7f09019f

    .line 87
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    .line 88
    iget-object v3, p3, Lcom/perm/kate/api/Audio;->url:Ljava/lang/String;

    aput-object v3, v2, v0

    iget-wide v3, p3, Lcom/perm/kate/api/Audio;->aid:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    iget-wide v5, p3, Lcom/perm/kate/api/Audio;->owner_id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 v3, 0x3

    aput-object p1, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 89
    iget-object p1, p0, Lcom/perm/kate/AudioListAdapter;->play_OnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    sget-object p1, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    if-eqz p1, :cond_4

    iget-wide v5, p1, Lcom/perm/kate/api/Audio;->aid:J

    iget-wide v7, p3, Lcom/perm/kate/api/Audio;->aid:J

    cmp-long v2, v5, v7

    if-nez v2, :cond_4

    iget-wide v5, p1, Lcom/perm/kate/api/Audio;->owner_id:J

    iget-wide v7, p3, Lcom/perm/kate/api/Audio;->owner_id:J

    cmp-long p1, v5, v7

    if-nez p1, :cond_4

    sget-object p1, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    if-eqz p1, :cond_4

    iget p1, p1, Lcom/perm/kate/Player;->state:I

    if-eqz p1, :cond_3

    if-ne p1, v3, :cond_4

    .line 92
    :cond_3
    invoke-static {v0}, Lcom/perm/kate/AudioListAdapter;->getAudioIconByTheme(Z)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 93
    iget-object p1, p0, Lcom/perm/kate/AudioListAdapter;->activity:Landroid/app/Activity;

    const v2, 0x7f0f03c1

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 95
    :cond_4
    invoke-static {v4}, Lcom/perm/kate/AudioListAdapter;->getAudioIconByTheme(Z)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 96
    iget-object p1, p0, Lcom/perm/kate/AudioListAdapter;->activity:Landroid/app/Activity;

    const v2, 0x7f0f03e8

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_2
    const p1, 0x7f090165

    .line 98
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object v1, p3, Lcom/perm/kate/api/Audio;->lyrics_id:Ljava/lang/Long;

    const/16 v2, 0x8

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_5

    const/4 v1, 0x0

    goto :goto_3

    :cond_5
    const/16 v1, 0x8

    :goto_3
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 99
    iget-boolean p1, p0, Lcom/perm/kate/AudioListAdapter;->use_checks:Z

    if-eqz p1, :cond_6

    const p1, 0x7f0900ba

    .line 100
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    .line 101
    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 102
    iget-object v0, p0, Lcom/perm/kate/AudioListAdapter;->checkboxClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    invoke-virtual {p1, p3}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 104
    iget-object v0, p0, Lcom/perm/kate/AudioListAdapter;->checked_audios:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p3}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_5

    :cond_6
    const p1, 0x7f090146

    .line 106
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Lcom/perm/kate/AudioListAdapter;->selectedAudios:Ljava/util/HashSet;

    if-eqz v1, :cond_7

    iget-wide v3, p3, Lcom/perm/kate/api/Audio;->aid:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_4

    :cond_7
    const/16 v0, 0x8

    :goto_4
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 107
    :goto_5
    iget-boolean p1, p0, Lcom/perm/kate/AudioListAdapter;->displayDownloadStates:Z

    if-eqz p1, :cond_8

    .line 108
    invoke-direct {p0, p2, p3}, Lcom/perm/kate/AudioListAdapter;->displayDownloadState(Landroid/view/View;Lcom/perm/kate/api/Audio;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception p1

    .line 110
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 111
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :cond_8
    :goto_6
    return-object p2
.end method

.method public setSelectButton(Landroid/widget/Button;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/perm/kate/AudioListAdapter;->selectButton:Landroid/widget/Button;

    return-void
.end method

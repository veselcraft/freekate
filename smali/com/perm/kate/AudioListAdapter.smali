.class public Lcom/perm/kate/AudioListAdapter;
.super Landroid/widget/BaseAdapter;
.source "AudioListAdapter.java"


# instance fields
.field private activity:Landroid/app/Activity;

.field public audios:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Audio;",
            ">;"
        }
    .end annotation
.end field

.field private checkboxClickListener:Landroid/view/View$OnClickListener;

.field private checked_audios:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet",
            "<",
            "Lcom/perm/kate/api/Audio;",
            ">;"
        }
    .end annotation
.end field

.field public displayDownloadStates:Z

.field public downloadStates:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public fromPlayer:Z

.field private play_OnClickListener:Landroid/view/View$OnClickListener;

.field public selectButton:Landroid/widget/Button;

.field private selectedAudios:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field source:I

.field private use_checks:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "source"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/AudioListAdapter;->audios:Ljava/util/ArrayList;

    .line 30
    iput-boolean v1, p0, Lcom/perm/kate/AudioListAdapter;->fromPlayer:Z

    .line 31
    iput-boolean v1, p0, Lcom/perm/kate/AudioListAdapter;->displayDownloadStates:Z

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/AudioListAdapter;->downloadStates:Ljava/util/HashMap;

    .line 33
    iput-boolean v1, p0, Lcom/perm/kate/AudioListAdapter;->use_checks:Z

    .line 34
    iput-object v2, p0, Lcom/perm/kate/AudioListAdapter;->checked_audios:Ljava/util/LinkedHashSet;

    .line 35
    iput-object v2, p0, Lcom/perm/kate/AudioListAdapter;->selectButton:Landroid/widget/Button;

    .line 39
    iput-object v2, p0, Lcom/perm/kate/AudioListAdapter;->selectedAudios:Ljava/util/HashSet;

    .line 156
    new-instance v0, Lcom/perm/kate/AudioListAdapter$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/AudioListAdapter$1;-><init>(Lcom/perm/kate/AudioListAdapter;)V

    iput-object v0, p0, Lcom/perm/kate/AudioListAdapter;->play_OnClickListener:Landroid/view/View$OnClickListener;

    .line 233
    new-instance v0, Lcom/perm/kate/AudioListAdapter$2;

    invoke-direct {v0, p0}, Lcom/perm/kate/AudioListAdapter$2;-><init>(Lcom/perm/kate/AudioListAdapter;)V

    iput-object v0, p0, Lcom/perm/kate/AudioListAdapter;->checkboxClickListener:Landroid/view/View$OnClickListener;

    .line 43
    iput-object p1, p0, Lcom/perm/kate/AudioListAdapter;->activity:Landroid/app/Activity;

    iput p2, p0, Lcom/perm/kate/AudioListAdapter;->source:I

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;ZLjava/util/HashSet;I)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "use_checks"    # Z
    .param p4, "source"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Z",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p3, "_selectedAudios":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/AudioListAdapter;->audios:Ljava/util/ArrayList;

    .line 30
    iput-boolean v1, p0, Lcom/perm/kate/AudioListAdapter;->fromPlayer:Z

    .line 31
    iput-boolean v1, p0, Lcom/perm/kate/AudioListAdapter;->displayDownloadStates:Z

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/AudioListAdapter;->downloadStates:Ljava/util/HashMap;

    .line 33
    iput-boolean v1, p0, Lcom/perm/kate/AudioListAdapter;->use_checks:Z

    .line 34
    iput-object v2, p0, Lcom/perm/kate/AudioListAdapter;->checked_audios:Ljava/util/LinkedHashSet;

    .line 35
    iput-object v2, p0, Lcom/perm/kate/AudioListAdapter;->selectButton:Landroid/widget/Button;

    .line 39
    iput-object v2, p0, Lcom/perm/kate/AudioListAdapter;->selectedAudios:Ljava/util/HashSet;

    .line 156
    new-instance v0, Lcom/perm/kate/AudioListAdapter$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/AudioListAdapter$1;-><init>(Lcom/perm/kate/AudioListAdapter;)V

    iput-object v0, p0, Lcom/perm/kate/AudioListAdapter;->play_OnClickListener:Landroid/view/View$OnClickListener;

    .line 233
    new-instance v0, Lcom/perm/kate/AudioListAdapter$2;

    invoke-direct {v0, p0}, Lcom/perm/kate/AudioListAdapter$2;-><init>(Lcom/perm/kate/AudioListAdapter;)V

    iput-object v0, p0, Lcom/perm/kate/AudioListAdapter;->checkboxClickListener:Landroid/view/View$OnClickListener;

    .line 47
    iput-object p1, p0, Lcom/perm/kate/AudioListAdapter;->activity:Landroid/app/Activity;

    .line 48
    iput-boolean p2, p0, Lcom/perm/kate/AudioListAdapter;->use_checks:Z

    .line 49
    if-eqz p2, :cond_0

    .line 50
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/AudioListAdapter;->checked_audios:Ljava/util/LinkedHashSet;

    .line 51
    :cond_0
    if-eqz p3, :cond_1

    .line 52
    iput-object p3, p0, Lcom/perm/kate/AudioListAdapter;->selectedAudios:Ljava/util/HashSet;

    .line 53
    :cond_1
    iput p4, p0, Lcom/perm/kate/AudioListAdapter;->source:I

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/AudioListAdapter;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/AudioListAdapter;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/perm/kate/AudioListAdapter;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/perm/kate/AudioListAdapter;)Ljava/util/LinkedHashSet;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/AudioListAdapter;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/perm/kate/AudioListAdapter;->checked_audios:Ljava/util/LinkedHashSet;

    return-object v0
.end method

.method static synthetic access$200(Lcom/perm/kate/AudioListAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/AudioListAdapter;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/perm/kate/AudioListAdapter;->updateSelectButton()V

    return-void
.end method

.method private displayDownloadState(Landroid/view/View;Lcom/perm/kate/api/Audio;)V
    .locals 16
    .param p1, "view"    # Landroid/view/View;
    .param p2, "audio"    # Lcom/perm/kate/api/Audio;

    .prologue
    .line 112
    const v11, 0x7f0e009e

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ProgressBar;

    .line 113
    .local v4, "progress":Landroid/widget/ProgressBar;
    const v11, 0x7f0e009f

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 114
    .local v6, "progressDetails":Landroid/widget/LinearLayout;
    const v11, 0x7f0e00a0

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 115
    .local v5, "progressCurrent":Landroid/widget/TextView;
    const v11, 0x7f0e00a1

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 116
    .local v7, "progressPersent":Landroid/widget/TextView;
    const v11, 0x7f0e00a2

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 117
    .local v9, "status":Landroid/widget/TextView;
    const/4 v8, 0x0

    .line 118
    .local v8, "state":I
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/perm/kate/api/Audio;->owner_id:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/perm/kate/api/Audio;->aid:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 119
    .local v2, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/perm/kate/AudioListAdapter;->downloadStates:Ljava/util/HashMap;

    invoke-virtual {v11, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 120
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/perm/kate/AudioListAdapter;->downloadStates:Ljava/util/HashMap;

    invoke-virtual {v11, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 121
    :cond_0
    packed-switch v8, :pswitch_data_0

    .line 149
    :pswitch_0
    const/16 v11, 0x8

    invoke-virtual {v4, v11}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 150
    const/16 v11, 0x8

    invoke-virtual {v6, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 151
    const/16 v11, 0x8

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 154
    :cond_1
    :goto_0
    return-void

    .line 123
    :pswitch_1
    const/16 v11, 0x8

    invoke-virtual {v4, v11}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 124
    const/16 v11, 0x8

    invoke-virtual {v6, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 125
    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 126
    const v11, 0x7f07039f

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 129
    :pswitch_2
    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 130
    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 131
    const/16 v11, 0x8

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 132
    sget-object v11, Lcom/perm/kate/audio_cache/AudioCacheService;->currentDownloadId:Ljava/lang/Long;

    if-eqz v11, :cond_1

    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/perm/kate/api/Audio;->aid:J

    sget-object v11, Lcom/perm/kate/audio_cache/AudioCacheService;->currentDownloadId:Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    cmp-long v11, v12, v14

    if-nez v11, :cond_1

    .line 133
    sget v11, Lcom/perm/kate/audio_cache/AudioCacheService;->currentLength:I

    invoke-virtual {v4, v11}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 134
    sget v11, Lcom/perm/kate/audio_cache/AudioCacheService;->currentProgress:I

    invoke-virtual {v4, v11}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 135
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget v12, Lcom/perm/kate/audio_cache/AudioCacheService;->currentProgress:I

    div-int/lit16 v12, v12, 0x400

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget v12, Lcom/perm/kate/audio_cache/AudioCacheService;->currentLength:I

    div-int/lit16 v12, v12, 0x400

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " KB"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 136
    .local v10, "x":Ljava/lang/String;
    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget v12, Lcom/perm/kate/audio_cache/AudioCacheService;->currentLength:I

    if-nez v12, :cond_2

    const-wide/16 v12, 0x0

    :goto_1
    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 139
    .local v3, "percent":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "%"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 138
    .end local v3    # "percent":Ljava/lang/String;
    :cond_2
    sget v12, Lcom/perm/kate/audio_cache/AudioCacheService;->currentProgress:I

    int-to-long v12, v12

    const-wide/16 v14, 0x64

    mul-long/2addr v12, v14

    sget v14, Lcom/perm/kate/audio_cache/AudioCacheService;->currentLength:I

    int-to-long v14, v14

    div-long/2addr v12, v14

    goto :goto_1

    .line 143
    .end local v10    # "x":Ljava/lang/String;
    :pswitch_3
    const/16 v11, 0x8

    invoke-virtual {v4, v11}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 144
    const/16 v11, 0x8

    invoke-virtual {v6, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 145
    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 146
    const v11, 0x7f0700a2

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 121
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static getAudioIconByTheme(Z)I
    .locals 5
    .param p0, "play"    # Z

    .prologue
    const v2, 0x7f02014e

    const v3, 0x7f02014b

    const v0, 0x7f02014f

    const v1, 0x7f02014c

    .line 205
    sget v4, Lcom/perm/kate/BaseActivity;->Theme:I

    packed-switch v4, :pswitch_data_0

    .line 229
    :pswitch_0
    if-eqz p0, :cond_4

    :goto_0
    move v0, v2

    :cond_0
    :goto_1
    return v0

    .line 207
    :pswitch_1
    if-nez p0, :cond_0

    move v0, v1

    goto :goto_1

    .line 209
    :pswitch_2
    if-eqz p0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v3

    goto :goto_1

    .line 211
    :pswitch_3
    if-nez p0, :cond_0

    move v0, v1

    goto :goto_1

    .line 213
    :pswitch_4
    if-nez p0, :cond_0

    move v0, v1

    goto :goto_1

    .line 215
    :pswitch_5
    if-eqz p0, :cond_2

    :goto_2
    move v0, v2

    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_2

    .line 217
    :pswitch_6
    if-nez p0, :cond_0

    move v0, v1

    goto :goto_1

    .line 219
    :pswitch_7
    if-nez p0, :cond_0

    move v0, v1

    goto :goto_1

    .line 221
    :pswitch_8
    if-nez p0, :cond_0

    move v0, v1

    goto :goto_1

    .line 223
    :pswitch_9
    if-eqz p0, :cond_3

    :goto_3
    move v0, v2

    goto :goto_1

    :cond_3
    move v2, v3

    goto :goto_3

    .line 225
    :pswitch_a
    if-nez p0, :cond_0

    move v0, v1

    goto :goto_1

    .line 227
    :pswitch_b
    if-nez p0, :cond_0

    move v0, v1

    goto :goto_1

    :cond_4
    move v2, v3

    .line 229
    goto :goto_0

    .line 205
    nop

    :pswitch_data_0
    .packed-switch 0x7f0a00bf
        :pswitch_7
        :pswitch_1
        :pswitch_3
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_a
        :pswitch_6
        :pswitch_9
        :pswitch_5
        :pswitch_2
        :pswitch_0
        :pswitch_b
    .end packed-switch
.end method

.method private updateSelectButton()V
    .locals 3

    .prologue
    .line 252
    iget-object v1, p0, Lcom/perm/kate/AudioListAdapter;->selectButton:Landroid/widget/Button;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/perm/kate/AudioListAdapter;->checked_audios:Ljava/util/LinkedHashSet;

    if-eqz v1, :cond_1

    .line 253
    iget-object v1, p0, Lcom/perm/kate/AudioListAdapter;->activity:Landroid/app/Activity;

    const v2, 0x7f07003a

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 254
    .local v0, "text":Ljava/lang/String;
    iget-object v1, p0, Lcom/perm/kate/AudioListAdapter;->checked_audios:Ljava/util/LinkedHashSet;

    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 255
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/AudioListAdapter;->checked_audios:Ljava/util/LinkedHashSet;

    invoke-virtual {v2}, Ljava/util/LinkedHashSet;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 256
    :cond_0
    iget-object v1, p0, Lcom/perm/kate/AudioListAdapter;->selectButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 258
    .end local v0    # "text":Ljava/lang/String;
    :cond_1
    return-void
.end method


# virtual methods
.method public displayNewData(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Audio;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 200
    .local p1, "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Audio;>;"
    iput-object p1, p0, Lcom/perm/kate/AudioListAdapter;->audios:Ljava/util/ArrayList;

    .line 201
    invoke-virtual {p0}, Lcom/perm/kate/AudioListAdapter;->notifyDataSetChanged()V

    .line 202
    return-void
.end method

.method public getCheckedAudioObjects()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/perm/kate/api/Audio;",
            ">;"
        }
    .end annotation

    .prologue
    .line 275
    iget-object v0, p0, Lcom/perm/kate/AudioListAdapter;->checked_audios:Ljava/util/LinkedHashSet;

    return-object v0
.end method

.method public getCheckedAudios()Ljava/lang/String;
    .locals 8

    .prologue
    .line 262
    const-string v2, ""

    .line 263
    .local v2, "res":Ljava/lang/String;
    iget-object v3, p0, Lcom/perm/kate/AudioListAdapter;->checked_audios:Ljava/util/LinkedHashSet;

    if-eqz v3, :cond_1

    .line 264
    iget-object v3, p0, Lcom/perm/kate/AudioListAdapter;->checked_audios:Ljava/util/LinkedHashSet;

    invoke-virtual {v3}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/Audio;

    .line 265
    .local v1, "entry":Lcom/perm/kate/api/Audio;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 266
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 267
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v1, Lcom/perm/kate/api/Audio;->owner_id:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v1, Lcom/perm/kate/api/Audio;->aid:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 268
    .local v0, "audio_tag":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 269
    goto :goto_0

    .line 271
    .end local v0    # "audio_tag":Ljava/lang/String;
    .end local v1    # "entry":Lcom/perm/kate/api/Audio;
    :cond_1
    return-object v2
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/perm/kate/AudioListAdapter;->audios:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 191
    iget-object v0, p0, Lcom/perm/kate/AudioListAdapter;->audios:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 196
    iget-object v0, p0, Lcom/perm/kate/AudioListAdapter;->audios:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Audio;

    iget-wide v0, v0, Lcom/perm/kate/api/Audio;->aid:J

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 18
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 62
    move-object/from16 v11, p2

    .line 63
    .local v11, "view":Landroid/view/View;
    if-nez v11, :cond_0

    .line 64
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/perm/kate/AudioListAdapter;->activity:Landroid/app/Activity;

    invoke-static {v12}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v12

    const v13, 0x7f030030

    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v12, v13, v0, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    .line 66
    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/perm/kate/AudioListAdapter;->audios:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/api/Audio;

    .line 67
    .local v2, "audio":Lcom/perm/kate/api/Audio;
    const v12, 0x7f0e009a

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 68
    .local v10, "tv_audio_title":Landroid/widget/TextView;
    iget-object v12, v2, Lcom/perm/kate/api/Audio;->title:Ljava/lang/String;

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    const v12, 0x7f0e0099

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 70
    .local v8, "tv_audio_artist":Landroid/widget/TextView;
    iget-object v12, v2, Lcom/perm/kate/api/Audio;->artist:Ljava/lang/String;

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    const v12, 0x7f0e009d

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 72
    .local v9, "tv_audio_duration":Landroid/widget/TextView;
    iget-wide v12, v2, Lcom/perm/kate/api/Audio;->duration:J

    invoke-static {v12, v13}, Lcom/perm/kate/Helper;->getDurationTextBySeconds(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    const v12, 0x7f0e009c

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 76
    .local v3, "cached_icon":Landroid/view/View;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v14, v2, Lcom/perm/kate/api/Audio;->owner_id:J

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-wide v14, v2, Lcom/perm/kate/api/Audio;->aid:J

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 77
    .local v6, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/perm/kate/AudioListAdapter;->downloadStates:Ljava/util/HashMap;

    invoke-virtual {v12, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/perm/kate/AudioListAdapter;->downloadStates:Ljava/util/HashMap;

    invoke-virtual {v12, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_3

    .line 78
    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Landroid/view/View;->setVisibility(I)V

    .line 81
    :goto_0
    invoke-virtual {v11, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 82
    const v12, 0x7f0e0098

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 83
    .local v5, "iv_play_audio_icon":Landroid/widget/ImageView;
    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget-object v14, v2, Lcom/perm/kate/api/Audio;->url:Ljava/lang/String;

    aput-object v14, v12, v13

    const/4 v13, 0x1

    iget-wide v14, v2, Lcom/perm/kate/api/Audio;->aid:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x3

    iget-wide v14, v2, Lcom/perm/kate/api/Audio;->owner_id:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v5, v12}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 84
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/perm/kate/AudioListAdapter;->play_OnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v12}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    sget-object v12, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    if-eqz v12, :cond_4

    sget-object v12, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    iget-wide v12, v12, Lcom/perm/kate/api/Audio;->aid:J

    iget-wide v14, v2, Lcom/perm/kate/api/Audio;->aid:J

    cmp-long v12, v12, v14

    if-nez v12, :cond_4

    sget-object v12, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    iget-wide v12, v12, Lcom/perm/kate/api/Audio;->owner_id:J

    iget-wide v14, v2, Lcom/perm/kate/api/Audio;->owner_id:J

    cmp-long v12, v12, v14

    if-nez v12, :cond_4

    sget-object v12, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    if-eqz v12, :cond_4

    sget-object v12, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    iget v12, v12, Lcom/perm/kate/Player;->state:I

    if-eqz v12, :cond_1

    sget-object v12, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    iget v12, v12, Lcom/perm/kate/Player;->state:I

    const/4 v13, 0x3

    if-ne v12, v13, :cond_4

    .line 87
    :cond_1
    const/4 v12, 0x0

    invoke-static {v12}, Lcom/perm/kate/AudioListAdapter;->getAudioIconByTheme(Z)I

    move-result v12

    invoke-virtual {v5, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 88
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/perm/kate/AudioListAdapter;->activity:Landroid/app/Activity;

    const v13, 0x7f070358

    invoke-virtual {v12, v13}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v5, v12}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 93
    :goto_1
    const v12, 0x7f0e009b

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    iget-object v12, v2, Lcom/perm/kate/api/Audio;->lyrics_id:Ljava/lang/Long;

    if-eqz v12, :cond_5

    iget-object v12, v2, Lcom/perm/kate/api/Audio;->lyrics_id:Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v12, v14, v16

    if-lez v12, :cond_5

    const/4 v12, 0x0

    :goto_2
    invoke-virtual {v13, v12}, Landroid/view/View;->setVisibility(I)V

    .line 94
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/perm/kate/AudioListAdapter;->use_checks:Z

    if-eqz v12, :cond_6

    .line 95
    const v12, 0x7f0e005a

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    .line 96
    .local v4, "checkbox":Landroid/widget/CheckBox;
    const/4 v12, 0x0

    invoke-virtual {v4, v12}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 97
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/perm/kate/AudioListAdapter;->checkboxClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v12}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    invoke-virtual {v4, v2}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 99
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/perm/kate/AudioListAdapter;->checked_audios:Ljava/util/LinkedHashSet;

    invoke-virtual {v12, v2}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    invoke-virtual {v4, v12}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 102
    .end local v4    # "checkbox":Landroid/widget/CheckBox;
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/perm/kate/AudioListAdapter;->displayDownloadStates:Z

    if-eqz v12, :cond_2

    .line 103
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v2}, Lcom/perm/kate/AudioListAdapter;->displayDownloadState(Landroid/view/View;Lcom/perm/kate/api/Audio;)V

    .line 108
    .end local v2    # "audio":Lcom/perm/kate/api/Audio;
    .end local v3    # "cached_icon":Landroid/view/View;
    .end local v5    # "iv_play_audio_icon":Landroid/widget/ImageView;
    .end local v6    # "key":Ljava/lang/String;
    .end local v8    # "tv_audio_artist":Landroid/widget/TextView;
    .end local v9    # "tv_audio_duration":Landroid/widget/TextView;
    .end local v10    # "tv_audio_title":Landroid/widget/TextView;
    :cond_2
    :goto_4
    return-object v11

    .line 80
    .restart local v2    # "audio":Lcom/perm/kate/api/Audio;
    .restart local v3    # "cached_icon":Landroid/view/View;
    .restart local v6    # "key":Ljava/lang/String;
    .restart local v8    # "tv_audio_artist":Landroid/widget/TextView;
    .restart local v9    # "tv_audio_duration":Landroid/widget/TextView;
    .restart local v10    # "tv_audio_title":Landroid/widget/TextView;
    :cond_3
    const/16 v12, 0x8

    invoke-virtual {v3, v12}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 104
    .end local v2    # "audio":Lcom/perm/kate/api/Audio;
    .end local v3    # "cached_icon":Landroid/view/View;
    .end local v6    # "key":Ljava/lang/String;
    .end local v8    # "tv_audio_artist":Landroid/widget/TextView;
    .end local v9    # "tv_audio_duration":Landroid/widget/TextView;
    .end local v10    # "tv_audio_title":Landroid/widget/TextView;
    :catch_0
    move-exception v7

    .line 105
    .local v7, "th":Ljava/lang/Throwable;
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    .line 106
    invoke-static {v7}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 90
    .end local v7    # "th":Ljava/lang/Throwable;
    .restart local v2    # "audio":Lcom/perm/kate/api/Audio;
    .restart local v3    # "cached_icon":Landroid/view/View;
    .restart local v5    # "iv_play_audio_icon":Landroid/widget/ImageView;
    .restart local v6    # "key":Ljava/lang/String;
    .restart local v8    # "tv_audio_artist":Landroid/widget/TextView;
    .restart local v9    # "tv_audio_duration":Landroid/widget/TextView;
    .restart local v10    # "tv_audio_title":Landroid/widget/TextView;
    :cond_4
    const/4 v12, 0x1

    :try_start_1
    invoke-static {v12}, Lcom/perm/kate/AudioListAdapter;->getAudioIconByTheme(Z)I

    move-result v12

    invoke-virtual {v5, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 91
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/perm/kate/AudioListAdapter;->activity:Landroid/app/Activity;

    const v13, 0x7f07037e

    invoke-virtual {v12, v13}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v5, v12}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 93
    :cond_5
    const/16 v12, 0x8

    goto :goto_2

    .line 101
    :cond_6
    const v12, 0x7f0e0097

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/perm/kate/AudioListAdapter;->selectedAudios:Ljava/util/HashSet;

    if-eqz v12, :cond_7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/perm/kate/AudioListAdapter;->selectedAudios:Ljava/util/HashSet;

    iget-wide v14, v2, Lcom/perm/kate/api/Audio;->aid:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    const/4 v12, 0x0

    :goto_5
    invoke-virtual {v13, v12}, Landroid/view/View;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :cond_7
    const/16 v12, 0x8

    goto :goto_5
.end method

.method public setSelectButton(Landroid/widget/Button;)V
    .locals 0
    .param p1, "selectButton"    # Landroid/widget/Button;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/perm/kate/AudioListAdapter;->selectButton:Landroid/widget/Button;

    .line 58
    return-void
.end method

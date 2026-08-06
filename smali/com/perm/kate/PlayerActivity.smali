.class public Lcom/perm/kate/PlayerActivity;
.super Lcom/perm/kate/BaseActivity;
.source "PlayerActivity.java"


# instance fields
.field audioHelper:Lcom/perm/kate/AudioClickHelper;

.field private broadcastButtonClick:Landroid/view/View$OnClickListener;

.field duration:Landroid/widget/TextView;

.field from_notification:Z

.field handler:Landroid/os/Handler;

.field private l:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private listClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private lv_audio_list:Landroid/widget/ListView;

.field private mBroadcast:Landroid/widget/ImageButton;

.field private mNext:Landroid/widget/ImageButton;

.field private mPlay:Landroid/widget/ImageButton;

.field private mPrevious:Landroid/widget/ImageButton;

.field private mRepeat:Landroid/widget/ImageButton;

.field private mShuffle:Landroid/widget/ImageButton;

.field nextButtonClick:Landroid/view/View$OnClickListener;

.field playButtonClick:Landroid/view/View$OnClickListener;

.field playerCallback:Lcom/perm/kate/Player$PlayerCallback;

.field player_broadcast_button:I

.field player_broadcast_button_inactive:I

.field player_pause_button:I

.field player_play_button:I

.field player_repeat_button:I

.field player_repeat_button_all:I

.field player_repeat_button_inactive:I

.field positionOverride:I

.field previousButtonClick:Landroid/view/View$OnClickListener;

.field private repeatButtonClick:Landroid/view/View$OnClickListener;

.field result:Z

.field seekBar:Landroid/widget/SeekBar;

.field shuffleButtonClick:Landroid/view/View$OnClickListener;

.field task:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    .line 50
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/PlayerActivity;->handler:Landroid/os/Handler;

    .line 163
    new-instance v0, Lcom/perm/kate/AudioClickHelper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/AudioClickHelper;-><init>(Lcom/perm/kate/BaseActivity;Lcom/perm/kate/AudioClickHelper$AudioClickHelperCallback;)V

    iput-object v0, p0, Lcom/perm/kate/PlayerActivity;->audioHelper:Lcom/perm/kate/AudioClickHelper;

    .line 165
    new-instance v0, Lcom/perm/kate/PlayerActivity$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/PlayerActivity$1;-><init>(Lcom/perm/kate/PlayerActivity;)V

    iput-object v0, p0, Lcom/perm/kate/PlayerActivity;->listClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 196
    new-instance v0, Lcom/perm/kate/PlayerActivity$2;

    invoke-direct {v0, p0}, Lcom/perm/kate/PlayerActivity$2;-><init>(Lcom/perm/kate/PlayerActivity;)V

    iput-object v0, p0, Lcom/perm/kate/PlayerActivity;->playButtonClick:Landroid/view/View$OnClickListener;

    .line 207
    new-instance v0, Lcom/perm/kate/PlayerActivity$3;

    invoke-direct {v0, p0}, Lcom/perm/kate/PlayerActivity$3;-><init>(Lcom/perm/kate/PlayerActivity;)V

    iput-object v0, p0, Lcom/perm/kate/PlayerActivity;->nextButtonClick:Landroid/view/View$OnClickListener;

    .line 219
    new-instance v0, Lcom/perm/kate/PlayerActivity$4;

    invoke-direct {v0, p0}, Lcom/perm/kate/PlayerActivity$4;-><init>(Lcom/perm/kate/PlayerActivity;)V

    iput-object v0, p0, Lcom/perm/kate/PlayerActivity;->previousButtonClick:Landroid/view/View$OnClickListener;

    .line 231
    new-instance v0, Lcom/perm/kate/PlayerActivity$5;

    invoke-direct {v0, p0}, Lcom/perm/kate/PlayerActivity$5;-><init>(Lcom/perm/kate/PlayerActivity;)V

    iput-object v0, p0, Lcom/perm/kate/PlayerActivity;->shuffleButtonClick:Landroid/view/View$OnClickListener;

    .line 260
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/perm/kate/PlayerActivity;->result:Z

    .line 315
    new-instance v0, Lcom/perm/kate/PlayerActivity$6;

    invoke-direct {v0, p0}, Lcom/perm/kate/PlayerActivity$6;-><init>(Lcom/perm/kate/PlayerActivity;)V

    iput-object v0, p0, Lcom/perm/kate/PlayerActivity;->playerCallback:Lcom/perm/kate/Player$PlayerCallback;

    .line 365
    new-instance v0, Lcom/perm/kate/PlayerActivity$7;

    invoke-direct {v0, p0}, Lcom/perm/kate/PlayerActivity$7;-><init>(Lcom/perm/kate/PlayerActivity;)V

    iput-object v0, p0, Lcom/perm/kate/PlayerActivity;->task:Ljava/lang/Runnable;

    .line 398
    const/4 v0, -0x1

    iput v0, p0, Lcom/perm/kate/PlayerActivity;->positionOverride:I

    .line 400
    new-instance v0, Lcom/perm/kate/PlayerActivity$8;

    invoke-direct {v0, p0}, Lcom/perm/kate/PlayerActivity$8;-><init>(Lcom/perm/kate/PlayerActivity;)V

    iput-object v0, p0, Lcom/perm/kate/PlayerActivity;->l:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 573
    new-instance v0, Lcom/perm/kate/PlayerActivity$11;

    invoke-direct {v0, p0}, Lcom/perm/kate/PlayerActivity$11;-><init>(Lcom/perm/kate/PlayerActivity;)V

    iput-object v0, p0, Lcom/perm/kate/PlayerActivity;->repeatButtonClick:Landroid/view/View$OnClickListener;

    .line 586
    new-instance v0, Lcom/perm/kate/PlayerActivity$12;

    invoke-direct {v0, p0}, Lcom/perm/kate/PlayerActivity$12;-><init>(Lcom/perm/kate/PlayerActivity;)V

    iput-object v0, p0, Lcom/perm/kate/PlayerActivity;->broadcastButtonClick:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/PlayerActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/PlayerActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/perm/kate/PlayerActivity;->lv_audio_list:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/perm/kate/PlayerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/PlayerActivity;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/perm/kate/PlayerActivity;->playAudio()V

    return-void
.end method

.method static synthetic access$1000(Lcom/perm/kate/PlayerActivity;III)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/PlayerActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/perm/kate/PlayerActivity;->displayProgress(III)V

    return-void
.end method

.method static synthetic access$1100(Lcom/perm/kate/PlayerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/PlayerActivity;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/perm/kate/PlayerActivity;->updateRepeatButton()V

    return-void
.end method

.method static synthetic access$200(Lcom/perm/kate/PlayerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/PlayerActivity;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/perm/kate/PlayerActivity;->pauseAudio()V

    return-void
.end method

.method static synthetic access$300(Lcom/perm/kate/PlayerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/PlayerActivity;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/perm/kate/PlayerActivity;->onNext()V

    return-void
.end method

.method static synthetic access$400(Lcom/perm/kate/PlayerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/PlayerActivity;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/perm/kate/PlayerActivity;->b2()V

    return-void
.end method

.method static synthetic access$500(Lcom/perm/kate/PlayerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/PlayerActivity;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/perm/kate/PlayerActivity;->notifyList()V

    return-void
.end method

.method static synthetic access$600(Lcom/perm/kate/PlayerActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/PlayerActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/perm/kate/PlayerActivity;->scrollToCurrentAudio(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/perm/kate/PlayerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/PlayerActivity;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/perm/kate/PlayerActivity;->displayPlayButton()V

    return-void
.end method

.method static synthetic access$800(Lcom/perm/kate/PlayerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/PlayerActivity;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/perm/kate/PlayerActivity;->displayEpisode()V

    return-void
.end method

.method static synthetic access$900(Lcom/perm/kate/PlayerActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/PlayerActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/perm/kate/PlayerActivity;->scrollToCurrentAudioDelayed(Z)V

    return-void
.end method

.method private b2()V
    .locals 3

    .prologue
    .line 244
    iget-object v1, p0, Lcom/perm/kate/PlayerActivity;->mShuffle:Landroid/widget/ImageButton;

    if-nez v1, :cond_0

    .line 254
    :goto_0
    return-void

    .line 246
    :cond_0
    sget-boolean v0, Lcom/perm/kate/PlaybackService;->is_shuffle:Z

    .line 248
    .local v0, "v":Z
    sget-boolean v1, Lcom/perm/kate/PlayerActivity;->IsCustomTheme:Z

    if-eqz v1, :cond_1

    .line 249
    iget-object v1, p0, Lcom/perm/kate/PlayerActivity;->mShuffle:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v2

    invoke-virtual {v2}, Lcom/perm/kate/theme/ColorTheme;->getFloatingActionButtonBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 253
    :goto_1
    iget-object v2, p0, Lcom/perm/kate/PlayerActivity;->mShuffle:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    const v1, 0x7f020174

    :goto_2
    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 252
    :cond_1
    iget-object v1, p0, Lcom/perm/kate/PlayerActivity;->mShuffle:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/perm/kate/theme/ThemeColorsHelper;->getFloatingActionButtonBg()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_1

    .line 253
    :cond_2
    const v1, 0x7f020173

    goto :goto_2
.end method

.method private displayEpisode()V
    .locals 6

    .prologue
    .line 180
    sget-object v2, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    if-nez v2, :cond_0

    .line 194
    :goto_0
    return-void

    .line 182
    :cond_0
    const v2, 0x7f0e004b

    invoke-virtual {p0, v2}, Lcom/perm/kate/PlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 183
    .local v1, "title":Landroid/widget/TextView;
    sget-boolean v2, Lcom/perm/kate/PlaybackService;->ad_playing:Z

    if-nez v2, :cond_1

    .line 184
    sget-object v2, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    iget-object v2, v2, Lcom/perm/kate/api/Audio;->artist:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    :goto_1
    const v2, 0x7f0e02a5

    invoke-virtual {p0, v2}, Lcom/perm/kate/PlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/perm/kate/PlayerActivity;->duration:Landroid/widget/TextView;

    .line 188
    iget-object v2, p0, Lcom/perm/kate/PlayerActivity;->duration:Landroid/widget/TextView;

    sget-object v3, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    iget-wide v4, v3, Lcom/perm/kate/api/Audio;->duration:J

    invoke-static {v4, v5}, Lcom/perm/kate/Helper;->getDurationTextBySeconds(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    const v2, 0x7f0e021e

    invoke-virtual {p0, v2}, Lcom/perm/kate/PlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 190
    .local v0, "artist":Landroid/widget/TextView;
    sget-boolean v2, Lcom/perm/kate/PlaybackService;->ad_playing:Z

    if-nez v2, :cond_2

    .line 191
    sget-object v2, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    iget-object v2, v2, Lcom/perm/kate/api/Audio;->title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 186
    .end local v0    # "artist":Landroid/widget/TextView;
    :cond_1
    const v2, 0x7f07001c

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 193
    .restart local v0    # "artist":Landroid/widget/TextView;
    :cond_2
    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private displayListData()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 146
    :try_start_0
    sget-object v3, Lcom/perm/kate/PlaybackService;->audios:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    .line 161
    :goto_0
    return-void

    .line 148
    :cond_0
    sget-object v1, Lcom/perm/kate/PlaybackService;->audios:Ljava/util/ArrayList;

    .line 150
    .local v1, "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Audio;>;"
    new-instance v0, Lcom/perm/kate/AudioListAdapter;

    sget v3, Lcom/perm/kate/PlaybackService;->source:I

    invoke-direct {v0, p0, v3}, Lcom/perm/kate/AudioListAdapter;-><init>(Landroid/app/Activity;I)V

    .line 151
    .local v0, "audioListAdapter":Lcom/perm/kate/AudioListAdapter;
    invoke-virtual {v0, v1}, Lcom/perm/kate/AudioListAdapter;->displayNewData(Ljava/util/ArrayList;)V

    .line 152
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/perm/kate/AudioListAdapter;->fromPlayer:Z

    .line 153
    sget-object v3, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v3}, Lcom/perm/kate/db/DataHelper;->getDownloadStates()Ljava/util/HashMap;

    move-result-object v3

    iput-object v3, v0, Lcom/perm/kate/AudioListAdapter;->downloadStates:Ljava/util/HashMap;

    .line 154
    iget-object v3, p0, Lcom/perm/kate/PlayerActivity;->lv_audio_list:Landroid/widget/ListView;

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 155
    iget-object v3, p0, Lcom/perm/kate/PlayerActivity;->lv_audio_list:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/perm/kate/PlayerActivity;->listClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 156
    .end local v0    # "audioListAdapter":Lcom/perm/kate/AudioListAdapter;
    .end local v1    # "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Audio;>;"
    :catch_0
    move-exception v2

    .line 157
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 158
    invoke-virtual {p0}, Lcom/perm/kate/PlayerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 159
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private displayPlayButton()V
    .locals 3

    .prologue
    .line 272
    sget-object v0, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    iget v0, v0, Lcom/perm/kate/Player;->state:I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    iget v0, v0, Lcom/perm/kate/Player;->state:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    iget v0, v0, Lcom/perm/kate/Player;->state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/PlayerActivity;->mPlay:Landroid/widget/ImageButton;

    iget v1, p0, Lcom/perm/kate/PlayerActivity;->player_pause_button:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 275
    const-string v0, "Kate.PlayerActivity"

    const-string v1, "Display Pause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :goto_0
    iget-object v0, p0, Lcom/perm/kate/PlayerActivity;->mPlay:Landroid/widget/ImageButton;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f07037e

    invoke-virtual {p0, v2}, Lcom/perm/kate/PlayerActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f070358

    invoke-virtual {p0, v2}, Lcom/perm/kate/PlayerActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 283
    return-void

    .line 278
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/PlayerActivity;->mPlay:Landroid/widget/ImageButton;

    iget v1, p0, Lcom/perm/kate/PlayerActivity;->player_play_button:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 279
    const-string v0, "Kate.PlayerActivity"

    const-string v1, "Display Play"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private displayProgress(III)V
    .locals 6
    .param p1, "dur"    # I
    .param p2, "pos"    # I
    .param p3, "buffer"    # I

    .prologue
    .line 434
    iget-object v0, p0, Lcom/perm/kate/PlayerActivity;->duration:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    int-to-long v2, p2

    invoke-static {v2, v3}, Lcom/perm/kate/Helper;->getDurationTextBySeconds(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-long v2, p1

    invoke-static {v2, v3}, Lcom/perm/kate/Helper;->getDurationTextBySeconds(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 435
    iget-object v0, p0, Lcom/perm/kate/PlayerActivity;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 436
    iget-object v0, p0, Lcom/perm/kate/PlayerActivity;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 437
    iget-object v0, p0, Lcom/perm/kate/PlayerActivity;->seekBar:Landroid/widget/SeekBar;

    int-to-double v2, p1

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    int-to-double v4, p3

    mul-double/2addr v2, v4

    double-to-int v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    .line 438
    return-void
.end method

.method public static getRepeat(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 595
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 596
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const v2, 0x7f07054a

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 598
    .local v0, "new_key":Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/perm/kate/PlayerActivity;->upgradeRepeatPreferances(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 599
    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    return v2
.end method

.method private notifyList()V
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lcom/perm/kate/PlayerActivity;->lv_audio_list:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 450
    iget-object v0, p0, Lcom/perm/kate/PlayerActivity;->lv_audio_list:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 451
    :cond_0
    return-void
.end method

.method private onNext()V
    .locals 2

    .prologue
    .line 214
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/perm/kate/PlaybackService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 215
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "next"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 216
    invoke-virtual {p0, v0}, Lcom/perm/kate/PlayerActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 217
    return-void
.end method

.method private pauseAudio()V
    .locals 3

    .prologue
    .line 286
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/perm/kate/PlaybackService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 287
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "pause"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 288
    invoke-virtual {p0, v0}, Lcom/perm/kate/PlayerActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 289
    const-string v1, "Kate.PlayerActivity"

    const-string v2, "pauseAudio"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iget-object v1, p0, Lcom/perm/kate/PlayerActivity;->mPlay:Landroid/widget/ImageButton;

    iget v2, p0, Lcom/perm/kate/PlayerActivity;->player_play_button:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 293
    return-void
.end method

.method private playAudio()V
    .locals 3

    .prologue
    .line 295
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/perm/kate/PlayerActivity;->showPlayerControls(Z)V

    .line 296
    iget-boolean v1, p0, Lcom/perm/kate/PlayerActivity;->from_notification:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    if-eqz v1, :cond_2

    .line 298
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/perm/kate/PlaybackService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 299
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "resume"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 300
    invoke-virtual {p0, v0}, Lcom/perm/kate/PlayerActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 302
    iget-object v1, p0, Lcom/perm/kate/PlayerActivity;->mPlay:Landroid/widget/ImageButton;

    iget v2, p0, Lcom/perm/kate/PlayerActivity;->player_pause_button:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 303
    sget v1, Lcom/perm/kate/PlaybackService;->position:I

    if-eqz v1, :cond_1

    .line 304
    sget v1, Lcom/perm/kate/PlaybackService;->position:I

    iput v1, p0, Lcom/perm/kate/PlayerActivity;->positionOverride:I

    .line 313
    :cond_1
    :goto_0
    return-void

    .line 307
    .end local v0    # "i":Landroid/content/Intent;
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/perm/kate/PlaybackService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 308
    .restart local v0    # "i":Landroid/content/Intent;
    const-string v1, "play"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 309
    invoke-virtual {p0, v0}, Lcom/perm/kate/PlayerActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 312
    iget-object v1, p0, Lcom/perm/kate/PlayerActivity;->mPlay:Landroid/widget/ImageButton;

    iget v2, p0, Lcom/perm/kate/PlayerActivity;->player_pause_button:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0
.end method

.method private scrollToCurrentAudio(Z)V
    .locals 1
    .param p1, "smooth"    # Z

    .prologue
    .line 502
    invoke-virtual {p0}, Lcom/perm/kate/PlayerActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 524
    :goto_0
    return-void

    .line 504
    :cond_0
    new-instance v0, Lcom/perm/kate/PlayerActivity$9;

    invoke-direct {v0, p0, p1}, Lcom/perm/kate/PlayerActivity$9;-><init>(Lcom/perm/kate/PlayerActivity;Z)V

    invoke-virtual {p0, v0}, Lcom/perm/kate/PlayerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private scrollToCurrentAudioDelayed(Z)V
    .locals 4
    .param p1, "smooth"    # Z

    .prologue
    .line 550
    iget-object v0, p0, Lcom/perm/kate/PlayerActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/perm/kate/PlayerActivity$10;

    invoke-direct {v1, p0, p1}, Lcom/perm/kate/PlayerActivity$10;-><init>(Lcom/perm/kate/PlayerActivity;Z)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 555
    return-void
.end method

.method private searchSongArtist()V
    .locals 3

    .prologue
    .line 485
    sget-object v1, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    if-nez v1, :cond_0

    .line 491
    :goto_0
    return-void

    .line 487
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/perm/kate/SearchActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 488
    .local v0, "intent_sa":Landroid/content/Intent;
    const-string v1, "com.perm.kate.search_audio"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 489
    const-string v1, "com.perm.kate.search_audio_artist"

    sget-object v2, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    iget-object v2, v2, Lcom/perm/kate/api/Audio;->artist:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 490
    invoke-virtual {p0, v0}, Lcom/perm/kate/PlayerActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static setRepeat(Landroid/content/Context;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "value"    # I

    .prologue
    .line 615
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 616
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const v2, 0x7f07054a

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 617
    return-void
.end method

.method private showPlayerControls(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 441
    iget-object v1, p0, Lcom/perm/kate/PlayerActivity;->seekBar:Landroid/widget/SeekBar;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 446
    return-void

    .line 441
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private showSongText()V
    .locals 3

    .prologue
    .line 494
    sget-object v1, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    if-nez v1, :cond_0

    .line 499
    :goto_0
    return-void

    .line 496
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/perm/kate/LyricsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 497
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.perm.kate.lyrics_id"

    sget-object v2, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    iget-object v2, v2, Lcom/perm/kate/api/Audio;->lyrics_id:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 498
    invoke-virtual {p0, v0}, Lcom/perm/kate/PlayerActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static smoothScrollToPositionWithReflection(Landroid/widget/ListView;I)V
    .locals 8
    .param p0, "view"    # Landroid/widget/ListView;
    .param p1, "position"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 527
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x8

    if-ge v4, v5, :cond_0

    .line 546
    :goto_0
    return-void

    .line 529
    :cond_0
    new-array v3, v7, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v6

    .line 531
    .local v3, "signature":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :try_start_0
    const-class v4, Landroid/widget/ListView;

    const-string v5, "smoothScrollToPosition"

    invoke-virtual {v4, v5, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 532
    .local v2, "method":Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/Object;

    .line 533
    .local v0, "args":[Ljava/lang/Object;
    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v4

    .line 534
    invoke-virtual {v2, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    goto :goto_0

    .line 535
    .end local v0    # "args":[Ljava/lang/Object;
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 536
    .local v1, "e":Ljava/lang/SecurityException;
    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    .line 537
    .end local v1    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    .line 538
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 539
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v1

    .line 540
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 541
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v1

    .line 542
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 543
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v1

    .line 544
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method private updateRepeatButton()V
    .locals 3

    .prologue
    .line 558
    invoke-static {p0}, Lcom/perm/kate/PlayerActivity;->getRepeat(Landroid/content/Context;)I

    move-result v1

    .line 560
    .local v1, "repeat_value":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 561
    iget v0, p0, Lcom/perm/kate/PlayerActivity;->player_repeat_button:I

    .line 566
    .local v0, "repeat_res":I
    :goto_0
    iget-object v2, p0, Lcom/perm/kate/PlayerActivity;->mRepeat:Landroid/widget/ImageButton;

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 567
    return-void

    .line 562
    .end local v0    # "repeat_res":I
    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 563
    iget v0, p0, Lcom/perm/kate/PlayerActivity;->player_repeat_button_all:I

    .restart local v0    # "repeat_res":I
    goto :goto_0

    .line 565
    .end local v0    # "repeat_res":I
    :cond_1
    iget v0, p0, Lcom/perm/kate/PlayerActivity;->player_repeat_button_inactive:I

    .restart local v0    # "repeat_res":I
    goto :goto_0
.end method

.method private static upgradeRepeatPreferances(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 4
    .param p0, "prefs"    # Landroid/content/SharedPreferences;
    .param p1, "new_key"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 603
    const-string v0, "key_player_repeat"

    .line 604
    .local v0, "old_key":Ljava/lang/String;
    invoke-interface {p0, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 605
    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 606
    .local v1, "old_value":Z
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 607
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-interface {v3, p1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 609
    .end local v1    # "old_value":Z
    :cond_1
    return-void
.end method


# virtual methods
.method protected fillMenuItems(Landroid/view/Menu;)Z
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v4, 0x0

    .line 465
    sget-object v0, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    iget-object v0, v0, Lcom/perm/kate/api/Audio;->lyrics_id:Ljava/lang/Long;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    iget-object v0, v0, Lcom/perm/kate/api/Audio;->lyrics_id:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 466
    const/16 v0, 0x8

    const/16 v1, 0x3fb

    const v2, 0x7f07026d

    invoke-interface {p1, v4, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 467
    :cond_0
    const/16 v0, 0x9

    const/16 v1, 0x3fd

    const v2, 0x7f070250

    invoke-interface {p1, v4, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 468
    const/4 v0, 0x1

    return v0
.end method

.method protected onChangeRepeatState()V
    .locals 0

    .prologue
    .line 228
    invoke-static {p0}, Lcom/perm/kate/KateWidgetAudio;->updateAll(Landroid/content/Context;)V

    .line 229
    return-void
.end method

.method protected onChangeShuffleState()V
    .locals 0

    .prologue
    .line 257
    invoke-static {p0}, Lcom/perm/kate/KateWidgetAudio;->updateAll(Landroid/content/Context;)V

    .line 258
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 56
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    const v4, 0x7f0300dd

    invoke-virtual {p0, v4}, Lcom/perm/kate/PlayerActivity;->setContentView(I)V

    .line 58
    invoke-virtual {p0}, Lcom/perm/kate/PlayerActivity;->setupMenuButton()V

    .line 59
    const v4, 0x7f07045b

    invoke-virtual {p0, v4}, Lcom/perm/kate/PlayerActivity;->setHeaderTitle(I)V

    .line 61
    invoke-static {}, Lcom/perm/kate/theme/ThemeColorsHelper;->isLightTheme()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 62
    const v4, 0x7f020161

    iput v4, p0, Lcom/perm/kate/PlayerActivity;->player_play_button:I

    .line 63
    const v4, 0x7f02015c

    iput v4, p0, Lcom/perm/kate/PlayerActivity;->player_pause_button:I

    .line 64
    const v4, 0x7f020169

    iput v4, p0, Lcom/perm/kate/PlayerActivity;->player_repeat_button_all:I

    .line 65
    const v4, 0x7f02016f

    iput v4, p0, Lcom/perm/kate/PlayerActivity;->player_repeat_button:I

    .line 66
    const v4, 0x7f02016a

    iput v4, p0, Lcom/perm/kate/PlayerActivity;->player_repeat_button_inactive:I

    .line 67
    const v4, 0x7f020150

    iput v4, p0, Lcom/perm/kate/PlayerActivity;->player_broadcast_button:I

    .line 68
    const v4, 0x7f020151

    iput v4, p0, Lcom/perm/kate/PlayerActivity;->player_broadcast_button_inactive:I

    .line 80
    :goto_0
    invoke-static {p0}, Lcom/perm/kate/PlaybackService;->restoreState(Landroid/content/Context;)V

    .line 82
    const/4 v4, 0x3

    invoke-virtual {p0, v4}, Lcom/perm/kate/PlayerActivity;->setVolumeControlStream(I)V

    .line 84
    invoke-virtual {p0}, Lcom/perm/kate/PlayerActivity;->startTimer()V

    .line 86
    invoke-virtual {p0}, Lcom/perm/kate/PlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "com.audioanywhere.from_notification"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/perm/kate/PlayerActivity;->from_notification:Z

    .line 88
    sget-object v4, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    if-eqz v4, :cond_0

    .line 89
    invoke-direct {p0}, Lcom/perm/kate/PlayerActivity;->displayEpisode()V

    .line 90
    :cond_0
    const v4, 0x7f0e0247

    invoke-virtual {p0, v4}, Lcom/perm/kate/PlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    iput-object v4, p0, Lcom/perm/kate/PlayerActivity;->mPlay:Landroid/widget/ImageButton;

    .line 91
    const v4, 0x7f0e02a9

    invoke-virtual {p0, v4}, Lcom/perm/kate/PlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    iput-object v4, p0, Lcom/perm/kate/PlayerActivity;->mNext:Landroid/widget/ImageButton;

    .line 92
    const v4, 0x7f0e02a8

    invoke-virtual {p0, v4}, Lcom/perm/kate/PlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    iput-object v4, p0, Lcom/perm/kate/PlayerActivity;->mPrevious:Landroid/widget/ImageButton;

    .line 93
    const v4, 0x7f0e02a6

    invoke-virtual {p0, v4}, Lcom/perm/kate/PlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    iput-object v4, p0, Lcom/perm/kate/PlayerActivity;->mShuffle:Landroid/widget/ImageButton;

    .line 94
    const v4, 0x7f0e02a7

    invoke-virtual {p0, v4}, Lcom/perm/kate/PlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    iput-object v4, p0, Lcom/perm/kate/PlayerActivity;->mRepeat:Landroid/widget/ImageButton;

    .line 95
    const v4, 0x7f0e02aa

    invoke-virtual {p0, v4}, Lcom/perm/kate/PlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    iput-object v4, p0, Lcom/perm/kate/PlayerActivity;->mBroadcast:Landroid/widget/ImageButton;

    .line 96
    invoke-direct {p0}, Lcom/perm/kate/PlayerActivity;->updateRepeatButton()V

    .line 97
    invoke-virtual {p0}, Lcom/perm/kate/PlayerActivity;->updateBroadcastButton()V

    .line 98
    invoke-direct {p0}, Lcom/perm/kate/PlayerActivity;->b2()V

    .line 99
    const v4, 0x7f0e0249

    invoke-virtual {p0, v4}, Lcom/perm/kate/PlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/SeekBar;

    iput-object v4, p0, Lcom/perm/kate/PlayerActivity;->seekBar:Landroid/widget/SeekBar;

    .line 100
    iget-object v4, p0, Lcom/perm/kate/PlayerActivity;->seekBar:Landroid/widget/SeekBar;

    iget-object v5, p0, Lcom/perm/kate/PlayerActivity;->l:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 103
    iget-object v4, p0, Lcom/perm/kate/PlayerActivity;->seekBar:Landroid/widget/SeekBar;

    sget v5, Lcom/perm/kate/PlayerActivity;->Theme:I

    invoke-static {v4, v5}, Lcom/perm/utils/SeekBarHelper;->setSeekBarColor(Landroid/widget/SeekBar;I)V

    .line 104
    iget-object v4, p0, Lcom/perm/kate/PlayerActivity;->mPlay:Landroid/widget/ImageButton;

    iget-object v5, p0, Lcom/perm/kate/PlayerActivity;->playButtonClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object v4, p0, Lcom/perm/kate/PlayerActivity;->mNext:Landroid/widget/ImageButton;

    iget-object v5, p0, Lcom/perm/kate/PlayerActivity;->nextButtonClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iget-object v4, p0, Lcom/perm/kate/PlayerActivity;->mPrevious:Landroid/widget/ImageButton;

    iget-object v5, p0, Lcom/perm/kate/PlayerActivity;->previousButtonClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iget-object v4, p0, Lcom/perm/kate/PlayerActivity;->mShuffle:Landroid/widget/ImageButton;

    iget-object v5, p0, Lcom/perm/kate/PlayerActivity;->shuffleButtonClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object v4, p0, Lcom/perm/kate/PlayerActivity;->mRepeat:Landroid/widget/ImageButton;

    iget-object v5, p0, Lcom/perm/kate/PlayerActivity;->repeatButtonClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iget-object v4, p0, Lcom/perm/kate/PlayerActivity;->mBroadcast:Landroid/widget/ImageButton;

    iget-object v5, p0, Lcom/perm/kate/PlayerActivity;->broadcastButtonClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    const v4, 0x7f0e008d

    invoke-virtual {p0, v4}, Lcom/perm/kate/PlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lcom/perm/kate/PlayerActivity;->lv_audio_list:Landroid/widget/ListView;

    .line 112
    iget-object v4, p0, Lcom/perm/kate/PlayerActivity;->playerCallback:Lcom/perm/kate/Player$PlayerCallback;

    invoke-static {v4}, Lcom/perm/kate/PlaybackService;->addCallback(Lcom/perm/kate/Player$PlayerCallback;)V

    .line 113
    invoke-direct {p0}, Lcom/perm/kate/PlayerActivity;->displayPlayButton()V

    .line 114
    sget-object v4, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    if-eqz v4, :cond_4

    .line 115
    sget-object v4, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    if-eqz v4, :cond_3

    sget-object v4, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    iget v4, v4, Lcom/perm/kate/Player;->state:I

    if-eqz v4, :cond_1

    sget-object v4, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    iget v4, v4, Lcom/perm/kate/Player;->state:I

    if-ne v4, v7, :cond_3

    .line 117
    :cond_1
    sget-object v4, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    invoke-virtual {v4}, Lcom/perm/kate/Player;->getDuration()I

    move-result v2

    .line 118
    .local v2, "dur":I
    sget-object v4, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    invoke-virtual {v4}, Lcom/perm/kate/Player;->getCurrentPosition()I

    move-result v3

    .line 119
    .local v3, "pos":I
    sget-object v4, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    invoke-virtual {v4}, Lcom/perm/kate/Player;->getBufferPercents()I

    move-result v1

    .line 120
    .local v1, "buffer":I
    invoke-direct {p0, v2, v3, v1}, Lcom/perm/kate/PlayerActivity;->displayProgress(III)V

    .line 128
    .end local v1    # "buffer":I
    :goto_1
    invoke-direct {p0, v7}, Lcom/perm/kate/PlayerActivity;->showPlayerControls(Z)V

    .line 133
    .end local v2    # "dur":I
    .end local v3    # "pos":I
    :goto_2
    invoke-direct {p0}, Lcom/perm/kate/PlayerActivity;->displayListData()V

    .line 136
    invoke-direct {p0, v6}, Lcom/perm/kate/PlayerActivity;->scrollToCurrentAudioDelayed(Z)V

    .line 139
    const v4, 0x7f0e021e

    invoke-virtual {p0, v4}, Lcom/perm/kate/PlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 140
    .local v0, "artist":Landroid/widget/TextView;
    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 141
    return-void

    .line 70
    .end local v0    # "artist":Landroid/widget/TextView;
    :cond_2
    const v4, 0x7f020162

    iput v4, p0, Lcom/perm/kate/PlayerActivity;->player_play_button:I

    .line 71
    const v4, 0x7f02015d

    iput v4, p0, Lcom/perm/kate/PlayerActivity;->player_pause_button:I

    .line 72
    const v4, 0x7f02016c

    iput v4, p0, Lcom/perm/kate/PlayerActivity;->player_repeat_button_all:I

    .line 73
    const v4, 0x7f020170

    iput v4, p0, Lcom/perm/kate/PlayerActivity;->player_repeat_button:I

    .line 74
    const v4, 0x7f02016d

    iput v4, p0, Lcom/perm/kate/PlayerActivity;->player_repeat_button_inactive:I

    .line 75
    const v4, 0x7f020152

    iput v4, p0, Lcom/perm/kate/PlayerActivity;->player_broadcast_button:I

    .line 76
    const v4, 0x7f020153

    iput v4, p0, Lcom/perm/kate/PlayerActivity;->player_broadcast_button_inactive:I

    goto/16 :goto_0

    .line 123
    :cond_3
    sget-object v4, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    iget-wide v4, v4, Lcom/perm/kate/api/Audio;->duration:J

    long-to-int v2, v4

    .line 124
    .restart local v2    # "dur":I
    sget v3, Lcom/perm/kate/PlaybackService;->position:I

    .line 125
    .restart local v3    # "pos":I
    invoke-direct {p0, v2, v3, v6}, Lcom/perm/kate/PlayerActivity;->displayProgress(III)V

    .line 126
    iput v3, p0, Lcom/perm/kate/PlayerActivity;->positionOverride:I

    goto :goto_1

    .line 131
    .end local v2    # "dur":I
    .end local v3    # "pos":I
    :cond_4
    invoke-direct {p0, v6}, Lcom/perm/kate/PlayerActivity;->showPlayerControls(Z)V

    goto :goto_2
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 428
    iget-object v0, p0, Lcom/perm/kate/PlayerActivity;->playerCallback:Lcom/perm/kate/Player$PlayerCallback;

    invoke-static {v0}, Lcom/perm/kate/PlaybackService;->removeCallback(Lcom/perm/kate/Player$PlayerCallback;)V

    .line 429
    iget-object v0, p0, Lcom/perm/kate/PlayerActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/perm/kate/PlayerActivity;->task:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 430
    invoke-super {p0}, Lcom/perm/kate/BaseActivity;->onDestroy()V

    .line 431
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 473
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 481
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 475
    :pswitch_0
    invoke-direct {p0}, Lcom/perm/kate/PlayerActivity;->searchSongArtist()V

    goto :goto_0

    .line 478
    :pswitch_1
    invoke-direct {p0}, Lcom/perm/kate/PlayerActivity;->showSongText()V

    goto :goto_0

    .line 473
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 458
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 459
    invoke-virtual {p0, p1}, Lcom/perm/kate/PlayerActivity;->fillMenuItems(Landroid/view/Menu;)Z

    .line 460
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 621
    invoke-super {p0}, Lcom/perm/kate/BaseActivity;->onStart()V

    .line 623
    invoke-direct {p0}, Lcom/perm/kate/PlayerActivity;->notifyList()V

    .line 624
    return-void
.end method

.method public startTimer()V
    .locals 4

    .prologue
    .line 362
    iget-object v0, p0, Lcom/perm/kate/PlayerActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/perm/kate/PlayerActivity;->task:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 363
    return-void
.end method

.method public updateBroadcastButton()V
    .locals 2

    .prologue
    .line 570
    iget-object v1, p0, Lcom/perm/kate/PlayerActivity;->mBroadcast:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/perm/utils/AudioBroadcast;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/perm/kate/PlayerActivity;->player_broadcast_button:I

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 571
    return-void

    .line 570
    :cond_0
    iget v0, p0, Lcom/perm/kate/PlayerActivity;->player_broadcast_button_inactive:I

    goto :goto_0
.end method

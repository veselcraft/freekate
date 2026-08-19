.class public Lcom/perm/kate/PlayerActivity;
.super Lcom/perm/kate/BaseActivity;
.source "PlayerActivity.java"


# instance fields
.field audioHelper:Lcom/perm/kate/AudioClickHelper;

.field private audioListAdapter:Lcom/perm/kate/AudioListAdapter;

.field private broadcastButtonClick:Landroid/view/View$OnClickListener;

.field private dropListener:Lcom/mobeta/android/dslv/DragSortListView$DropListener;

.field duration:Landroid/widget/TextView;

.field from_notification:Z

.field handler:Landroid/os/Handler;

.field private l:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private listClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private lv_audio_list:Landroid/widget/ListView;

.field private mBroadcast:Landroid/widget/ImageButton;

.field private mPlay:Landroid/widget/ImageButton;

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

.field seekBar:Landroid/widget/SeekBar;

.field shuffleButtonClick:Landroid/view/View$OnClickListener;

.field task:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 38
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    .line 50
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/PlayerActivity;->handler:Landroid/os/Handler;

    .line 166
    new-instance v0, Lcom/perm/kate/PlayerActivity$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/PlayerActivity$1;-><init>(Lcom/perm/kate/PlayerActivity;)V

    iput-object v0, p0, Lcom/perm/kate/PlayerActivity;->dropListener:Lcom/mobeta/android/dslv/DragSortListView$DropListener;

    .line 181
    new-instance v0, Lcom/perm/kate/AudioClickHelper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/AudioClickHelper;-><init>(Lcom/perm/kate/BaseActivity;Lcom/perm/kate/AudioClickHelper$AudioClickHelperCallback;)V

    iput-object v0, p0, Lcom/perm/kate/PlayerActivity;->audioHelper:Lcom/perm/kate/AudioClickHelper;

    .line 183
    new-instance v0, Lcom/perm/kate/PlayerActivity$2;

    invoke-direct {v0, p0}, Lcom/perm/kate/PlayerActivity$2;-><init>(Lcom/perm/kate/PlayerActivity;)V

    iput-object v0, p0, Lcom/perm/kate/PlayerActivity;->listClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 224
    new-instance v0, Lcom/perm/kate/PlayerActivity$3;

    invoke-direct {v0, p0}, Lcom/perm/kate/PlayerActivity$3;-><init>(Lcom/perm/kate/PlayerActivity;)V

    iput-object v0, p0, Lcom/perm/kate/PlayerActivity;->playButtonClick:Landroid/view/View$OnClickListener;

    .line 235
    new-instance v0, Lcom/perm/kate/PlayerActivity$4;

    invoke-direct {v0, p0}, Lcom/perm/kate/PlayerActivity$4;-><init>(Lcom/perm/kate/PlayerActivity;)V

    iput-object v0, p0, Lcom/perm/kate/PlayerActivity;->nextButtonClick:Landroid/view/View$OnClickListener;

    .line 247
    new-instance v0, Lcom/perm/kate/PlayerActivity$5;

    invoke-direct {v0, p0}, Lcom/perm/kate/PlayerActivity$5;-><init>(Lcom/perm/kate/PlayerActivity;)V

    iput-object v0, p0, Lcom/perm/kate/PlayerActivity;->previousButtonClick:Landroid/view/View$OnClickListener;

    .line 259
    new-instance v0, Lcom/perm/kate/PlayerActivity$6;

    invoke-direct {v0, p0}, Lcom/perm/kate/PlayerActivity$6;-><init>(Lcom/perm/kate/PlayerActivity;)V

    iput-object v0, p0, Lcom/perm/kate/PlayerActivity;->shuffleButtonClick:Landroid/view/View$OnClickListener;

    .line 342
    new-instance v0, Lcom/perm/kate/PlayerActivity$7;

    invoke-direct {v0, p0}, Lcom/perm/kate/PlayerActivity$7;-><init>(Lcom/perm/kate/PlayerActivity;)V

    iput-object v0, p0, Lcom/perm/kate/PlayerActivity;->playerCallback:Lcom/perm/kate/Player$PlayerCallback;

    .line 392
    new-instance v0, Lcom/perm/kate/PlayerActivity$8;

    invoke-direct {v0, p0}, Lcom/perm/kate/PlayerActivity$8;-><init>(Lcom/perm/kate/PlayerActivity;)V

    iput-object v0, p0, Lcom/perm/kate/PlayerActivity;->task:Ljava/lang/Runnable;

    const/4 v0, -0x1

    .line 425
    iput v0, p0, Lcom/perm/kate/PlayerActivity;->positionOverride:I

    .line 427
    new-instance v0, Lcom/perm/kate/PlayerActivity$9;

    invoke-direct {v0, p0}, Lcom/perm/kate/PlayerActivity$9;-><init>(Lcom/perm/kate/PlayerActivity;)V

    iput-object v0, p0, Lcom/perm/kate/PlayerActivity;->l:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 575
    new-instance v0, Lcom/perm/kate/PlayerActivity$12;

    invoke-direct {v0, p0}, Lcom/perm/kate/PlayerActivity$12;-><init>(Lcom/perm/kate/PlayerActivity;)V

    iput-object v0, p0, Lcom/perm/kate/PlayerActivity;->repeatButtonClick:Landroid/view/View$OnClickListener;

    .line 588
    new-instance v0, Lcom/perm/kate/PlayerActivity$13;

    invoke-direct {v0, p0}, Lcom/perm/kate/PlayerActivity$13;-><init>(Lcom/perm/kate/PlayerActivity;)V

    iput-object v0, p0, Lcom/perm/kate/PlayerActivity;->broadcastButtonClick:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/PlayerActivity;)Lcom/perm/kate/AudioListAdapter;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/perm/kate/PlayerActivity;->audioListAdapter:Lcom/perm/kate/AudioListAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/perm/kate/PlayerActivity;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/perm/kate/PlayerActivity;->playAudio()V

    return-void
.end method

.method static synthetic access$1000(Lcom/perm/kate/PlayerActivity;III)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/perm/kate/PlayerActivity;->displayProgress(III)V

    return-void
.end method

.method static synthetic access$1100(Lcom/perm/kate/PlayerActivity;)Landroid/widget/ListView;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/perm/kate/PlayerActivity;->lv_audio_list:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/perm/kate/PlayerActivity;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/perm/kate/PlayerActivity;->updateRepeatButton()V

    return-void
.end method

.method static synthetic access$200(Lcom/perm/kate/PlayerActivity;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/perm/kate/PlayerActivity;->pauseAudio()V

    return-void
.end method

.method static synthetic access$300(Lcom/perm/kate/PlayerActivity;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/perm/kate/PlayerActivity;->onNext()V

    return-void
.end method

.method static synthetic access$400(Lcom/perm/kate/PlayerActivity;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/perm/kate/PlayerActivity;->b2()V

    return-void
.end method

.method static synthetic access$500(Lcom/perm/kate/PlayerActivity;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/perm/kate/PlayerActivity;->notifyList()V

    return-void
.end method

.method static synthetic access$600(Lcom/perm/kate/PlayerActivity;Z)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/perm/kate/PlayerActivity;->scrollToCurrentAudio(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/perm/kate/PlayerActivity;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/perm/kate/PlayerActivity;->displayPlayButton()V

    return-void
.end method

.method static synthetic access$800(Lcom/perm/kate/PlayerActivity;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/perm/kate/PlayerActivity;->displayEpisode()V

    return-void
.end method

.method static synthetic access$900(Lcom/perm/kate/PlayerActivity;Z)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/perm/kate/PlayerActivity;->scrollToCurrentAudioDelayed(Z)V

    return-void
.end method

.method private b2()V
    .locals 3

    .line 271
    iget-object v0, p0, Lcom/perm/kate/PlayerActivity;->mShuffle:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    return-void

    .line 273
    :cond_0
    sget-boolean v1, Lcom/perm/kate/PlaybackService;->is_shuffle:Z

    .line 275
    sget-boolean v2, Lcom/perm/kate/BaseActivity;->IsCustomTheme:Z

    if-eqz v2, :cond_1

    .line 276
    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v2

    invoke-virtual {v2}, Lcom/perm/kate/theme/ColorTheme;->getFloatingActionButtonBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 279
    :cond_1
    invoke-static {}, Lcom/perm/kate/theme/ThemeColorsHelper;->getFloatingActionButtonBg()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 280
    :goto_0
    iget-object v0, p0, Lcom/perm/kate/PlayerActivity;->mShuffle:Landroid/widget/ImageButton;

    if-eqz v1, :cond_2

    const v1, 0x7f080241

    goto :goto_1

    :cond_2
    const v1, 0x7f080240

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    return-void
.end method

.method private displayEpisode()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 205
    sget-object v0, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v0, 0x7f09033a

    .line 207
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 208
    sget-boolean v1, Lcom/perm/kate/PlaybackService;->ad_playing:Z

    if-nez v1, :cond_2

    .line 209
    sget-object v1, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    invoke-virtual {v1}, Lcom/perm/kate/api/Audio;->isPodcast()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 210
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0f03f5

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    iget-object v2, v2, Lcom/perm/kate/api/Audio;->artist:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 212
    :cond_1
    sget-object v1, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    iget-object v1, v1, Lcom/perm/kate/api/Audio;->artist:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    const v1, 0x7f0f002f

    .line 214
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    const v0, 0x7f0900fa

    .line 215
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/perm/kate/PlayerActivity;->duration:Landroid/widget/TextView;

    .line 216
    sget-object v1, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    iget-wide v1, v1, Lcom/perm/kate/api/Audio;->duration:J

    invoke-static {v1, v2}, Lcom/perm/kate/Helper;->getDurationTextBySeconds(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0900ed

    .line 217
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 218
    sget-boolean v1, Lcom/perm/kate/PlaybackService;->ad_playing:Z

    if-nez v1, :cond_3

    .line 219
    sget-object v1, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    iget-object v1, v1, Lcom/perm/kate/api/Audio;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    const-string v1, ""

    .line 221
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method private displayListData()V
    .locals 4

    const/4 v0, 0x1

    .line 148
    :try_start_0
    sget-object v1, Lcom/perm/kate/PlaybackService;->audios:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    return-void

    .line 152
    :cond_0
    new-instance v2, Lcom/perm/kate/AudioListAdapter;

    sget v3, Lcom/perm/kate/PlaybackService;->source:I

    invoke-direct {v2, p0, v3}, Lcom/perm/kate/AudioListAdapter;-><init>(Landroid/app/Activity;I)V

    iput-object v2, p0, Lcom/perm/kate/PlayerActivity;->audioListAdapter:Lcom/perm/kate/AudioListAdapter;

    .line 153
    invoke-virtual {v2, v1}, Lcom/perm/kate/AudioListAdapter;->displayNewData(Ljava/util/ArrayList;)V

    .line 154
    iget-object v1, p0, Lcom/perm/kate/PlayerActivity;->audioListAdapter:Lcom/perm/kate/AudioListAdapter;

    iput-boolean v0, v1, Lcom/perm/kate/AudioListAdapter;->fromPlayer:Z

    .line 155
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v2}, Lcom/perm/kate/db/DataHelper;->getDownloadStates()Ljava/util/HashMap;

    move-result-object v2

    iput-object v2, v1, Lcom/perm/kate/AudioListAdapter;->downloadStates:Ljava/util/HashMap;

    .line 156
    iget-object v1, p0, Lcom/perm/kate/PlayerActivity;->lv_audio_list:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/perm/kate/PlayerActivity;->audioListAdapter:Lcom/perm/kate/AudioListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 157
    iget-object v1, p0, Lcom/perm/kate/PlayerActivity;->lv_audio_list:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/perm/kate/PlayerActivity;->listClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 158
    iget-object v1, p0, Lcom/perm/kate/PlayerActivity;->lv_audio_list:Landroid/widget/ListView;

    check-cast v1, Lcom/mobeta/android/dslv/DragSortListView;

    iget-object v2, p0, Lcom/perm/kate/PlayerActivity;->dropListener:Lcom/mobeta/android/dslv/DragSortListView$DropListener;

    invoke-virtual {v1, v2}, Lcom/mobeta/android/dslv/DragSortListView;->setDropListener(Lcom/mobeta/android/dslv/DragSortListView$DropListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 160
    invoke-static {v1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 161
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 162
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private displayPlayButton()V
    .locals 3

    .line 299
    sget-object v0, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    const-string v1, "Kate.PlayerActivity"

    if-eqz v0, :cond_1

    iget v0, v0, Lcom/perm/kate/Player;->state:I

    if-eqz v0, :cond_0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/PlayerActivity;->mPlay:Landroid/widget/ImageButton;

    iget v2, p0, Lcom/perm/kate/PlayerActivity;->player_pause_button:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    const-string v0, "Display Pause"

    .line 302
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 305
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/PlayerActivity;->mPlay:Landroid/widget/ImageButton;

    iget v2, p0, Lcom/perm/kate/PlayerActivity;->player_play_button:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    const-string v0, "Display Play"

    .line 306
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    :goto_0
    iget-object v0, p0, Lcom/perm/kate/PlayerActivity;->mPlay:Landroid/widget/ImageButton;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0f03e8

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0x7f0f03c1

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private displayProgress(III)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 466
    iget-object v0, p0, Lcom/perm/kate/PlayerActivity;->duration:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    int-to-long v2, p2

    invoke-static {v2, v3}, Lcom/perm/kate/Helper;->getDurationTextBySeconds(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v2, p1

    invoke-static {v2, v3}, Lcom/perm/kate/Helper;->getDurationTextBySeconds(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 467
    iget-object v0, p0, Lcom/perm/kate/PlayerActivity;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 468
    iget-object v0, p0, Lcom/perm/kate/PlayerActivity;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 469
    iget-object p2, p0, Lcom/perm/kate/PlayerActivity;->seekBar:Landroid/widget/SeekBar;

    int-to-double v0, p1

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    int-to-double v2, p3

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-int p1, v0

    invoke-virtual {p2, p1}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    return-void
.end method

.method public static getRepeat(Landroid/content/Context;)I
    .locals 2

    .line 597
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const v1, 0x7f0f0175

    .line 598
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    .line 599
    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private notifyList()V
    .locals 1

    .line 481
    iget-object v0, p0, Lcom/perm/kate/PlayerActivity;->lv_audio_list:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/perm/kate/PlayerActivity;->lv_audio_list:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method private onNext()V
    .locals 2

    .line 242
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/perm/kate/PlaybackService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "next"

    .line 243
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 244
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private pauseAudio()V
    .locals 2

    .line 313
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/perm/kate/PlaybackService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "pause"

    .line 314
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 315
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const-string v0, "Kate.PlayerActivity"

    const-string v1, "pauseAudio"

    .line 316
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iget-object v0, p0, Lcom/perm/kate/PlayerActivity;->mPlay:Landroid/widget/ImageButton;

    iget v1, p0, Lcom/perm/kate/PlayerActivity;->player_play_button:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    return-void
.end method

.method private playAudio()V
    .locals 2

    const/4 v0, 0x1

    .line 322
    invoke-direct {p0, v0}, Lcom/perm/kate/PlayerActivity;->showPlayerControls(Z)V

    .line 323
    iget-boolean v0, p0, Lcom/perm/kate/PlayerActivity;->from_notification:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 334
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/perm/kate/PlaybackService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "play"

    .line 335
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 336
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 339
    iget-object v0, p0, Lcom/perm/kate/PlayerActivity;->mPlay:Landroid/widget/ImageButton;

    iget v1, p0, Lcom/perm/kate/PlayerActivity;->player_pause_button:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    return-void

    .line 325
    :cond_1
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/perm/kate/PlaybackService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "resume"

    .line 326
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 327
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 329
    iget-object v0, p0, Lcom/perm/kate/PlayerActivity;->mPlay:Landroid/widget/ImageButton;

    iget v1, p0, Lcom/perm/kate/PlayerActivity;->player_pause_button:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 330
    sget v0, Lcom/perm/kate/PlaybackService;->position:I

    if-eqz v0, :cond_2

    .line 331
    iput v0, p0, Lcom/perm/kate/PlayerActivity;->positionOverride:I

    :cond_2
    return-void
.end method

.method private scrollToCurrentAudio(Z)V
    .locals 1

    .line 527
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 529
    :cond_0
    new-instance v0, Lcom/perm/kate/PlayerActivity$10;

    invoke-direct {v0, p0, p1}, Lcom/perm/kate/PlayerActivity$10;-><init>(Lcom/perm/kate/PlayerActivity;Z)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private scrollToCurrentAudioDelayed(Z)V
    .locals 4

    .line 552
    iget-object v0, p0, Lcom/perm/kate/PlayerActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/perm/kate/PlayerActivity$11;

    invoke-direct {v1, p0, p1}, Lcom/perm/kate/PlayerActivity$11;-><init>(Lcom/perm/kate/PlayerActivity;Z)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static setRepeat(Landroid/content/Context;I)V
    .locals 2

    .line 606
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 607
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const v1, 0x7f0f0175

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private showPlayerControls(Z)V
    .locals 1

    .line 473
    iget-object v0, p0, Lcom/perm/kate/PlayerActivity;->seekBar:Landroid/widget/SeekBar;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setVisibility(I)V

    return-void
.end method

.method private showSongText()V
    .locals 4

    .line 518
    sget-object v0, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    if-nez v0, :cond_0

    return-void

    .line 520
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/perm/kate/LyricsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 521
    sget-object v1, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    iget-object v1, v1, Lcom/perm/kate/api/Audio;->lyrics_id:Ljava/lang/Long;

    const-string v2, "com.perm.kate.lyrics_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 522
    sget-object v1, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    iget-wide v1, v1, Lcom/perm/kate/api/Audio;->aid:J

    const-string v3, "audio_id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 523
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private updateRepeatButton()V
    .locals 2

    .line 560
    invoke-static {p0}, Lcom/perm/kate/PlayerActivity;->getRepeat(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 563
    iget v0, p0, Lcom/perm/kate/PlayerActivity;->player_repeat_button:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 565
    iget v0, p0, Lcom/perm/kate/PlayerActivity;->player_repeat_button_all:I

    goto :goto_0

    .line 567
    :cond_1
    iget v0, p0, Lcom/perm/kate/PlayerActivity;->player_repeat_button_inactive:I

    .line 568
    :goto_0
    iget-object v1, p0, Lcom/perm/kate/PlayerActivity;->mRepeat:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    return-void
.end method


# virtual methods
.method protected fillMenuItems(Landroid/view/Menu;)Z
    .locals 6

    .line 497
    sget-object v0, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/perm/kate/api/Audio;->lyrics_id:Ljava/lang/Long;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    const/16 v0, 0x8

    const/16 v2, 0x3fb

    const v3, 0x7f0f02c6

    .line 498
    invoke-interface {p1, v1, v0, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    :cond_0
    const/16 v0, 0x9

    const/16 v2, 0x3fd

    const v3, 0x7f0f02aa

    .line 499
    invoke-interface {p1, v1, v0, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const/4 p1, 0x1

    return p1
.end method

.method protected onChangeRepeatState()V
    .locals 0

    .line 256
    invoke-static {p0}, Lcom/perm/kate/KateWidgetAudio;->updateAll(Landroid/content/Context;)V

    return-void
.end method

.method protected onChangeShuffleState()V
    .locals 0

    .line 284
    invoke-static {p0}, Lcom/perm/kate/KateWidgetAudio;->updateAll(Landroid/content/Context;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 56
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c00f7

    .line 57
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setContentView(I)V

    .line 58
    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->setupMenuButton()V

    const p1, 0x7f0f04eb

    .line 59
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setHeaderTitle(I)V

    .line 61
    invoke-static {}, Lcom/perm/kate/theme/ThemeColorsHelper;->isLightTheme()Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f08022e

    .line 62
    iput p1, p0, Lcom/perm/kate/PlayerActivity;->player_play_button:I

    const p1, 0x7f080229

    .line 63
    iput p1, p0, Lcom/perm/kate/PlayerActivity;->player_pause_button:I

    const p1, 0x7f080236

    .line 64
    iput p1, p0, Lcom/perm/kate/PlayerActivity;->player_repeat_button_all:I

    const p1, 0x7f08023c

    .line 65
    iput p1, p0, Lcom/perm/kate/PlayerActivity;->player_repeat_button:I

    const p1, 0x7f080237

    .line 66
    iput p1, p0, Lcom/perm/kate/PlayerActivity;->player_repeat_button_inactive:I

    const p1, -0x8a8a8b

    .line 67
    iput p1, p0, Lcom/perm/kate/PlayerActivity;->player_broadcast_button:I

    const p1, -0x414142

    .line 68
    iput p1, p0, Lcom/perm/kate/PlayerActivity;->player_broadcast_button_inactive:I

    goto :goto_0

    :cond_0
    const p1, 0x7f08022f

    .line 70
    iput p1, p0, Lcom/perm/kate/PlayerActivity;->player_play_button:I

    const p1, 0x7f08022a

    .line 71
    iput p1, p0, Lcom/perm/kate/PlayerActivity;->player_pause_button:I

    const p1, 0x7f080239

    .line 72
    iput p1, p0, Lcom/perm/kate/PlayerActivity;->player_repeat_button_all:I

    const p1, 0x7f08023d

    .line 73
    iput p1, p0, Lcom/perm/kate/PlayerActivity;->player_repeat_button:I

    const p1, 0x7f08023a

    .line 74
    iput p1, p0, Lcom/perm/kate/PlayerActivity;->player_repeat_button_inactive:I

    const/4 p1, -0x1

    .line 75
    iput p1, p0, Lcom/perm/kate/PlayerActivity;->player_broadcast_button:I

    const p1, -0x7a7a7b

    .line 76
    iput p1, p0, Lcom/perm/kate/PlayerActivity;->player_broadcast_button_inactive:I

    .line 80
    :goto_0
    invoke-static {p0}, Lcom/perm/kate/PlaybackService;->restoreState(Landroid/content/Context;)V

    const/4 p1, 0x3

    .line 82
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 84
    invoke-virtual {p0}, Lcom/perm/kate/PlayerActivity;->startTimer()V

    .line 86
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.audioanywhere.from_notification"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/perm/kate/PlayerActivity;->from_notification:Z

    .line 88
    sget-object p1, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    if-eqz p1, :cond_1

    .line 89
    invoke-direct {p0}, Lcom/perm/kate/PlayerActivity;->displayEpisode()V

    :cond_1
    const p1, 0x7f090089

    .line 90
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/perm/kate/PlayerActivity;->mPlay:Landroid/widget/ImageButton;

    const p1, 0x7f090084

    .line 91
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    const v0, 0x7f09008b

    .line 92
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    const v2, 0x7f090094

    .line 93
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/perm/kate/PlayerActivity;->mShuffle:Landroid/widget/ImageButton;

    const v2, 0x7f09008d

    .line 94
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/perm/kate/PlayerActivity;->mRepeat:Landroid/widget/ImageButton;

    const v2, 0x7f090067

    .line 95
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/perm/kate/PlayerActivity;->mBroadcast:Landroid/widget/ImageButton;

    .line 96
    invoke-direct {p0}, Lcom/perm/kate/PlayerActivity;->updateRepeatButton()V

    .line 97
    invoke-virtual {p0}, Lcom/perm/kate/PlayerActivity;->updateBroadcastButton()V

    .line 98
    invoke-direct {p0}, Lcom/perm/kate/PlayerActivity;->b2()V

    const v2, 0x7f090007

    .line 99
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    iput-object v2, p0, Lcom/perm/kate/PlayerActivity;->seekBar:Landroid/widget/SeekBar;

    .line 100
    iget-object v3, p0, Lcom/perm/kate/PlayerActivity;->l:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 103
    iget-object v2, p0, Lcom/perm/kate/PlayerActivity;->seekBar:Landroid/widget/SeekBar;

    sget v3, Lcom/perm/kate/BaseActivity;->Theme:I

    invoke-static {v2, v3}, Lcom/perm/utils/SeekBarHelper;->setSeekBarColor(Landroid/widget/SeekBar;I)V

    .line 104
    iget-object v2, p0, Lcom/perm/kate/PlayerActivity;->mPlay:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/perm/kate/PlayerActivity;->playButtonClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object v2, p0, Lcom/perm/kate/PlayerActivity;->nextButtonClick:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iget-object p1, p0, Lcom/perm/kate/PlayerActivity;->previousButtonClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iget-object p1, p0, Lcom/perm/kate/PlayerActivity;->mShuffle:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/perm/kate/PlayerActivity;->shuffleButtonClick:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object p1, p0, Lcom/perm/kate/PlayerActivity;->mRepeat:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/perm/kate/PlayerActivity;->repeatButtonClick:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iget-object p1, p0, Lcom/perm/kate/PlayerActivity;->mBroadcast:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/perm/kate/PlayerActivity;->broadcastButtonClick:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f09020a

    .line 110
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/perm/kate/PlayerActivity;->lv_audio_list:Landroid/widget/ListView;

    .line 112
    iget-object p1, p0, Lcom/perm/kate/PlayerActivity;->playerCallback:Lcom/perm/kate/Player$PlayerCallback;

    invoke-static {p1}, Lcom/perm/kate/PlaybackService;->addCallback(Lcom/perm/kate/Player$PlayerCallback;)V

    .line 113
    invoke-direct {p0}, Lcom/perm/kate/PlayerActivity;->displayPlayButton()V

    .line 114
    sget-object p1, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    if-eqz p1, :cond_4

    .line 115
    sget-object p1, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    iget v2, p1, Lcom/perm/kate/Player;->state:I

    if-eqz v2, :cond_2

    if-ne v2, v0, :cond_3

    .line 117
    :cond_2
    invoke-virtual {p1}, Lcom/perm/kate/Player;->getDuration()I

    move-result p1

    .line 118
    sget-object v2, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    invoke-virtual {v2}, Lcom/perm/kate/Player;->getCurrentPosition()I

    move-result v2

    .line 119
    sget-object v3, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    invoke-virtual {v3}, Lcom/perm/kate/Player;->getBufferPercents()I

    move-result v3

    .line 120
    invoke-direct {p0, p1, v2, v3}, Lcom/perm/kate/PlayerActivity;->displayProgress(III)V

    goto :goto_1

    .line 123
    :cond_3
    sget-object p1, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    iget-wide v2, p1, Lcom/perm/kate/api/Audio;->duration:J

    long-to-int p1, v2

    .line 124
    sget v2, Lcom/perm/kate/PlaybackService;->position:I

    .line 125
    invoke-direct {p0, p1, v2, v1}, Lcom/perm/kate/PlayerActivity;->displayProgress(III)V

    .line 126
    iput v2, p0, Lcom/perm/kate/PlayerActivity;->positionOverride:I

    .line 128
    :goto_1
    invoke-direct {p0, v0}, Lcom/perm/kate/PlayerActivity;->showPlayerControls(Z)V

    goto :goto_2

    .line 131
    :cond_4
    invoke-direct {p0, v1}, Lcom/perm/kate/PlayerActivity;->showPlayerControls(Z)V

    .line 133
    :goto_2
    invoke-direct {p0}, Lcom/perm/kate/PlayerActivity;->displayListData()V

    .line 136
    invoke-direct {p0, v1}, Lcom/perm/kate/PlayerActivity;->scrollToCurrentAudioDelayed(Z)V

    const p1, 0x7f0900ed

    .line 139
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 140
    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 455
    iget-object v0, p0, Lcom/perm/kate/PlayerActivity;->playerCallback:Lcom/perm/kate/Player$PlayerCallback;

    invoke-static {v0}, Lcom/perm/kate/PlaybackService;->removeCallback(Lcom/perm/kate/Player$PlayerCallback;)V

    .line 456
    iget-object v0, p0, Lcom/perm/kate/PlayerActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/perm/kate/PlayerActivity;->task:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 457
    iput-object v0, p0, Lcom/perm/kate/PlayerActivity;->lv_audio_list:Landroid/widget/ListView;

    .line 458
    iput-object v0, p0, Lcom/perm/kate/PlayerActivity;->audioListAdapter:Lcom/perm/kate/AudioListAdapter;

    .line 459
    iget-object v1, p0, Lcom/perm/kate/PlayerActivity;->audioHelper:Lcom/perm/kate/AudioClickHelper;

    invoke-virtual {v1}, Lcom/perm/kate/AudioClickHelper;->destroy()V

    .line 460
    iput-object v0, p0, Lcom/perm/kate/PlayerActivity;->audioHelper:Lcom/perm/kate/AudioClickHelper;

    .line 461
    invoke-super {p0}, Lcom/perm/kate/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 505
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x1

    if-eq v0, v1, :cond_2

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    .line 514
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 507
    :cond_0
    sget-object p1, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    if-eqz p1, :cond_1

    .line 508
    iget-object p1, p1, Lcom/perm/kate/api/Audio;->artist:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/perm/kate/AudioClickHelper;->searchSongArtist(Lcom/perm/kate/BaseActivity;Ljava/lang/String;)V

    :cond_1
    return v2

    .line 511
    :cond_2
    invoke-direct {p0}, Lcom/perm/kate/PlayerActivity;->showSongText()V

    return v2
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    .line 490
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 491
    invoke-virtual {p0, p1}, Lcom/perm/kate/PlayerActivity;->fillMenuItems(Landroid/view/Menu;)Z

    .line 492
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onStart()V
    .locals 0

    .line 612
    invoke-super {p0}, Lcom/perm/kate/BaseActivity;->onStart()V

    .line 614
    invoke-direct {p0}, Lcom/perm/kate/PlayerActivity;->notifyList()V

    return-void
.end method

.method public startTimer()V
    .locals 4

    .line 389
    iget-object v0, p0, Lcom/perm/kate/PlayerActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/perm/kate/PlayerActivity;->task:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public updateBroadcastButton()V
    .locals 2

    .line 572
    iget-object v0, p0, Lcom/perm/kate/PlayerActivity;->mBroadcast:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/perm/utils/AudioBroadcast;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/perm/kate/PlayerActivity;->player_broadcast_button:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/perm/kate/PlayerActivity;->player_broadcast_button_inactive:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setColorFilter(I)V

    return-void
.end method

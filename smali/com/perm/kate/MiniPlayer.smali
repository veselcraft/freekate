.class public Lcom/perm/kate/MiniPlayer;
.super Landroid/widget/FrameLayout;
.source "MiniPlayer.java"


# instance fields
.field private closePlayerClick:Landroid/view/View$OnClickListener;

.field handler:Landroid/os/Handler;

.field is_active:Z

.field mPlay:Landroid/widget/ImageButton;

.field private miniPlayerClick:Landroid/view/View$OnClickListener;

.field playButtonClick:Landroid/view/View$OnClickListener;

.field playerCallback:Lcom/perm/kate/Player$PlayerCallback;

.field player_pause_button:I

.field player_play_button:I

.field seekBar:Landroid/widget/SeekBar;

.field private seekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field task:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    .line 26
    iput-boolean p2, p0, Lcom/perm/kate/MiniPlayer;->is_active:Z

    .line 29
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/perm/kate/MiniPlayer;->handler:Landroid/os/Handler;

    .line 112
    new-instance p2, Lcom/perm/kate/MiniPlayer$1;

    invoke-direct {p2, p0}, Lcom/perm/kate/MiniPlayer$1;-><init>(Lcom/perm/kate/MiniPlayer;)V

    iput-object p2, p0, Lcom/perm/kate/MiniPlayer;->playButtonClick:Landroid/view/View$OnClickListener;

    .line 163
    new-instance p2, Lcom/perm/kate/MiniPlayer$2;

    invoke-direct {p2, p0}, Lcom/perm/kate/MiniPlayer$2;-><init>(Lcom/perm/kate/MiniPlayer;)V

    iput-object p2, p0, Lcom/perm/kate/MiniPlayer;->miniPlayerClick:Landroid/view/View$OnClickListener;

    .line 170
    new-instance p2, Lcom/perm/kate/MiniPlayer$3;

    invoke-direct {p2, p0}, Lcom/perm/kate/MiniPlayer$3;-><init>(Lcom/perm/kate/MiniPlayer;)V

    iput-object p2, p0, Lcom/perm/kate/MiniPlayer;->closePlayerClick:Landroid/view/View$OnClickListener;

    .line 177
    new-instance p2, Lcom/perm/kate/MiniPlayer$4;

    invoke-direct {p2, p0}, Lcom/perm/kate/MiniPlayer$4;-><init>(Lcom/perm/kate/MiniPlayer;)V

    iput-object p2, p0, Lcom/perm/kate/MiniPlayer;->playerCallback:Lcom/perm/kate/Player$PlayerCallback;

    .line 219
    new-instance p2, Lcom/perm/kate/MiniPlayer$5;

    invoke-direct {p2, p0}, Lcom/perm/kate/MiniPlayer$5;-><init>(Lcom/perm/kate/MiniPlayer;)V

    iput-object p2, p0, Lcom/perm/kate/MiniPlayer;->seekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 253
    new-instance p2, Lcom/perm/kate/MiniPlayer$6;

    invoke-direct {p2, p0}, Lcom/perm/kate/MiniPlayer$6;-><init>(Lcom/perm/kate/MiniPlayer;)V

    iput-object p2, p0, Lcom/perm/kate/MiniPlayer;->task:Ljava/lang/Runnable;

    .line 39
    invoke-direct {p0, p1}, Lcom/perm/kate/MiniPlayer;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/MiniPlayer;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/perm/kate/MiniPlayer;->playAudio()V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/MiniPlayer;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/perm/kate/MiniPlayer;->pauseAudio()V

    return-void
.end method

.method static synthetic access$200(Lcom/perm/kate/MiniPlayer;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/perm/kate/MiniPlayer;->displayPlayButton()V

    return-void
.end method

.method static synthetic access$300(Lcom/perm/kate/MiniPlayer;Landroid/view/View;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/perm/kate/MiniPlayer;->displayEpisode(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$400(Lcom/perm/kate/MiniPlayer;III)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/perm/kate/MiniPlayer;->displayProgress(III)V

    return-void
.end method

.method static synthetic access$500(Lcom/perm/kate/MiniPlayer;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/perm/kate/MiniPlayer;->scheduleNextRun()V

    return-void
.end method

.method private displayEpisode(Landroid/view/View;)V
    .locals 4

    .line 99
    sget-object v0, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v0, 0x7f090232

    .line 101
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 102
    sget-boolean v0, Lcom/perm/kate/PlaybackService;->ad_playing:Z

    if-eqz v0, :cond_1

    const v0, 0x7f0f002f

    .line 103
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    return-void

    .line 106
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    iget-object v1, v1, Lcom/perm/kate/api/Audio;->artist:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    iget-object v1, v1, Lcom/perm/kate/api/Audio;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 107
    sget-object v1, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    invoke-virtual {v1}, Lcom/perm/kate/api/Audio;->isPodcast()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0f03f5

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 109
    :cond_2
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private displayPlayButton()V
    .locals 4

    .line 124
    sget-object v0, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    const-string v1, "Kate.MiniPlayer"

    if-eqz v0, :cond_1

    iget v0, v0, Lcom/perm/kate/Player;->state:I

    if-eqz v0, :cond_0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/MiniPlayer;->mPlay:Landroid/widget/ImageButton;

    iget v2, p0, Lcom/perm/kate/MiniPlayer;->player_pause_button:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 127
    iget-object v0, p0, Lcom/perm/kate/MiniPlayer;->mPlay:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0f03c1

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    const-string v0, "Display Pause"

    .line 128
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/MiniPlayer;->mPlay:Landroid/widget/ImageButton;

    iget v2, p0, Lcom/perm/kate/MiniPlayer;->player_play_button:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 132
    iget-object v0, p0, Lcom/perm/kate/MiniPlayer;->mPlay:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0f03e8

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    const-string v0, "Display Play"

    .line 133
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private displayProgress(III)V
    .locals 4

    .line 244
    iget-object v0, p0, Lcom/perm/kate/MiniPlayer;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 245
    iget-object v0, p0, Lcom/perm/kate/MiniPlayer;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 246
    iget-object p2, p0, Lcom/perm/kate/MiniPlayer;->seekBar:Landroid/widget/SeekBar;

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

.method private init(Landroid/content/Context;)V
    .locals 5

    .line 43
    invoke-static {}, Lcom/perm/utils/LeakDetector;->getInstance()Lcom/perm/utils/LeakDetector;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/perm/utils/LeakDetector;->monitorObject(Ljava/lang/Object;)V

    .line 47
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0c00bd

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 48
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 50
    invoke-static {}, Lcom/perm/kate/theme/ThemeColorsHelper;->isLightTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f08022e

    .line 51
    iput v0, p0, Lcom/perm/kate/MiniPlayer;->player_play_button:I

    const v0, 0x7f080229

    .line 52
    iput v0, p0, Lcom/perm/kate/MiniPlayer;->player_pause_button:I

    goto :goto_0

    :cond_0
    const v0, 0x7f08022f

    .line 54
    iput v0, p0, Lcom/perm/kate/MiniPlayer;->player_play_button:I

    const v0, 0x7f08022a

    .line 55
    iput v0, p0, Lcom/perm/kate/MiniPlayer;->player_pause_button:I

    :goto_0
    const v0, 0x7f090089

    .line 58
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/perm/kate/MiniPlayer;->mPlay:Landroid/widget/ImageButton;

    .line 59
    iget-object v1, p0, Lcom/perm/kate/MiniPlayer;->playButtonClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09025c

    .line 60
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/MiniPlayer;->miniPlayerClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900c3

    .line 61
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/MiniPlayer;->closePlayerClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    sget-object v0, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    if-eqz v0, :cond_1

    .line 63
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 64
    invoke-direct {p0}, Lcom/perm/kate/MiniPlayer;->displayPlayButton()V

    .line 65
    invoke-direct {p0, p1}, Lcom/perm/kate/MiniPlayer;->displayEpisode(Landroid/view/View;)V

    goto :goto_1

    :cond_1
    const/16 v0, 0x8

    .line 67
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 70
    :goto_1
    iget-object v0, p0, Lcom/perm/kate/MiniPlayer;->playerCallback:Lcom/perm/kate/Player$PlayerCallback;

    invoke-static {v0}, Lcom/perm/kate/PlaybackService;->addCallback(Lcom/perm/kate/Player$PlayerCallback;)V

    const v0, 0x7f090007

    .line 72
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/perm/kate/MiniPlayer;->seekBar:Landroid/widget/SeekBar;

    .line 73
    iget-object v1, p0, Lcom/perm/kate/MiniPlayer;->seekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 76
    iget-object v0, p0, Lcom/perm/kate/MiniPlayer;->seekBar:Landroid/widget/SeekBar;

    sget v1, Lcom/perm/kate/BaseActivity;->Theme:I

    invoke-static {v0, v1}, Lcom/perm/utils/SeekBarHelper;->setSeekBarColor(Landroid/widget/SeekBar;I)V

    .line 78
    sget-object v0, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    .line 79
    sget-object v0, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    if-eqz v0, :cond_3

    iget v3, v0, Lcom/perm/kate/Player;->state:I

    if-eqz v3, :cond_2

    if-ne v3, v1, :cond_3

    .line 80
    :cond_2
    invoke-virtual {v0}, Lcom/perm/kate/Player;->getDuration()I

    move-result v0

    .line 81
    sget-object v2, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    invoke-virtual {v2}, Lcom/perm/kate/Player;->getCurrentPosition()I

    move-result v2

    .line 82
    sget-object v3, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    invoke-virtual {v3}, Lcom/perm/kate/Player;->getBufferPercents()I

    move-result v3

    .line 83
    invoke-direct {p0, v0, v2, v3}, Lcom/perm/kate/MiniPlayer;->displayProgress(III)V

    goto :goto_2

    .line 86
    :cond_3
    sget-object v0, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    iget-wide v3, v0, Lcom/perm/kate/api/Audio;->duration:J

    long-to-int v0, v3

    .line 87
    sget v3, Lcom/perm/kate/PlaybackService;->position:I

    .line 88
    invoke-direct {p0, v0, v3, v2}, Lcom/perm/kate/MiniPlayer;->displayProgress(III)V

    .line 92
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/perm/kate/MiniPlayer;->startTimer()V

    const v0, 0x7f090232

    .line 95
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method

.method private pauseAudio()V
    .locals 3

    .line 138
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/perm/kate/PlaybackService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "pause"

    .line 139
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 140
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const-string v0, "Kate.MiniPlayer"

    const-string v1, "pauseAudio"

    .line 141
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v0, p0, Lcom/perm/kate/MiniPlayer;->mPlay:Landroid/widget/ImageButton;

    iget v1, p0, Lcom/perm/kate/MiniPlayer;->player_play_button:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    return-void
.end method

.method private playAudio()V
    .locals 3

    .line 147
    sget-object v0, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    if-eqz v0, :cond_0

    .line 149
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/perm/kate/PlaybackService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "resume"

    .line 150
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 153
    iget-object v0, p0, Lcom/perm/kate/MiniPlayer;->mPlay:Landroid/widget/ImageButton;

    iget v1, p0, Lcom/perm/kate/MiniPlayer;->player_pause_button:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    return-void

    .line 156
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/perm/kate/PlaybackService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "play"

    .line 157
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 160
    iget-object v0, p0, Lcom/perm/kate/MiniPlayer;->mPlay:Landroid/widget/ImageButton;

    iget v1, p0, Lcom/perm/kate/MiniPlayer;->player_pause_button:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    return-void
.end method

.method private scheduleNextRun()V
    .locals 4

    .line 285
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 286
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 287
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 291
    :cond_0
    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Context "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 292
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/MiniPlayer;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/perm/kate/MiniPlayer;->task:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public setActive(Z)V
    .locals 0

    .line 214
    iput-boolean p1, p0, Lcom/perm/kate/MiniPlayer;->is_active:Z

    if-nez p1, :cond_0

    const/16 p1, 0x8

    .line 216
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public startTimer()V
    .locals 4

    .line 250
    iget-object v0, p0, Lcom/perm/kate/MiniPlayer;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/perm/kate/MiniPlayer;->task:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

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
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/perm/kate/MiniPlayer;->is_active:Z

    .line 28
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/MiniPlayer;->handler:Landroid/os/Handler;

    .line 107
    new-instance v0, Lcom/perm/kate/MiniPlayer$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/MiniPlayer$1;-><init>(Lcom/perm/kate/MiniPlayer;)V

    iput-object v0, p0, Lcom/perm/kate/MiniPlayer;->playButtonClick:Landroid/view/View$OnClickListener;

    .line 158
    new-instance v0, Lcom/perm/kate/MiniPlayer$2;

    invoke-direct {v0, p0}, Lcom/perm/kate/MiniPlayer$2;-><init>(Lcom/perm/kate/MiniPlayer;)V

    iput-object v0, p0, Lcom/perm/kate/MiniPlayer;->miniPlayerClick:Landroid/view/View$OnClickListener;

    .line 165
    new-instance v0, Lcom/perm/kate/MiniPlayer$3;

    invoke-direct {v0, p0}, Lcom/perm/kate/MiniPlayer$3;-><init>(Lcom/perm/kate/MiniPlayer;)V

    iput-object v0, p0, Lcom/perm/kate/MiniPlayer;->closePlayerClick:Landroid/view/View$OnClickListener;

    .line 172
    new-instance v0, Lcom/perm/kate/MiniPlayer$4;

    invoke-direct {v0, p0}, Lcom/perm/kate/MiniPlayer$4;-><init>(Lcom/perm/kate/MiniPlayer;)V

    iput-object v0, p0, Lcom/perm/kate/MiniPlayer;->playerCallback:Lcom/perm/kate/Player$PlayerCallback;

    .line 214
    new-instance v0, Lcom/perm/kate/MiniPlayer$5;

    invoke-direct {v0, p0}, Lcom/perm/kate/MiniPlayer$5;-><init>(Lcom/perm/kate/MiniPlayer;)V

    iput-object v0, p0, Lcom/perm/kate/MiniPlayer;->seekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 248
    new-instance v0, Lcom/perm/kate/MiniPlayer$6;

    invoke-direct {v0, p0}, Lcom/perm/kate/MiniPlayer$6;-><init>(Lcom/perm/kate/MiniPlayer;)V

    iput-object v0, p0, Lcom/perm/kate/MiniPlayer;->task:Ljava/lang/Runnable;

    .line 33
    invoke-direct {p0, p1}, Lcom/perm/kate/MiniPlayer;->init(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/perm/kate/MiniPlayer;->is_active:Z

    .line 28
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/MiniPlayer;->handler:Landroid/os/Handler;

    .line 107
    new-instance v0, Lcom/perm/kate/MiniPlayer$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/MiniPlayer$1;-><init>(Lcom/perm/kate/MiniPlayer;)V

    iput-object v0, p0, Lcom/perm/kate/MiniPlayer;->playButtonClick:Landroid/view/View$OnClickListener;

    .line 158
    new-instance v0, Lcom/perm/kate/MiniPlayer$2;

    invoke-direct {v0, p0}, Lcom/perm/kate/MiniPlayer$2;-><init>(Lcom/perm/kate/MiniPlayer;)V

    iput-object v0, p0, Lcom/perm/kate/MiniPlayer;->miniPlayerClick:Landroid/view/View$OnClickListener;

    .line 165
    new-instance v0, Lcom/perm/kate/MiniPlayer$3;

    invoke-direct {v0, p0}, Lcom/perm/kate/MiniPlayer$3;-><init>(Lcom/perm/kate/MiniPlayer;)V

    iput-object v0, p0, Lcom/perm/kate/MiniPlayer;->closePlayerClick:Landroid/view/View$OnClickListener;

    .line 172
    new-instance v0, Lcom/perm/kate/MiniPlayer$4;

    invoke-direct {v0, p0}, Lcom/perm/kate/MiniPlayer$4;-><init>(Lcom/perm/kate/MiniPlayer;)V

    iput-object v0, p0, Lcom/perm/kate/MiniPlayer;->playerCallback:Lcom/perm/kate/Player$PlayerCallback;

    .line 214
    new-instance v0, Lcom/perm/kate/MiniPlayer$5;

    invoke-direct {v0, p0}, Lcom/perm/kate/MiniPlayer$5;-><init>(Lcom/perm/kate/MiniPlayer;)V

    iput-object v0, p0, Lcom/perm/kate/MiniPlayer;->seekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 248
    new-instance v0, Lcom/perm/kate/MiniPlayer$6;

    invoke-direct {v0, p0}, Lcom/perm/kate/MiniPlayer$6;-><init>(Lcom/perm/kate/MiniPlayer;)V

    iput-object v0, p0, Lcom/perm/kate/MiniPlayer;->task:Ljava/lang/Runnable;

    .line 38
    invoke-direct {p0, p1}, Lcom/perm/kate/MiniPlayer;->init(Landroid/content/Context;)V

    .line 39
    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/MiniPlayer;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/MiniPlayer;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/perm/kate/MiniPlayer;->playAudio()V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/MiniPlayer;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/MiniPlayer;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/perm/kate/MiniPlayer;->pauseAudio()V

    return-void
.end method

.method static synthetic access$200(Lcom/perm/kate/MiniPlayer;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/MiniPlayer;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/perm/kate/MiniPlayer;->displayPlayButton()V

    return-void
.end method

.method static synthetic access$300(Lcom/perm/kate/MiniPlayer;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/MiniPlayer;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/perm/kate/MiniPlayer;->displayEpisode(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$400(Lcom/perm/kate/MiniPlayer;III)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/MiniPlayer;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/perm/kate/MiniPlayer;->displayProgress(III)V

    return-void
.end method

.method static synthetic access$500(Lcom/perm/kate/MiniPlayer;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/MiniPlayer;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/perm/kate/MiniPlayer;->scheduleNextRun()V

    return-void
.end method

.method private displayEpisode(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 97
    sget-object v1, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    if-nez v1, :cond_0

    .line 105
    :goto_0
    return-void

    .line 99
    :cond_0
    const v1, 0x7f0e0248

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 100
    .local v0, "artist":Landroid/widget/TextView;
    sget-boolean v1, Lcom/perm/kate/PlaybackService;->ad_playing:Z

    if-eqz v1, :cond_1

    .line 101
    const v1, 0x7f07001c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 104
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    iget-object v2, v2, Lcom/perm/kate/api/Audio;->artist:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    iget-object v2, v2, Lcom/perm/kate/api/Audio;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private displayPlayButton()V
    .locals 3

    .prologue
    .line 119
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

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/MiniPlayer;->mPlay:Landroid/widget/ImageButton;

    iget v1, p0, Lcom/perm/kate/MiniPlayer;->player_pause_button:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 122
    iget-object v0, p0, Lcom/perm/kate/MiniPlayer;->mPlay:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/perm/kate/MiniPlayer;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f070358

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 123
    const-string v0, "Kate.MiniPlayer"

    const-string v1, "Display Pause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :goto_0
    return-void

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/MiniPlayer;->mPlay:Landroid/widget/ImageButton;

    iget v1, p0, Lcom/perm/kate/MiniPlayer;->player_play_button:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 127
    iget-object v0, p0, Lcom/perm/kate/MiniPlayer;->mPlay:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/perm/kate/MiniPlayer;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f07037e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 128
    const-string v0, "Kate.MiniPlayer"

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
    .line 239
    iget-object v0, p0, Lcom/perm/kate/MiniPlayer;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 240
    iget-object v0, p0, Lcom/perm/kate/MiniPlayer;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 241
    iget-object v0, p0, Lcom/perm/kate/MiniPlayer;->seekBar:Landroid/widget/SeekBar;

    int-to-double v2, p1

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    int-to-double v4, p3

    mul-double/2addr v2, v4

    double-to-int v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    .line 242
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 42
    invoke-static {}, Lcom/perm/utils/LeakDetector;->getInstance()Lcom/perm/utils/LeakDetector;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/perm/utils/LeakDetector;->monitorObject(Ljava/lang/Object;)V

    .line 45
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0300ae

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 46
    .local v3, "view":Landroid/view/View;
    invoke-virtual {p0, v3}, Lcom/perm/kate/MiniPlayer;->addView(Landroid/view/View;)V

    .line 48
    invoke-static {}, Lcom/perm/kate/theme/ThemeColorsHelper;->isLightTheme()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 49
    const v4, 0x7f020161

    iput v4, p0, Lcom/perm/kate/MiniPlayer;->player_play_button:I

    .line 50
    const v4, 0x7f02015c

    iput v4, p0, Lcom/perm/kate/MiniPlayer;->player_pause_button:I

    .line 56
    :goto_0
    const v4, 0x7f0e0247

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    iput-object v4, p0, Lcom/perm/kate/MiniPlayer;->mPlay:Landroid/widget/ImageButton;

    .line 57
    iget-object v4, p0, Lcom/perm/kate/MiniPlayer;->mPlay:Landroid/widget/ImageButton;

    iget-object v5, p0, Lcom/perm/kate/MiniPlayer;->playButtonClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    const v4, 0x7f0e024a

    invoke-virtual {p0, v4}, Lcom/perm/kate/MiniPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/perm/kate/MiniPlayer;->miniPlayerClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    const v4, 0x7f0e024b

    invoke-virtual {p0, v4}, Lcom/perm/kate/MiniPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/perm/kate/MiniPlayer;->closePlayerClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    sget-object v4, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    if-eqz v4, :cond_3

    .line 61
    invoke-virtual {p0, v7}, Lcom/perm/kate/MiniPlayer;->setVisibility(I)V

    .line 62
    invoke-direct {p0}, Lcom/perm/kate/MiniPlayer;->displayPlayButton()V

    .line 63
    invoke-direct {p0, v3}, Lcom/perm/kate/MiniPlayer;->displayEpisode(Landroid/view/View;)V

    .line 68
    :goto_1
    iget-object v4, p0, Lcom/perm/kate/MiniPlayer;->playerCallback:Lcom/perm/kate/Player$PlayerCallback;

    invoke-static {v4}, Lcom/perm/kate/PlaybackService;->addCallback(Lcom/perm/kate/Player$PlayerCallback;)V

    .line 70
    const v4, 0x7f0e0249

    invoke-virtual {p0, v4}, Lcom/perm/kate/MiniPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/SeekBar;

    iput-object v4, p0, Lcom/perm/kate/MiniPlayer;->seekBar:Landroid/widget/SeekBar;

    .line 71
    iget-object v4, p0, Lcom/perm/kate/MiniPlayer;->seekBar:Landroid/widget/SeekBar;

    iget-object v5, p0, Lcom/perm/kate/MiniPlayer;->seekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 74
    iget-object v4, p0, Lcom/perm/kate/MiniPlayer;->seekBar:Landroid/widget/SeekBar;

    sget v5, Lcom/perm/kate/BaseActivity;->Theme:I

    invoke-static {v4, v5}, Lcom/perm/utils/SeekBarHelper;->setSeekBarColor(Landroid/widget/SeekBar;I)V

    .line 76
    sget-object v4, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    if-eqz v4, :cond_1

    .line 77
    sget-object v4, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    if-eqz v4, :cond_4

    sget-object v4, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    iget v4, v4, Lcom/perm/kate/Player;->state:I

    if-eqz v4, :cond_0

    sget-object v4, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    iget v4, v4, Lcom/perm/kate/Player;->state:I

    if-ne v4, v8, :cond_4

    .line 78
    :cond_0
    sget-object v4, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    invoke-virtual {v4}, Lcom/perm/kate/Player;->getDuration()I

    move-result v1

    .line 79
    .local v1, "dur":I
    sget-object v4, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    invoke-virtual {v4}, Lcom/perm/kate/Player;->getCurrentPosition()I

    move-result v2

    .line 80
    .local v2, "pos":I
    sget-object v4, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    invoke-virtual {v4}, Lcom/perm/kate/Player;->getBufferPercents()I

    move-result v0

    .line 81
    .local v0, "buffer":I
    invoke-direct {p0, v1, v2, v0}, Lcom/perm/kate/MiniPlayer;->displayProgress(III)V

    .line 90
    .end local v0    # "buffer":I
    .end local v1    # "dur":I
    .end local v2    # "pos":I
    :cond_1
    :goto_2
    invoke-virtual {p0}, Lcom/perm/kate/MiniPlayer;->startTimer()V

    .line 93
    const v4, 0x7f0e0248

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setSelected(Z)V

    .line 94
    return-void

    .line 52
    :cond_2
    const v4, 0x7f020162

    iput v4, p0, Lcom/perm/kate/MiniPlayer;->player_play_button:I

    .line 53
    const v4, 0x7f02015d

    iput v4, p0, Lcom/perm/kate/MiniPlayer;->player_pause_button:I

    goto/16 :goto_0

    .line 65
    :cond_3
    const/16 v4, 0x8

    invoke-virtual {p0, v4}, Lcom/perm/kate/MiniPlayer;->setVisibility(I)V

    goto :goto_1

    .line 84
    :cond_4
    sget-object v4, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    iget-wide v4, v4, Lcom/perm/kate/api/Audio;->duration:J

    long-to-int v1, v4

    .line 85
    .restart local v1    # "dur":I
    sget v2, Lcom/perm/kate/PlaybackService;->position:I

    .line 86
    .restart local v2    # "pos":I
    invoke-direct {p0, v1, v2, v7}, Lcom/perm/kate/MiniPlayer;->displayProgress(III)V

    goto :goto_2
.end method

.method private pauseAudio()V
    .locals 3

    .prologue
    .line 133
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/perm/kate/MiniPlayer;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/perm/kate/PlaybackService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 134
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "pause"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    invoke-virtual {p0}, Lcom/perm/kate/MiniPlayer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 136
    const-string v1, "Kate.MiniPlayer"

    const-string v2, "pauseAudio"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v1, p0, Lcom/perm/kate/MiniPlayer;->mPlay:Landroid/widget/ImageButton;

    iget v2, p0, Lcom/perm/kate/MiniPlayer;->player_play_button:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 139
    return-void
.end method

.method private playAudio()V
    .locals 3

    .prologue
    .line 142
    sget-object v1, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    if-eqz v1, :cond_0

    .line 144
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/perm/kate/MiniPlayer;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/perm/kate/PlaybackService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 145
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "resume"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    invoke-virtual {p0}, Lcom/perm/kate/MiniPlayer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 148
    iget-object v1, p0, Lcom/perm/kate/MiniPlayer;->mPlay:Landroid/widget/ImageButton;

    iget v2, p0, Lcom/perm/kate/MiniPlayer;->player_pause_button:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 156
    :goto_0
    return-void

    .line 151
    .end local v0    # "i":Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/perm/kate/MiniPlayer;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/perm/kate/PlaybackService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 152
    .restart local v0    # "i":Landroid/content/Intent;
    const-string v1, "play"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    invoke-virtual {p0}, Lcom/perm/kate/MiniPlayer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 155
    iget-object v1, p0, Lcom/perm/kate/MiniPlayer;->mPlay:Landroid/widget/ImageButton;

    iget v2, p0, Lcom/perm/kate/MiniPlayer;->player_pause_button:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0
.end method

.method private scheduleNextRun()V
    .locals 6

    .prologue
    .line 280
    invoke-virtual {p0}, Lcom/perm/kate/MiniPlayer;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 281
    .local v0, "context":Landroid/content/Context;
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 282
    check-cast v0, Landroid/app/Activity;

    .end local v0    # "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 288
    :goto_0
    return-void

    .line 286
    .restart local v0    # "context":Landroid/content/Context;
    :cond_0
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Context not Activity"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 287
    .end local v0    # "context":Landroid/content/Context;
    :cond_1
    iget-object v1, p0, Lcom/perm/kate/MiniPlayer;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/perm/kate/MiniPlayer;->task:Ljava/lang/Runnable;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method


# virtual methods
.method public setActive(Z)V
    .locals 1
    .param p1, "is_active"    # Z

    .prologue
    .line 209
    iput-boolean p1, p0, Lcom/perm/kate/MiniPlayer;->is_active:Z

    .line 210
    if-nez p1, :cond_0

    .line 211
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/perm/kate/MiniPlayer;->setVisibility(I)V

    .line 212
    :cond_0
    return-void
.end method

.method public startTimer()V
    .locals 4

    .prologue
    .line 245
    iget-object v0, p0, Lcom/perm/kate/MiniPlayer;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/perm/kate/MiniPlayer;->task:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 246
    return-void
.end method

.class public Lcom/perm/kate/RecordEpisodeActivity;
.super Lcom/perm/kate/BaseActivity;
.source "RecordEpisodeActivity.java"


# instance fields
.field private buttonRecordStartStop:Landroid/widget/Button;

.field private currentTime:I

.field private filepath:Ljava/lang/String;

.field private isRecord:Z

.field private listenerRecordStartStop:Landroid/view/View$OnClickListener;

.field private myRecordsDir:Ljava/io/File;

.field private recorder:Landroid/media/MediaRecorder;

.field private textViewTime:Lcom/perm/utils/TimerTextView;

.field private timer:Ljava/util/Timer;

.field private updateProgress:Ljava/util/TimerTask;

.field private voicePlayer:Lcom/perm/kate/Player;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    .line 30
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/RecordEpisodeActivity;->timer:Ljava/util/Timer;

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/perm/kate/RecordEpisodeActivity;->currentTime:I

    .line 33
    new-instance v0, Lcom/perm/kate/RecordEpisodeActivity$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/RecordEpisodeActivity$1;-><init>(Lcom/perm/kate/RecordEpisodeActivity;)V

    iput-object v0, p0, Lcom/perm/kate/RecordEpisodeActivity;->listenerRecordStartStop:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/RecordEpisodeActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/RecordEpisodeActivity;

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/perm/kate/RecordEpisodeActivity;->isRecord:Z

    return v0
.end method

.method static synthetic access$100(Lcom/perm/kate/RecordEpisodeActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/RecordEpisodeActivity;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/perm/kate/RecordEpisodeActivity;->stopRecord()V

    return-void
.end method

.method static synthetic access$200(Lcom/perm/kate/RecordEpisodeActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/RecordEpisodeActivity;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/perm/kate/RecordEpisodeActivity;->filepath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/perm/kate/RecordEpisodeActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/RecordEpisodeActivity;

    .prologue
    .line 21
    iget v0, p0, Lcom/perm/kate/RecordEpisodeActivity;->currentTime:I

    return v0
.end method

.method static synthetic access$308(Lcom/perm/kate/RecordEpisodeActivity;)I
    .locals 2
    .param p0, "x0"    # Lcom/perm/kate/RecordEpisodeActivity;

    .prologue
    .line 21
    iget v0, p0, Lcom/perm/kate/RecordEpisodeActivity;->currentTime:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/perm/kate/RecordEpisodeActivity;->currentTime:I

    return v0
.end method

.method static synthetic access$400(Lcom/perm/kate/RecordEpisodeActivity;)Lcom/perm/utils/TimerTextView;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/RecordEpisodeActivity;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/perm/kate/RecordEpisodeActivity;->textViewTime:Lcom/perm/utils/TimerTextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/perm/kate/RecordEpisodeActivity;)Lcom/perm/kate/Player;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/RecordEpisodeActivity;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/perm/kate/RecordEpisodeActivity;->getVoicePlayer()Lcom/perm/kate/Player;

    move-result-object v0

    return-object v0
.end method

.method private createFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    const-string v0, "audiocomment.3gp"

    return-object v0
.end method

.method private getVoicePlayer()Lcom/perm/kate/Player;
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/perm/kate/RecordEpisodeActivity;->voicePlayer:Lcom/perm/kate/Player;

    if-nez v0, :cond_0

    .line 200
    new-instance v0, Lcom/perm/kate/Player;

    new-instance v1, Lcom/perm/kate/RecordEpisodeActivity$4;

    invoke-direct {v1, p0}, Lcom/perm/kate/RecordEpisodeActivity$4;-><init>(Lcom/perm/kate/RecordEpisodeActivity;)V

    invoke-direct {v0, v1}, Lcom/perm/kate/Player;-><init>(Lcom/perm/kate/Player$PlayerCallback;)V

    iput-object v0, p0, Lcom/perm/kate/RecordEpisodeActivity;->voicePlayer:Lcom/perm/kate/Player;

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/RecordEpisodeActivity;->voicePlayer:Lcom/perm/kate/Player;

    return-object v0
.end method

.method private newTimerTask()V
    .locals 6

    .prologue
    const-wide/16 v2, 0x3e8

    .line 46
    new-instance v0, Lcom/perm/kate/RecordEpisodeActivity$2;

    invoke-direct {v0, p0}, Lcom/perm/kate/RecordEpisodeActivity$2;-><init>(Lcom/perm/kate/RecordEpisodeActivity;)V

    iput-object v0, p0, Lcom/perm/kate/RecordEpisodeActivity;->updateProgress:Ljava/util/TimerTask;

    .line 58
    iget-object v0, p0, Lcom/perm/kate/RecordEpisodeActivity;->timer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/perm/kate/RecordEpisodeActivity;->updateProgress:Ljava/util/TimerTask;

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 59
    return-void
.end method

.method private startRecord()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 140
    iget-object v3, p0, Lcom/perm/kate/RecordEpisodeActivity;->buttonRecordStartStop:Landroid/widget/Button;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 141
    invoke-direct {p0}, Lcom/perm/kate/RecordEpisodeActivity;->createFilename()Ljava/lang/String;

    move-result-object v2

    .line 142
    .local v2, "filename":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/perm/kate/RecordEpisodeActivity;->myRecordsDir:Ljava/io/File;

    invoke-direct {v1, v3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 143
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/perm/kate/RecordEpisodeActivity;->filepath:Ljava/lang/String;

    .line 145
    :try_start_0
    new-instance v3, Landroid/media/MediaRecorder;

    invoke-direct {v3}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v3, p0, Lcom/perm/kate/RecordEpisodeActivity;->recorder:Landroid/media/MediaRecorder;

    .line 146
    iget-object v3, p0, Lcom/perm/kate/RecordEpisodeActivity;->recorder:Landroid/media/MediaRecorder;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 147
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xa

    if-ge v3, v4, :cond_0

    .line 151
    iget-object v3, p0, Lcom/perm/kate/RecordEpisodeActivity;->recorder:Landroid/media/MediaRecorder;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 152
    iget-object v3, p0, Lcom/perm/kate/RecordEpisodeActivity;->recorder:Landroid/media/MediaRecorder;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 170
    :goto_0
    iget-object v3, p0, Lcom/perm/kate/RecordEpisodeActivity;->recorder:Landroid/media/MediaRecorder;

    iget-object v4, p0, Lcom/perm/kate/RecordEpisodeActivity;->filepath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 171
    iget-object v3, p0, Lcom/perm/kate/RecordEpisodeActivity;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->prepare()V

    .line 172
    iget-object v3, p0, Lcom/perm/kate/RecordEpisodeActivity;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->start()V

    .line 173
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/perm/kate/RecordEpisodeActivity;->isRecord:Z

    .line 174
    const/4 v3, 0x0

    iput v3, p0, Lcom/perm/kate/RecordEpisodeActivity;->currentTime:I

    .line 175
    iget-object v3, p0, Lcom/perm/kate/RecordEpisodeActivity;->textViewTime:Lcom/perm/utils/TimerTextView;

    iget v4, p0, Lcom/perm/kate/RecordEpisodeActivity;->currentTime:I

    invoke-virtual {v3, v4}, Lcom/perm/utils/TimerTextView;->setTime(I)V

    .line 176
    invoke-direct {p0}, Lcom/perm/kate/RecordEpisodeActivity;->newTimerTask()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :goto_1
    iget-object v3, p0, Lcom/perm/kate/RecordEpisodeActivity;->buttonRecordStartStop:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 183
    return-void

    .line 155
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/perm/kate/RecordEpisodeActivity;->recorder:Landroid/media/MediaRecorder;

    const/16 v4, 0x3e80

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    .line 156
    iget-object v3, p0, Lcom/perm/kate/RecordEpisodeActivity;->recorder:Landroid/media/MediaRecorder;

    const/16 v4, 0x4e20

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    .line 157
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "voice_quality"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 159
    iget-object v3, p0, Lcom/perm/kate/RecordEpisodeActivity;->recorder:Landroid/media/MediaRecorder;

    const/16 v4, 0x5622

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    .line 163
    iget-object v3, p0, Lcom/perm/kate/RecordEpisodeActivity;->recorder:Landroid/media/MediaRecorder;

    const/16 v4, 0x7d00

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    .line 165
    :cond_1
    iget-object v3, p0, Lcom/perm/kate/RecordEpisodeActivity;->recorder:Landroid/media/MediaRecorder;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 166
    iget-object v3, p0, Lcom/perm/kate/RecordEpisodeActivity;->recorder:Landroid/media/MediaRecorder;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 168
    iget-object v3, p0, Lcom/perm/kate/RecordEpisodeActivity;->recorder:Landroid/media/MediaRecorder;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setAudioChannels(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, "e":Ljava/lang/Throwable;
    const v3, 0x7f0700a1

    invoke-static {p0, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 179
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 180
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private stopRecord()V
    .locals 2

    .prologue
    .line 187
    :try_start_0
    iget-object v1, p0, Lcom/perm/kate/RecordEpisodeActivity;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->stop()V

    .line 188
    iget-object v1, p0, Lcom/perm/kate/RecordEpisodeActivity;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->release()V

    .line 189
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/perm/kate/RecordEpisodeActivity;->isRecord:Z

    .line 190
    iget-object v1, p0, Lcom/perm/kate/RecordEpisodeActivity;->updateProgress:Ljava/util/TimerTask;

    invoke-virtual {v1}, Ljava/util/TimerTask;->cancel()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    :goto_0
    return-void

    .line 191
    :catch_0
    move-exception v0

    .line 192
    .local v0, "th":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 193
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 63
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const v1, 0x7f0300ed

    invoke-virtual {p0, v1}, Lcom/perm/kate/RecordEpisodeActivity;->setContentView(I)V

    .line 65
    const v1, 0x7f0703a4

    invoke-virtual {p0, v1}, Lcom/perm/kate/RecordEpisodeActivity;->setHeaderTitle(I)V

    .line 66
    invoke-virtual {p0}, Lcom/perm/kate/RecordEpisodeActivity;->setButtonsBg()V

    .line 68
    const v1, 0x7f0e02fd

    invoke-virtual {p0, v1}, Lcom/perm/kate/RecordEpisodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/perm/kate/RecordEpisodeActivity;->buttonRecordStartStop:Landroid/widget/Button;

    .line 69
    iget-object v1, p0, Lcom/perm/kate/RecordEpisodeActivity;->buttonRecordStartStop:Landroid/widget/Button;

    iget-object v2, p0, Lcom/perm/kate/RecordEpisodeActivity;->listenerRecordStartStop:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    const v1, 0x7f0e02fe

    invoke-virtual {p0, v1}, Lcom/perm/kate/RecordEpisodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/perm/utils/TimerTextView;

    iput-object v1, p0, Lcom/perm/kate/RecordEpisodeActivity;->textViewTime:Lcom/perm/utils/TimerTextView;

    .line 71
    iget-object v1, p0, Lcom/perm/kate/RecordEpisodeActivity;->textViewTime:Lcom/perm/utils/TimerTextView;

    invoke-virtual {v1, v3}, Lcom/perm/utils/TimerTextView;->setTime(I)V

    .line 73
    const v1, 0x7f0e02ff

    invoke-virtual {p0, v1}, Lcom/perm/kate/RecordEpisodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/perm/kate/RecordEpisodeActivity$3;

    invoke-direct {v2, p0}, Lcom/perm/kate/RecordEpisodeActivity$3;-><init>(Lcom/perm/kate/RecordEpisodeActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    const/4 v0, 0x0

    .line 84
    .local v0, "cacheDir":Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 85
    new-instance v0, Ljava/io/File;

    .end local v0    # "cacheDir":Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, ".Kate"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 91
    .restart local v0    # "cacheDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 92
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 93
    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v2, "audiocomments"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/perm/kate/RecordEpisodeActivity;->myRecordsDir:Ljava/io/File;

    .line 94
    iget-object v1, p0, Lcom/perm/kate/RecordEpisodeActivity;->myRecordsDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 95
    iget-object v1, p0, Lcom/perm/kate/RecordEpisodeActivity;->myRecordsDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 96
    :cond_1
    invoke-direct {p0}, Lcom/perm/kate/RecordEpisodeActivity;->startRecord()V

    .line 97
    :goto_0
    return-void

    .line 88
    :cond_2
    iget-object v1, p0, Lcom/perm/kate/RecordEpisodeActivity;->buttonRecordStartStop:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onStop()V
    .locals 4

    .prologue
    .line 101
    iget-object v2, p0, Lcom/perm/kate/RecordEpisodeActivity;->recorder:Landroid/media/MediaRecorder;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/perm/kate/RecordEpisodeActivity;->isRecord:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/perm/kate/RecordEpisodeActivity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 103
    :try_start_0
    iget-object v2, p0, Lcom/perm/kate/RecordEpisodeActivity;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->stop()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :goto_0
    iget-object v2, p0, Lcom/perm/kate/RecordEpisodeActivity;->textViewTime:Lcom/perm/utils/TimerTextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/perm/utils/TimerTextView;->setTime(I)V

    .line 112
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/perm/kate/RecordEpisodeActivity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 113
    iget-object v2, p0, Lcom/perm/kate/RecordEpisodeActivity;->updateProgress:Ljava/util/TimerTask;

    if-eqz v2, :cond_1

    .line 114
    iget-object v2, p0, Lcom/perm/kate/RecordEpisodeActivity;->updateProgress:Ljava/util/TimerTask;

    invoke-virtual {v2}, Ljava/util/TimerTask;->cancel()Z

    .line 115
    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/perm/kate/RecordEpisodeActivity;->updateProgress:Ljava/util/TimerTask;

    .line 116
    iget-object v2, p0, Lcom/perm/kate/RecordEpisodeActivity;->timer:Ljava/util/Timer;

    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    .line 117
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/perm/kate/RecordEpisodeActivity;->timer:Ljava/util/Timer;

    .line 118
    iget-object v2, p0, Lcom/perm/kate/RecordEpisodeActivity;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->release()V

    .line 119
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/perm/kate/RecordEpisodeActivity;->recorder:Landroid/media/MediaRecorder;

    .line 121
    iget-object v2, p0, Lcom/perm/kate/RecordEpisodeActivity;->voicePlayer:Lcom/perm/kate/Player;

    if-eqz v2, :cond_2

    .line 122
    iget-object v2, p0, Lcom/perm/kate/RecordEpisodeActivity;->voicePlayer:Lcom/perm/kate/Player;

    invoke-virtual {v2}, Lcom/perm/kate/Player;->destroy()V

    .line 123
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/perm/kate/RecordEpisodeActivity;->voicePlayer:Lcom/perm/kate/Player;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 131
    :cond_2
    :goto_1
    invoke-super {p0}, Lcom/perm/kate/BaseActivity;->onStop()V

    .line 132
    return-void

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 106
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 126
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v1

    .line 127
    .local v1, "th":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 128
    invoke-static {v1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.class public Lcom/perm/kate/VoiceRecorder;
.super Ljava/lang/Object;
.source "VoiceRecorder.java"


# instance fields
.field private currentTime:I

.field filepath:Ljava/lang/String;

.field isRecord:Z

.field private myRecordsDir:Ljava/io/File;

.field recorder:Landroid/media/MediaRecorder;

.field private textViewTime:Lcom/perm/utils/TimerTextView;

.field private timer:Ljava/util/Timer;

.field private updateProgress:Ljava/util/TimerTask;

.field private voicePlayer:Lcom/perm/kate/Player;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput v0, p0, Lcom/perm/kate/VoiceRecorder;->currentTime:I

    .line 27
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/VoiceRecorder;->timer:Ljava/util/Timer;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/VoiceRecorder;)I
    .locals 0

    .line 20
    iget p0, p0, Lcom/perm/kate/VoiceRecorder;->currentTime:I

    return p0
.end method

.method static synthetic access$008(Lcom/perm/kate/VoiceRecorder;)I
    .locals 2

    .line 20
    iget v0, p0, Lcom/perm/kate/VoiceRecorder;->currentTime:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/perm/kate/VoiceRecorder;->currentTime:I

    return v0
.end method

.method static synthetic access$100(Lcom/perm/kate/VoiceRecorder;)Lcom/perm/utils/TimerTextView;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/perm/kate/VoiceRecorder;->textViewTime:Lcom/perm/utils/TimerTextView;

    return-object p0
.end method

.method private createFilename()Ljava/lang/String;
    .locals 1

    const-string v0, "audiocomment.3gp"

    return-object v0
.end method

.method private getVoicePlayer()Lcom/perm/kate/Player;
    .locals 2

    .line 178
    iget-object v0, p0, Lcom/perm/kate/VoiceRecorder;->voicePlayer:Lcom/perm/kate/Player;

    if-nez v0, :cond_0

    .line 179
    new-instance v0, Lcom/perm/kate/Player;

    new-instance v1, Lcom/perm/kate/VoiceRecorder$2;

    invoke-direct {v1, p0}, Lcom/perm/kate/VoiceRecorder$2;-><init>(Lcom/perm/kate/VoiceRecorder;)V

    invoke-direct {v0, v1}, Lcom/perm/kate/Player;-><init>(Lcom/perm/kate/Player$PlayerCallback;)V

    iput-object v0, p0, Lcom/perm/kate/VoiceRecorder;->voicePlayer:Lcom/perm/kate/Player;

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/VoiceRecorder;->voicePlayer:Lcom/perm/kate/Player;

    return-object v0
.end method

.method private newTimerTask()V
    .locals 6

    .line 156
    new-instance v1, Lcom/perm/kate/VoiceRecorder$1;

    invoke-direct {v1, p0}, Lcom/perm/kate/VoiceRecorder$1;-><init>(Lcom/perm/kate/VoiceRecorder;)V

    iput-object v1, p0, Lcom/perm/kate/VoiceRecorder;->updateProgress:Ljava/util/TimerTask;

    .line 167
    iget-object v0, p0, Lcom/perm/kate/VoiceRecorder;->timer:Ljava/util/Timer;

    const-wide/16 v2, 0x3e8

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method private setPreferredDevice()V
    .locals 6

    .line 99
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_0

    return-void

    .line 100
    :cond_0
    invoke-static {}, Lcom/perm/kate/Settings;->getPrefferedMic()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    return-void

    .line 102
    :cond_1
    sget-object v1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    const/4 v2, 0x1

    .line 103
    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v1

    .line 104
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    .line 105
    invoke-virtual {v4}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v5

    if-ne v5, v0, :cond_2

    .line 106
    iget-object v0, p0, Lcom/perm/kate/VoiceRecorder;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v4}, Landroid/media/MediaRecorder;->setPreferredDevice(Landroid/media/AudioDeviceInfo;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 110
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 111
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :cond_3
    return-void
.end method


# virtual methods
.method init(Lcom/perm/utils/TimerTextView;)Z
    .locals 3

    .line 32
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 37
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getCacheDir()Ljava/io/File;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    .line 40
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "storage not avail"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1

    .line 44
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    .line 45
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 46
    :cond_3
    new-instance v1, Ljava/io/File;

    const-string v2, "audiocomments"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/perm/kate/VoiceRecorder;->myRecordsDir:Ljava/io/File;

    .line 47
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_4

    .line 48
    iget-object v0, p0, Lcom/perm/kate/VoiceRecorder;->myRecordsDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 49
    :cond_4
    iput-object p1, p0, Lcom/perm/kate/VoiceRecorder;->textViewTime:Lcom/perm/utils/TimerTextView;

    const/4 p1, 0x1

    return p1
.end method

.method play(Landroid/app/Activity;)V
    .locals 1

    .line 171
    iget-boolean v0, p0, Lcom/perm/kate/VoiceRecorder;->isRecord:Z

    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {p0, p1}, Lcom/perm/kate/VoiceRecorder;->stop(Landroid/app/Activity;)Z

    .line 173
    :cond_0
    invoke-direct {p0}, Lcom/perm/kate/VoiceRecorder;->getVoicePlayer()Lcom/perm/kate/Player;

    move-result-object p1

    iget-object v0, p0, Lcom/perm/kate/VoiceRecorder;->filepath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/perm/kate/Player;->play(Ljava/lang/String;)V

    return-void
.end method

.method releasePlayer()V
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/perm/kate/VoiceRecorder;->voicePlayer:Lcom/perm/kate/Player;

    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {v0}, Lcom/perm/kate/Player;->destroy()V

    const/4 v0, 0x0

    .line 199
    iput-object v0, p0, Lcom/perm/kate/VoiceRecorder;->voicePlayer:Lcom/perm/kate/Player;

    :cond_0
    return-void
.end method

.method start(Landroid/app/Activity;)Z
    .locals 4

    .line 54
    invoke-direct {p0}, Lcom/perm/kate/VoiceRecorder;->createFilename()Ljava/lang/String;

    move-result-object v0

    .line 55
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/perm/kate/VoiceRecorder;->myRecordsDir:Ljava/io/File;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 56
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/VoiceRecorder;->filepath:Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 58
    :try_start_0
    new-instance v2, Landroid/media/MediaRecorder;

    invoke-direct {v2}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v2, p0, Lcom/perm/kate/VoiceRecorder;->recorder:Landroid/media/MediaRecorder;

    .line 59
    invoke-virtual {v2, v1}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 61
    iget-object v2, p0, Lcom/perm/kate/VoiceRecorder;->recorder:Landroid/media/MediaRecorder;

    const/16 v3, 0x3e80

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    .line 62
    iget-object v2, p0, Lcom/perm/kate/VoiceRecorder;->recorder:Landroid/media/MediaRecorder;

    const/16 v3, 0x4e20

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    .line 63
    sget-object v2, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "voice_quality"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 65
    iget-object v2, p0, Lcom/perm/kate/VoiceRecorder;->recorder:Landroid/media/MediaRecorder;

    const/16 v3, 0x5622

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    .line 69
    iget-object v2, p0, Lcom/perm/kate/VoiceRecorder;->recorder:Landroid/media/MediaRecorder;

    const/16 v3, 0x7d00

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    .line 71
    :cond_0
    iget-object v2, p0, Lcom/perm/kate/VoiceRecorder;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2, v1}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 72
    iget-object v2, p0, Lcom/perm/kate/VoiceRecorder;->recorder:Landroid/media/MediaRecorder;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 74
    iget-object v2, p0, Lcom/perm/kate/VoiceRecorder;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2, v1}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    .line 75
    iget-object v2, p0, Lcom/perm/kate/VoiceRecorder;->recorder:Landroid/media/MediaRecorder;

    iget-object v3, p0, Lcom/perm/kate/VoiceRecorder;->filepath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 76
    invoke-direct {p0}, Lcom/perm/kate/VoiceRecorder;->setPreferredDevice()V

    .line 77
    iget-object v2, p0, Lcom/perm/kate/VoiceRecorder;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->prepare()V

    .line 78
    iget-object v2, p0, Lcom/perm/kate/VoiceRecorder;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->start()V

    .line 79
    iput-boolean v1, p0, Lcom/perm/kate/VoiceRecorder;->isRecord:Z

    .line 80
    iput v0, p0, Lcom/perm/kate/VoiceRecorder;->currentTime:I

    .line 81
    iget-object v2, p0, Lcom/perm/kate/VoiceRecorder;->textViewTime:Lcom/perm/utils/TimerTextView;

    invoke-virtual {v2, v0}, Lcom/perm/utils/TimerTextView;->setTime(I)V

    .line 82
    invoke-direct {p0}, Lcom/perm/kate/VoiceRecorder;->newTimerTask()V

    .line 86
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_1

    .line 87
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v2, 0x80

    invoke-virtual {p1, v2}, Landroid/view/Window;->addFlags(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return v1

    :catchall_0
    move-exception p1

    .line 90
    sget-object v2, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const v3, 0x7f0f00dd

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 91
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 92
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    return v0
.end method

.method stop(Landroid/app/Activity;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 125
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v2, 0x80

    invoke-virtual {p1, v2}, Landroid/view/Window;->clearFlags(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 127
    :try_start_1
    iget-object p1, p0, Lcom/perm/kate/VoiceRecorder;->recorder:Landroid/media/MediaRecorder;

    if-eqz p1, :cond_0

    .line 128
    invoke-virtual {p1}, Landroid/media/MediaRecorder;->stop()V

    .line 129
    iget-object p1, p0, Lcom/perm/kate/VoiceRecorder;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {p1}, Landroid/media/MediaRecorder;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 134
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 136
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 137
    sget-object p1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const v2, 0x7f0f00dd

    invoke-static {p1, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/4 v1, 0x0

    :cond_0
    :goto_0
    const/4 p1, 0x0

    .line 139
    :try_start_3
    iput-object p1, p0, Lcom/perm/kate/VoiceRecorder;->recorder:Landroid/media/MediaRecorder;

    .line 140
    iput-boolean v0, p0, Lcom/perm/kate/VoiceRecorder;->isRecord:Z

    .line 141
    iget-object v0, p0, Lcom/perm/kate/VoiceRecorder;->updateProgress:Ljava/util/TimerTask;

    if-eqz v0, :cond_1

    .line 142
    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 143
    :cond_1
    iput-object p1, p0, Lcom/perm/kate/VoiceRecorder;->updateProgress:Ljava/util/TimerTask;

    .line 144
    iput-object p1, p0, Lcom/perm/kate/VoiceRecorder;->textViewTime:Lcom/perm/utils/TimerTextView;

    .line 145
    iget-object v0, p0, Lcom/perm/kate/VoiceRecorder;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_2

    .line 146
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 147
    :cond_2
    iput-object p1, p0, Lcom/perm/kate/VoiceRecorder;->timer:Ljava/util/Timer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    move v0, v1

    goto :goto_1

    :catchall_2
    move-exception p1

    goto :goto_1

    :catchall_3
    move-exception p1

    const/4 v0, 0x1

    .line 149
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 150
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    move v1, v0

    :goto_2
    return v1
.end method

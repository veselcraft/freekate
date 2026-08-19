.class public Lcom/perm/kate/RecordEpisodeActivity;
.super Lcom/perm/kate/BaseActivity;
.source "RecordEpisodeActivity.java"


# instance fields
.field private buttonRecordStartStop:Landroid/widget/Button;

.field private listenerRecordStartStop:Landroid/view/View$OnClickListener;

.field rec:Lcom/perm/kate/VoiceRecorder;

.field private textViewTime:Lcom/perm/utils/TimerTextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    .line 19
    new-instance v0, Lcom/perm/kate/VoiceRecorder;

    invoke-direct {v0}, Lcom/perm/kate/VoiceRecorder;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/RecordEpisodeActivity;->rec:Lcom/perm/kate/VoiceRecorder;

    .line 21
    new-instance v0, Lcom/perm/kate/RecordEpisodeActivity$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/RecordEpisodeActivity$1;-><init>(Lcom/perm/kate/RecordEpisodeActivity;)V

    iput-object v0, p0, Lcom/perm/kate/RecordEpisodeActivity;->listenerRecordStartStop:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private startRecord()V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/perm/kate/RecordEpisodeActivity;->rec:Lcom/perm/kate/VoiceRecorder;

    invoke-virtual {v0, p0}, Lcom/perm/kate/VoiceRecorder;->start(Landroid/app/Activity;)Z

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 35
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0109

    .line 36
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setContentView(I)V

    const p1, 0x7f0f0421

    .line 37
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setHeaderTitle(I)V

    .line 38
    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->setButtonsBg()V

    const p1, 0x7f090309

    .line 40
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/perm/kate/RecordEpisodeActivity;->buttonRecordStartStop:Landroid/widget/Button;

    .line 41
    iget-object v0, p0, Lcom/perm/kate/RecordEpisodeActivity;->listenerRecordStartStop:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0900e5

    .line 42
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/perm/utils/TimerTextView;

    iput-object p1, p0, Lcom/perm/kate/RecordEpisodeActivity;->textViewTime:Lcom/perm/utils/TimerTextView;

    const/4 v0, 0x0

    .line 43
    invoke-virtual {p1, v0}, Lcom/perm/utils/TimerTextView;->setTime(I)V

    const p1, 0x7f0901c3

    .line 45
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v1, Lcom/perm/kate/RecordEpisodeActivity$2;

    invoke-direct {v1, p0}, Lcom/perm/kate/RecordEpisodeActivity$2;-><init>(Lcom/perm/kate/RecordEpisodeActivity;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    iget-object p1, p0, Lcom/perm/kate/RecordEpisodeActivity;->rec:Lcom/perm/kate/VoiceRecorder;

    iget-object v1, p0, Lcom/perm/kate/RecordEpisodeActivity;->textViewTime:Lcom/perm/utils/TimerTextView;

    invoke-virtual {p1, v1}, Lcom/perm/kate/VoiceRecorder;->init(Lcom/perm/utils/TimerTextView;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 55
    iget-object p1, p0, Lcom/perm/kate/RecordEpisodeActivity;->buttonRecordStartStop:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void

    :cond_0
    const-string p1, "android.permission.RECORD_AUDIO"

    .line 59
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    aput-object p1, v2, v0

    .line 60
    invoke-static {p0, v2, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    .line 62
    :cond_1
    invoke-direct {p0}, Lcom/perm/kate/RecordEpisodeActivity;->startRecord()V

    :goto_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    return-void

    .line 70
    :cond_0
    array-length p1, p3

    if-lez p1, :cond_1

    const/4 p1, 0x0

    aget p1, p3, p1

    if-nez p1, :cond_1

    .line 71
    invoke-direct {p0}, Lcom/perm/kate/RecordEpisodeActivity;->startRecord()V

    goto :goto_0

    .line 73
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 82
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/perm/kate/RecordEpisodeActivity;->rec:Lcom/perm/kate/VoiceRecorder;

    iget-boolean v1, v0, Lcom/perm/kate/VoiceRecorder;->isRecord:Z

    if-eqz v1, :cond_0

    .line 84
    invoke-virtual {v0, p0}, Lcom/perm/kate/VoiceRecorder;->stop(Landroid/app/Activity;)Z

    :cond_0
    const/4 v0, 0x0

    .line 85
    iput-object v0, p0, Lcom/perm/kate/RecordEpisodeActivity;->rec:Lcom/perm/kate/VoiceRecorder;

    .line 87
    :cond_1
    invoke-super {p0}, Lcom/perm/kate/BaseActivity;->onStop()V

    return-void
.end method

.class public Lcom/perm/kate/EditAudioActivity;
.super Lcom/perm/kate/BaseActivity;
.source "EditAudioActivity.java"


# instance fields
.field private audio:Lcom/perm/kate/api/Audio;

.field private audio_text:Ljava/lang/String;

.field private btn_cancel:Landroid/widget/Button;

.field private btn_save:Landroid/widget/Button;

.field private callback:Lcom/perm/kate/session/Callback;

.field private cancel_OnClickListerer:Landroid/view/View$OnClickListener;

.field private save_OnClickListerer:Landroid/view/View$OnClickListener;

.field private tb_audio_artist:Landroid/widget/EditText;

.field private tb_audio_text:Landroid/widget/EditText;

.field private tb_audio_title:Landroid/widget/EditText;

.field private text_callback:Lcom/perm/kate/session/Callback;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    .line 59
    new-instance v0, Lcom/perm/kate/EditAudioActivity$2;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/EditAudioActivity$2;-><init>(Lcom/perm/kate/EditAudioActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/EditAudioActivity;->text_callback:Lcom/perm/kate/session/Callback;

    .line 92
    new-instance v0, Lcom/perm/kate/EditAudioActivity$4;

    invoke-direct {v0, p0}, Lcom/perm/kate/EditAudioActivity$4;-><init>(Lcom/perm/kate/EditAudioActivity;)V

    iput-object v0, p0, Lcom/perm/kate/EditAudioActivity;->save_OnClickListerer:Landroid/view/View$OnClickListener;

    .line 100
    new-instance v0, Lcom/perm/kate/EditAudioActivity$5;

    invoke-direct {v0, p0}, Lcom/perm/kate/EditAudioActivity$5;-><init>(Lcom/perm/kate/EditAudioActivity;)V

    iput-object v0, p0, Lcom/perm/kate/EditAudioActivity;->cancel_OnClickListerer:Landroid/view/View$OnClickListener;

    .line 139
    new-instance v0, Lcom/perm/kate/EditAudioActivity$7;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/EditAudioActivity$7;-><init>(Lcom/perm/kate/EditAudioActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/EditAudioActivity;->callback:Lcom/perm/kate/session/Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/EditAudioActivity;)Lcom/perm/kate/api/Audio;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/perm/kate/EditAudioActivity;->audio:Lcom/perm/kate/api/Audio;

    return-object p0
.end method

.method static synthetic access$100(Lcom/perm/kate/EditAudioActivity;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/perm/kate/EditAudioActivity;->text_callback:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$200(Lcom/perm/kate/EditAudioActivity;)Ljava/lang/String;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/perm/kate/EditAudioActivity;->audio_text:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$202(Lcom/perm/kate/EditAudioActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/perm/kate/EditAudioActivity;->audio_text:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/perm/kate/EditAudioActivity;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/perm/kate/EditAudioActivity;->displayTextOnUiThread()V

    return-void
.end method

.method static synthetic access$400(Lcom/perm/kate/EditAudioActivity;)Landroid/widget/EditText;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/perm/kate/EditAudioActivity;->tb_audio_text:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$500(Lcom/perm/kate/EditAudioActivity;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/perm/kate/EditAudioActivity;->updateByUIChanged()V

    return-void
.end method

.method static synthetic access$600(Lcom/perm/kate/EditAudioActivity;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/perm/kate/EditAudioActivity;->saveInThread()V

    return-void
.end method

.method static synthetic access$700(Lcom/perm/kate/EditAudioActivity;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/perm/kate/EditAudioActivity;->callback:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$800(Lcom/perm/kate/EditAudioActivity;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/perm/kate/EditAudioActivity;->updateAudioInDB()V

    return-void
.end method

.method static synthetic access$900(Lcom/perm/kate/EditAudioActivity;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/perm/kate/EditAudioActivity;->displayOnUiThread()V

    return-void
.end method

.method private displayData()V
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/perm/kate/EditAudioActivity;->audio:Lcom/perm/kate/api/Audio;

    if-eqz v0, :cond_0

    .line 87
    iget-object v1, p0, Lcom/perm/kate/EditAudioActivity;->tb_audio_artist:Landroid/widget/EditText;

    iget-object v0, v0, Lcom/perm/kate/api/Audio;->artist:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v0, p0, Lcom/perm/kate/EditAudioActivity;->tb_audio_title:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/perm/kate/EditAudioActivity;->audio:Lcom/perm/kate/api/Audio;

    iget-object v1, v1, Lcom/perm/kate/api/Audio;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private displayOnUiThread()V
    .locals 1

    .line 155
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 157
    :cond_0
    new-instance v0, Lcom/perm/kate/EditAudioActivity$8;

    invoke-direct {v0, p0}, Lcom/perm/kate/EditAudioActivity$8;-><init>(Lcom/perm/kate/EditAudioActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private displayTextOnUiThread()V
    .locals 1

    .line 74
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 76
    :cond_0
    new-instance v0, Lcom/perm/kate/EditAudioActivity$3;

    invoke-direct {v0, p0}, Lcom/perm/kate/EditAudioActivity$3;-><init>(Lcom/perm/kate/EditAudioActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private getAudioTextInThread()V
    .locals 5

    .line 48
    iget-object v0, p0, Lcom/perm/kate/EditAudioActivity;->audio:Lcom/perm/kate/api/Audio;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/perm/kate/api/Audio;->lyrics_id:Ljava/lang/Long;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 49
    new-instance v0, Lcom/perm/kate/EditAudioActivity$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/EditAudioActivity$1;-><init>(Lcom/perm/kate/EditAudioActivity;)V

    .line 55
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method private saveInThread()V
    .locals 1

    .line 130
    new-instance v0, Lcom/perm/kate/EditAudioActivity$6;

    invoke-direct {v0, p0}, Lcom/perm/kate/EditAudioActivity$6;-><init>(Lcom/perm/kate/EditAudioActivity;)V

    .line 136
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private updateAudioInDB()V
    .locals 2

    .line 126
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v1, p0, Lcom/perm/kate/EditAudioActivity;->audio:Lcom/perm/kate/api/Audio;

    invoke-virtual {v0, v1}, Lcom/perm/kate/db/DataHelper;->updateAudio(Lcom/perm/kate/api/Audio;)Z

    return-void
.end method

.method private updateByUIChanged()V
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/perm/kate/EditAudioActivity;->audio:Lcom/perm/kate/api/Audio;

    if-nez v0, :cond_0

    return-void

    .line 110
    :cond_0
    iget-object v1, p0, Lcom/perm/kate/EditAudioActivity;->tb_audio_artist:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Audio;->artist:Ljava/lang/String;

    .line 111
    iget-object v0, p0, Lcom/perm/kate/EditAudioActivity;->audio:Lcom/perm/kate/api/Audio;

    iget-object v1, p0, Lcom/perm/kate/EditAudioActivity;->tb_audio_title:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Audio;->title:Ljava/lang/String;

    .line 112
    iget-object v0, p0, Lcom/perm/kate/EditAudioActivity;->tb_audio_text:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 117
    iget-object v1, p0, Lcom/perm/kate/EditAudioActivity;->audio_text:Ljava/lang/String;

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 118
    :cond_1
    iput-object v0, p0, Lcom/perm/kate/EditAudioActivity;->audio_text:Ljava/lang/String;

    .line 121
    :cond_2
    iget-object v1, p0, Lcom/perm/kate/EditAudioActivity;->audio_text:Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    const-string v0, " "

    .line 122
    iput-object v0, p0, Lcom/perm/kate/EditAudioActivity;->audio_text:Ljava/lang/String;

    :cond_3
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 26
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c006a

    .line 27
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setContentView(I)V

    const p1, 0x7f0f04f4

    .line 28
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setHeaderTitle(I)V

    const p1, 0x7f09031c

    .line 29
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/perm/kate/EditAudioActivity;->tb_audio_artist:Landroid/widget/EditText;

    const p1, 0x7f09031e

    .line 30
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/perm/kate/EditAudioActivity;->tb_audio_title:Landroid/widget/EditText;

    const p1, 0x7f09031d

    .line 31
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/perm/kate/EditAudioActivity;->tb_audio_text:Landroid/widget/EditText;

    const p1, 0x7f090078

    .line 32
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/perm/kate/EditAudioActivity;->btn_save:Landroid/widget/Button;

    .line 33
    iget-object v0, p0, Lcom/perm/kate/EditAudioActivity;->save_OnClickListerer:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f09006a

    .line 34
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/perm/kate/EditAudioActivity;->btn_cancel:Landroid/widget/Button;

    .line 35
    iget-object v0, p0, Lcom/perm/kate/EditAudioActivity;->cancel_OnClickListerer:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.perm.kate.audio_id"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 37
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "com.perm.kate.audio_owner_id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    if-nez p1, :cond_0

    .line 39
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 42
    :cond_0
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/perm/kate/db/DataHelper;->fetchAudio(JJ)Lcom/perm/kate/api/Audio;

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/EditAudioActivity;->audio:Lcom/perm/kate/api/Audio;

    .line 43
    invoke-direct {p0}, Lcom/perm/kate/EditAudioActivity;->displayData()V

    .line 44
    invoke-direct {p0}, Lcom/perm/kate/EditAudioActivity;->getAudioTextInThread()V

    return-void
.end method

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

    .prologue
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

    .line 137
    new-instance v0, Lcom/perm/kate/EditAudioActivity$7;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/EditAudioActivity$7;-><init>(Lcom/perm/kate/EditAudioActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/EditAudioActivity;->callback:Lcom/perm/kate/session/Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/EditAudioActivity;)Lcom/perm/kate/api/Audio;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/EditAudioActivity;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/perm/kate/EditAudioActivity;->audio:Lcom/perm/kate/api/Audio;

    return-object v0
.end method

.method static synthetic access$100(Lcom/perm/kate/EditAudioActivity;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/EditAudioActivity;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/perm/kate/EditAudioActivity;->text_callback:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/perm/kate/EditAudioActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/EditAudioActivity;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/perm/kate/EditAudioActivity;->audio_text:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/perm/kate/EditAudioActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/EditAudioActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 13
    iput-object p1, p0, Lcom/perm/kate/EditAudioActivity;->audio_text:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/perm/kate/EditAudioActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/EditAudioActivity;

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/perm/kate/EditAudioActivity;->displayTextOnUiThread()V

    return-void
.end method

.method static synthetic access$400(Lcom/perm/kate/EditAudioActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/EditAudioActivity;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/perm/kate/EditAudioActivity;->tb_audio_text:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$500(Lcom/perm/kate/EditAudioActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/EditAudioActivity;

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/perm/kate/EditAudioActivity;->updateByUIChanged()V

    return-void
.end method

.method static synthetic access$600(Lcom/perm/kate/EditAudioActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/EditAudioActivity;

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/perm/kate/EditAudioActivity;->saveInThread()V

    return-void
.end method

.method static synthetic access$700(Lcom/perm/kate/EditAudioActivity;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/EditAudioActivity;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/perm/kate/EditAudioActivity;->callback:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$800(Lcom/perm/kate/EditAudioActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/EditAudioActivity;

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/perm/kate/EditAudioActivity;->updateAudioInDB()V

    return-void
.end method

.method static synthetic access$900(Lcom/perm/kate/EditAudioActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/EditAudioActivity;

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/perm/kate/EditAudioActivity;->displayOnUiThread()V

    return-void
.end method

.method private displayData()V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/perm/kate/EditAudioActivity;->audio:Lcom/perm/kate/api/Audio;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/perm/kate/EditAudioActivity;->tb_audio_artist:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/perm/kate/EditAudioActivity;->audio:Lcom/perm/kate/api/Audio;

    iget-object v1, v1, Lcom/perm/kate/api/Audio;->artist:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v0, p0, Lcom/perm/kate/EditAudioActivity;->tb_audio_title:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/perm/kate/EditAudioActivity;->audio:Lcom/perm/kate/api/Audio;

    iget-object v1, v1, Lcom/perm/kate/api/Audio;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 90
    :cond_0
    return-void
.end method

.method private displayOnUiThread()V
    .locals 1

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/perm/kate/EditAudioActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    :goto_0
    return-void

    .line 155
    :cond_0
    new-instance v0, Lcom/perm/kate/EditAudioActivity$8;

    invoke-direct {v0, p0}, Lcom/perm/kate/EditAudioActivity$8;-><init>(Lcom/perm/kate/EditAudioActivity;)V

    invoke-virtual {p0, v0}, Lcom/perm/kate/EditAudioActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private displayTextOnUiThread()V
    .locals 1

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/perm/kate/EditAudioActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    :goto_0
    return-void

    .line 76
    :cond_0
    new-instance v0, Lcom/perm/kate/EditAudioActivity$3;

    invoke-direct {v0, p0}, Lcom/perm/kate/EditAudioActivity$3;-><init>(Lcom/perm/kate/EditAudioActivity;)V

    invoke-virtual {p0, v0}, Lcom/perm/kate/EditAudioActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private getAudioTextInThread()V
    .locals 4

    .prologue
    .line 48
    iget-object v0, p0, Lcom/perm/kate/EditAudioActivity;->audio:Lcom/perm/kate/api/Audio;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/perm/kate/EditAudioActivity;->audio:Lcom/perm/kate/api/Audio;

    iget-object v0, v0, Lcom/perm/kate/api/Audio;->lyrics_id:Ljava/lang/Long;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/perm/kate/EditAudioActivity;->audio:Lcom/perm/kate/api/Audio;

    iget-object v0, v0, Lcom/perm/kate/api/Audio;->lyrics_id:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 49
    new-instance v0, Lcom/perm/kate/EditAudioActivity$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/EditAudioActivity$1;-><init>(Lcom/perm/kate/EditAudioActivity;)V

    .line 55
    invoke-virtual {v0}, Lcom/perm/kate/EditAudioActivity$1;->start()V

    .line 57
    :cond_0
    return-void
.end method

.method private saveInThread()V
    .locals 1

    .prologue
    .line 128
    new-instance v0, Lcom/perm/kate/EditAudioActivity$6;

    invoke-direct {v0, p0}, Lcom/perm/kate/EditAudioActivity$6;-><init>(Lcom/perm/kate/EditAudioActivity;)V

    .line 134
    invoke-virtual {v0}, Lcom/perm/kate/EditAudioActivity$6;->start()V

    .line 135
    return-void
.end method

.method private updateAudioInDB()V
    .locals 2

    .prologue
    .line 124
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v1, p0, Lcom/perm/kate/EditAudioActivity;->audio:Lcom/perm/kate/api/Audio;

    invoke-virtual {v0, v1}, Lcom/perm/kate/db/DataHelper;->updateAudio(Lcom/perm/kate/api/Audio;)Z

    .line 125
    return-void
.end method

.method private updateByUIChanged()V
    .locals 3

    .prologue
    .line 108
    iget-object v1, p0, Lcom/perm/kate/EditAudioActivity;->audio:Lcom/perm/kate/api/Audio;

    iget-object v2, p0, Lcom/perm/kate/EditAudioActivity;->tb_audio_artist:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/perm/kate/api/Audio;->artist:Ljava/lang/String;

    .line 109
    iget-object v1, p0, Lcom/perm/kate/EditAudioActivity;->audio:Lcom/perm/kate/api/Audio;

    iget-object v2, p0, Lcom/perm/kate/EditAudioActivity;->tb_audio_title:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/perm/kate/api/Audio;->title:Ljava/lang/String;

    .line 110
    iget-object v1, p0, Lcom/perm/kate/EditAudioActivity;->tb_audio_text:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "audio_text_edited":Ljava/lang/String;
    iget-object v1, p0, Lcom/perm/kate/EditAudioActivity;->audio_text:Ljava/lang/String;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 116
    :cond_0
    iput-object v0, p0, Lcom/perm/kate/EditAudioActivity;->audio_text:Ljava/lang/String;

    .line 119
    :cond_1
    iget-object v1, p0, Lcom/perm/kate/EditAudioActivity;->audio_text:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 120
    const-string v1, " "

    iput-object v1, p0, Lcom/perm/kate/EditAudioActivity;->audio_text:Ljava/lang/String;

    .line 121
    :cond_2
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v4, 0x0

    .line 26
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    const v2, 0x7f030060

    invoke-virtual {p0, v2}, Lcom/perm/kate/EditAudioActivity;->setContentView(I)V

    .line 28
    const v2, 0x7f070464

    invoke-virtual {p0, v2}, Lcom/perm/kate/EditAudioActivity;->setHeaderTitle(I)V

    .line 29
    const v2, 0x7f0e0129

    invoke-virtual {p0, v2}, Lcom/perm/kate/EditAudioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/perm/kate/EditAudioActivity;->tb_audio_artist:Landroid/widget/EditText;

    .line 30
    const v2, 0x7f0e012a

    invoke-virtual {p0, v2}, Lcom/perm/kate/EditAudioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/perm/kate/EditAudioActivity;->tb_audio_title:Landroid/widget/EditText;

    .line 31
    const v2, 0x7f0e012b

    invoke-virtual {p0, v2}, Lcom/perm/kate/EditAudioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/perm/kate/EditAudioActivity;->tb_audio_text:Landroid/widget/EditText;

    .line 32
    const v2, 0x7f0e019d

    invoke-virtual {p0, v2}, Lcom/perm/kate/EditAudioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/perm/kate/EditAudioActivity;->btn_save:Landroid/widget/Button;

    .line 33
    iget-object v2, p0, Lcom/perm/kate/EditAudioActivity;->btn_save:Landroid/widget/Button;

    iget-object v3, p0, Lcom/perm/kate/EditAudioActivity;->save_OnClickListerer:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    const v2, 0x7f0e019b

    invoke-virtual {p0, v2}, Lcom/perm/kate/EditAudioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/perm/kate/EditAudioActivity;->btn_cancel:Landroid/widget/Button;

    .line 35
    iget-object v2, p0, Lcom/perm/kate/EditAudioActivity;->btn_cancel:Landroid/widget/Button;

    iget-object v3, p0, Lcom/perm/kate/EditAudioActivity;->cancel_OnClickListerer:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    invoke-virtual {p0}, Lcom/perm/kate/EditAudioActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.perm.kate.audio_id"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 37
    .local v0, "audio_id":Ljava/lang/Long;
    invoke-virtual {p0}, Lcom/perm/kate/EditAudioActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.perm.kate.audio_owner_id"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 38
    .local v1, "audio_owner_id":Ljava/lang/Long;
    if-nez v0, :cond_0

    .line 39
    invoke-virtual {p0}, Lcom/perm/kate/EditAudioActivity;->finish()V

    .line 45
    :goto_0
    return-void

    .line 42
    :cond_0
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/perm/kate/db/DataHelper;->fetchAudio(JJ)Lcom/perm/kate/api/Audio;

    move-result-object v2

    iput-object v2, p0, Lcom/perm/kate/EditAudioActivity;->audio:Lcom/perm/kate/api/Audio;

    .line 43
    invoke-direct {p0}, Lcom/perm/kate/EditAudioActivity;->displayData()V

    .line 44
    invoke-direct {p0}, Lcom/perm/kate/EditAudioActivity;->getAudioTextInThread()V

    goto :goto_0
.end method

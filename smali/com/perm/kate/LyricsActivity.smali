.class public Lcom/perm/kate/LyricsActivity;
.super Lcom/perm/kate/BaseActivity;
.source "LyricsActivity.java"


# instance fields
.field private audio_id:J

.field private callback:Lcom/perm/kate/session/Callback;

.field has_cache:Z

.field private lyrics_id:J

.field private lyrics_text:Ljava/lang/String;

.field private tv_lyrics_text:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    .line 57
    new-instance v0, Lcom/perm/kate/LyricsActivity$3;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/LyricsActivity$3;-><init>(Lcom/perm/kate/LyricsActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/LyricsActivity;->callback:Lcom/perm/kate/session/Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/LyricsActivity;)J
    .locals 2

    .line 12
    iget-wide v0, p0, Lcom/perm/kate/LyricsActivity;->lyrics_id:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/perm/kate/LyricsActivity;)J
    .locals 2

    .line 12
    iget-wide v0, p0, Lcom/perm/kate/LyricsActivity;->audio_id:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/perm/kate/LyricsActivity;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/perm/kate/LyricsActivity;->callback:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$300(Lcom/perm/kate/LyricsActivity;)Ljava/lang/String;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/perm/kate/LyricsActivity;->lyrics_text:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$302(Lcom/perm/kate/LyricsActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/perm/kate/LyricsActivity;->lyrics_text:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/perm/kate/LyricsActivity;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/perm/kate/LyricsActivity;->displayOnUiThread()V

    return-void
.end method

.method static synthetic access$500(Lcom/perm/kate/LyricsActivity;)Landroid/widget/TextView;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/perm/kate/LyricsActivity;->tv_lyrics_text:Landroid/widget/TextView;

    return-object p0
.end method

.method private displayOnUiThread()V
    .locals 1

    .line 75
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 77
    :cond_0
    new-instance v0, Lcom/perm/kate/LyricsActivity$4;

    invoke-direct {v0, p0}, Lcom/perm/kate/LyricsActivity$4;-><init>(Lcom/perm/kate/LyricsActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private refresh()V
    .locals 1

    .line 36
    new-instance v0, Lcom/perm/kate/LyricsActivity$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/LyricsActivity$1;-><init>(Lcom/perm/kate/LyricsActivity;)V

    .line 42
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method protected fillMenuItems(Landroid/view/Menu;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x6

    const/16 v2, 0x3e8

    const v3, 0x7f0f00b2

    .line 95
    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const/4 p1, 0x1

    return p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 23
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c00a8

    .line 24
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setContentView(I)V

    const p1, 0x7f0f04ec

    .line 25
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setHeaderTitle(I)V

    .line 26
    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->setupMenuButton()V

    const p1, 0x7f090388

    .line 27
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/perm/kate/LyricsActivity;->tv_lyrics_text:Landroid/widget/TextView;

    .line 28
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.perm.kate.lyrics_id"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/perm/kate/LyricsActivity;->lyrics_id:J

    .line 29
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "audio_id"

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/perm/kate/LyricsActivity;->audio_id:J

    const/4 p1, 0x0

    .line 30
    iput-boolean p1, p0, Lcom/perm/kate/LyricsActivity;->has_cache:Z

    .line 32
    invoke-direct {p0}, Lcom/perm/kate/LyricsActivity;->refresh()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    .line 87
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 88
    invoke-virtual {p0, p1}, Lcom/perm/kate/LyricsActivity;->fillMenuItems(Landroid/view/Menu;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 101
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 106
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 103
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/LyricsActivity;->lyrics_text:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/perm/kate/Helper;->copyText(Ljava/lang/String;Landroid/content/Context;)V

    const/4 p1, 0x1

    return p1
.end method

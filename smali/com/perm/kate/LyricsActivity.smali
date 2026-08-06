.class public Lcom/perm/kate/LyricsActivity;
.super Lcom/perm/kate/BaseActivity;
.source "LyricsActivity.java"


# instance fields
.field private callback:Lcom/perm/kate/session/Callback;

.field has_cache:Z

.field private lyrics_id:J

.field private lyrics_text:Ljava/lang/String;

.field private tv_lyrics_text:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    .line 55
    new-instance v0, Lcom/perm/kate/LyricsActivity$3;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/LyricsActivity$3;-><init>(Lcom/perm/kate/LyricsActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/LyricsActivity;->callback:Lcom/perm/kate/session/Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/LyricsActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/perm/kate/LyricsActivity;

    .prologue
    .line 12
    iget-wide v0, p0, Lcom/perm/kate/LyricsActivity;->lyrics_id:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/perm/kate/LyricsActivity;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/LyricsActivity;

    .prologue
    .line 12
    iget-object v0, p0, Lcom/perm/kate/LyricsActivity;->callback:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/perm/kate/LyricsActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/LyricsActivity;

    .prologue
    .line 12
    iget-object v0, p0, Lcom/perm/kate/LyricsActivity;->lyrics_text:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/perm/kate/LyricsActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/LyricsActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 12
    iput-object p1, p0, Lcom/perm/kate/LyricsActivity;->lyrics_text:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/perm/kate/LyricsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/LyricsActivity;

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/perm/kate/LyricsActivity;->displayOnUiThread()V

    return-void
.end method

.method static synthetic access$400(Lcom/perm/kate/LyricsActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/LyricsActivity;

    .prologue
    .line 12
    iget-object v0, p0, Lcom/perm/kate/LyricsActivity;->tv_lyrics_text:Landroid/widget/TextView;

    return-object v0
.end method

.method private checkCache()V
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/perm/kate/LyricsActivity;->has_cache:Z

    if-nez v0, :cond_0

    .line 53
    :goto_0
    return-void

    .line 46
    :cond_0
    new-instance v0, Lcom/perm/kate/LyricsActivity$2;

    invoke-direct {v0, p0}, Lcom/perm/kate/LyricsActivity$2;-><init>(Lcom/perm/kate/LyricsActivity;)V

    .line 52
    invoke-virtual {v0}, Lcom/perm/kate/LyricsActivity$2;->start()V

    goto :goto_0
.end method

.method private displayOnUiThread()V
    .locals 1

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/perm/kate/LyricsActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    :goto_0
    return-void

    .line 75
    :cond_0
    new-instance v0, Lcom/perm/kate/LyricsActivity$4;

    invoke-direct {v0, p0}, Lcom/perm/kate/LyricsActivity$4;-><init>(Lcom/perm/kate/LyricsActivity;)V

    invoke-virtual {p0, v0}, Lcom/perm/kate/LyricsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private refresh()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lcom/perm/kate/LyricsActivity$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/LyricsActivity$1;-><init>(Lcom/perm/kate/LyricsActivity;)V

    .line 40
    invoke-virtual {v0}, Lcom/perm/kate/LyricsActivity$1;->start()V

    .line 41
    return-void
.end method


# virtual methods
.method protected fillMenuItems(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 93
    const/4 v0, 0x0

    const/4 v1, 0x6

    const/16 v2, 0x3e8

    const v3, 0x7f07007e

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 94
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 22
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    const v0, 0x7f03009b

    invoke-virtual {p0, v0}, Lcom/perm/kate/LyricsActivity;->setContentView(I)V

    .line 24
    const v0, 0x7f07045c

    invoke-virtual {p0, v0}, Lcom/perm/kate/LyricsActivity;->setHeaderTitle(I)V

    .line 25
    invoke-virtual {p0}, Lcom/perm/kate/LyricsActivity;->setupMenuButton()V

    .line 26
    const v0, 0x7f0e0208

    invoke-virtual {p0, v0}, Lcom/perm/kate/LyricsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/perm/kate/LyricsActivity;->tv_lyrics_text:Landroid/widget/TextView;

    .line 27
    invoke-virtual {p0}, Lcom/perm/kate/LyricsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.perm.kate.lyrics_id"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/perm/kate/LyricsActivity;->lyrics_id:J

    .line 28
    iget-wide v0, p0, Lcom/perm/kate/LyricsActivity;->lyrics_id:J

    invoke-static {v0, v1}, Lcom/perm/kate/audio_cache/LyricsCache;->getCacheFileIfExists(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/perm/kate/LyricsActivity;->has_cache:Z

    .line 29
    invoke-direct {p0}, Lcom/perm/kate/LyricsActivity;->checkCache()V

    .line 30
    invoke-direct {p0}, Lcom/perm/kate/LyricsActivity;->refresh()V

    .line 31
    return-void

    .line 28
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 85
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 86
    invoke-virtual {p0, p1}, Lcom/perm/kate/LyricsActivity;->fillMenuItems(Landroid/view/Menu;)Z

    .line 87
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 99
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 104
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 101
    :pswitch_0
    iget-object v0, p0, Lcom/perm/kate/LyricsActivity;->lyrics_text:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/perm/kate/Helper;->copyText(Ljava/lang/String;Landroid/content/Context;)V

    .line 102
    const/4 v0, 0x1

    goto :goto_0

    .line 99
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

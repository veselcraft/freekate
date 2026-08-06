.class public Lcom/perm/kate/VoiceAssistantReceiver;
.super Landroid/content/BroadcastReceiver;
.source "VoiceAssistantReceiver.java"


# instance fields
.field callback:Lcom/perm/kate/session/Callback;

.field skip_ui:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/perm/kate/VoiceAssistantReceiver;->skip_ui:Z

    .line 56
    new-instance v0, Lcom/perm/kate/VoiceAssistantReceiver$3;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/VoiceAssistantReceiver$3;-><init>(Lcom/perm/kate/VoiceAssistantReceiver;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/VoiceAssistantReceiver;->callback:Lcom/perm/kate/session/Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/VoiceAssistantReceiver;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/VoiceAssistantReceiver;

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/perm/kate/VoiceAssistantReceiver;->showUi()V

    return-void
.end method

.method private showUi()V
    .locals 3

    .prologue
    .line 70
    iget-boolean v1, p0, Lcom/perm/kate/VoiceAssistantReceiver;->skip_ui:Z

    if-eqz v1, :cond_0

    .line 77
    :goto_0
    return-void

    .line 74
    :cond_0
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const-class v2, Lcom/perm/kate/PlayerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 75
    .local v0, "i":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 76
    sget-object v1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v1, v0}, Landroid/app/Application;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private startLoginActivity()V
    .locals 3

    .prologue
    .line 80
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {}, Lcom/perm/kate/Helper;->getLoginActivity()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 81
    .local v0, "i":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 82
    sget-object v1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v1, v0}, Landroid/app/Application;->startActivity(Landroid/content/Intent;)V

    .line 83
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 22
    const-string v1, "VoiceAssistantReceiver"

    const-string v2, "VoiceAssistantReceiver.onReceive"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-nez v1, :cond_0

    .line 25
    invoke-direct {p0}, Lcom/perm/kate/VoiceAssistantReceiver;->startLoginActivity()V

    .line 54
    :goto_0
    return-void

    .line 29
    :cond_0
    const-string v1, "skip_ui"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/perm/kate/VoiceAssistantReceiver;->skip_ui:Z

    .line 30
    const-string v1, "VK_MUSIC_PLAY_ALL"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 34
    new-instance v1, Lcom/perm/kate/VoiceAssistantReceiver$1;

    invoke-direct {v1, p0}, Lcom/perm/kate/VoiceAssistantReceiver$1;-><init>(Lcom/perm/kate/VoiceAssistantReceiver;)V

    .line 39
    invoke-virtual {v1}, Lcom/perm/kate/VoiceAssistantReceiver$1;->start()V

    .line 41
    :cond_1
    const-string v1, "VK_MUSIC_PLAY_SEARCH"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 42
    const-string v1, "query"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, "query":Ljava/lang/String;
    new-instance v1, Lcom/perm/kate/VoiceAssistantReceiver$2;

    invoke-direct {v1, p0, v0}, Lcom/perm/kate/VoiceAssistantReceiver$2;-><init>(Lcom/perm/kate/VoiceAssistantReceiver;Ljava/lang/String;)V

    .line 48
    invoke-virtual {v1}, Lcom/perm/kate/VoiceAssistantReceiver$2;->start()V

    .line 53
    .end local v0    # "query":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/perm/kate/VoiceAssistantReceiver;->abortBroadcast()V

    goto :goto_0
.end method

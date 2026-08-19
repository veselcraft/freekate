.class public Lcom/perm/kate/VoiceAssistantReceiver;
.super Landroid/content/BroadcastReceiver;
.source "VoiceAssistantReceiver.java"


# instance fields
.field callback:Lcom/perm/kate/session/Callback;

.field skip_ui:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 16
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    .line 18
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

    .line 16
    invoke-direct {p0}, Lcom/perm/kate/VoiceAssistantReceiver;->showUi()V

    return-void
.end method

.method private showUi()V
    .locals 3

    .line 70
    iget-boolean v0, p0, Lcom/perm/kate/VoiceAssistantReceiver;->skip_ui:Z

    if-eqz v0, :cond_0

    return-void

    .line 74
    :cond_0
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const-class v2, Lcom/perm/kate/PlayerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 75
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 76
    sget-object v1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v1, v0}, Landroid/app/Application;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private startLoginActivity()V
    .locals 3

    .line 80
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {}, Lcom/perm/kate/Helper;->getLoginActivity()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 81
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 82
    sget-object v1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v1, v0}, Landroid/app/Application;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "VoiceAssistantReceiver"

    const-string v0, "VoiceAssistantReceiver.onReceive"

    .line 22
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    sget-object p1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-nez p1, :cond_0

    .line 25
    invoke-direct {p0}, Lcom/perm/kate/VoiceAssistantReceiver;->startLoginActivity()V

    return-void

    :cond_0
    const/4 p1, 0x0

    const-string v0, "skip_ui"

    .line 29
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/perm/kate/VoiceAssistantReceiver;->skip_ui:Z

    .line 30
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VK_MUSIC_PLAY_ALL"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 34
    new-instance p1, Lcom/perm/kate/VoiceAssistantReceiver$1;

    invoke-direct {p1, p0}, Lcom/perm/kate/VoiceAssistantReceiver$1;-><init>(Lcom/perm/kate/VoiceAssistantReceiver;)V

    .line 39
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 41
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VK_MUSIC_PLAY_SEARCH"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "query"

    .line 42
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 43
    new-instance p2, Lcom/perm/kate/VoiceAssistantReceiver$2;

    invoke-direct {p2, p0, p1}, Lcom/perm/kate/VoiceAssistantReceiver$2;-><init>(Lcom/perm/kate/VoiceAssistantReceiver;Ljava/lang/String;)V

    .line 48
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 53
    :cond_2
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->abortBroadcast()V

    return-void
.end method

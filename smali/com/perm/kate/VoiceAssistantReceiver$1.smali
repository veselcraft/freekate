.class Lcom/perm/kate/VoiceAssistantReceiver$1;
.super Ljava/lang/Thread;
.source "VoiceAssistantReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/VoiceAssistantReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/VoiceAssistantReceiver;


# direct methods
.method constructor <init>(Lcom/perm/kate/VoiceAssistantReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/VoiceAssistantReceiver;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/perm/kate/VoiceAssistantReceiver$1;->this$0:Lcom/perm/kate/VoiceAssistantReceiver;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 37
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v2, p0, Lcom/perm/kate/VoiceAssistantReceiver$1;->this$0:Lcom/perm/kate/VoiceAssistantReceiver;

    iget-object v5, v2, Lcom/perm/kate/VoiceAssistantReceiver;->callback:Lcom/perm/kate/session/Callback;

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v6, v1

    invoke-virtual/range {v0 .. v6}, Lcom/perm/kate/session/Session;->getAudio(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/util/ArrayList;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 38
    return-void
.end method

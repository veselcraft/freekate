.class Lcom/perm/kate/VoiceAssistantReceiver$2;
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

.field final synthetic val$query:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/perm/kate/VoiceAssistantReceiver;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/VoiceAssistantReceiver;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/perm/kate/VoiceAssistantReceiver$2;->this$0:Lcom/perm/kate/VoiceAssistantReceiver;

    iput-object p2, p0, Lcom/perm/kate/VoiceAssistantReceiver$2;->val$query:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 46
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/VoiceAssistantReceiver$2;->val$query:Ljava/lang/String;

    const-string v2, "2"

    const-wide/16 v4, 0x64

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget-object v4, p0, Lcom/perm/kate/VoiceAssistantReceiver$2;->this$0:Lcom/perm/kate/VoiceAssistantReceiver;

    iget-object v7, v4, Lcom/perm/kate/VoiceAssistantReceiver;->callback:Lcom/perm/kate/session/Callback;

    move-object v4, v3

    move-object v6, v3

    move-object v8, v3

    invoke-virtual/range {v0 .. v8}, Lcom/perm/kate/session/Session;->searchAudio(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 47
    return-void
.end method

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

    .line 34
    iput-object p1, p0, Lcom/perm/kate/VoiceAssistantReceiver$1;->this$0:Lcom/perm/kate/VoiceAssistantReceiver;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 37
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/VoiceAssistantReceiver$1;->this$0:Lcom/perm/kate/VoiceAssistantReceiver;

    iget-object v8, v1, Lcom/perm/kate/VoiceAssistantReceiver;->callback:Lcom/perm/kate/session/Callback;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc8

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v0 .. v9}, Lcom/perm/kate/session/Session;->getAudio(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/util/ArrayList;IILjava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method

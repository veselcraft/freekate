.class Lcom/perm/kate/VoiceAssistantReceiver$3;
.super Lcom/perm/kate/session/Callback;
.source "VoiceAssistantReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/VoiceAssistantReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/VoiceAssistantReceiver;


# direct methods
.method constructor <init>(Lcom/perm/kate/VoiceAssistantReceiver;Landroid/app/Activity;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/perm/kate/VoiceAssistantReceiver$3;->this$0:Lcom/perm/kate/VoiceAssistantReceiver;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public ready(Ljava/lang/Object;)V
    .locals 4

    .line 60
    check-cast p1, Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 61
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/Audio;

    .line 63
    sget-object v2, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const/4 v3, 0x4

    invoke-static {v1, v2, p1, v0, v3}, Lcom/perm/kate/AudioClickHelper;->PlayAudio(Lcom/perm/kate/api/Audio;Landroid/content/Context;Ljava/util/ArrayList;ZI)V

    .line 65
    iget-object p1, p0, Lcom/perm/kate/VoiceAssistantReceiver$3;->this$0:Lcom/perm/kate/VoiceAssistantReceiver;

    invoke-static {p1}, Lcom/perm/kate/VoiceAssistantReceiver;->access$000(Lcom/perm/kate/VoiceAssistantReceiver;)V

    return-void
.end method

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
    .param p1, "this$0"    # Lcom/perm/kate/VoiceAssistantReceiver;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/perm/kate/VoiceAssistantReceiver$3;->this$0:Lcom/perm/kate/VoiceAssistantReceiver;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public ready(Ljava/lang/Object;)V
    .locals 5
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 60
    move-object v1, p1

    check-cast v1, Ljava/util/ArrayList;

    .line 61
    .local v1, "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Audio;>;"
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Audio;

    .line 63
    .local v0, "audio":Lcom/perm/kate/api/Audio;
    sget-object v2, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const/4 v3, 0x4

    invoke-static {v0, v2, v1, v4, v3}, Lcom/perm/kate/AudioClickHelper;->PlayAudio(Lcom/perm/kate/api/Audio;Landroid/content/Context;Ljava/util/ArrayList;ZI)V

    .line 65
    iget-object v2, p0, Lcom/perm/kate/VoiceAssistantReceiver$3;->this$0:Lcom/perm/kate/VoiceAssistantReceiver;

    invoke-static {v2}, Lcom/perm/kate/VoiceAssistantReceiver;->access$000(Lcom/perm/kate/VoiceAssistantReceiver;)V

    .line 66
    return-void
.end method

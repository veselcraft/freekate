.class Lcom/perm/kate/RecordEpisodeActivity$4;
.super Lcom/perm/kate/Player$PlayerCallback;
.source "RecordEpisodeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/RecordEpisodeActivity;->getVoicePlayer()Lcom/perm/kate/Player;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/RecordEpisodeActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/RecordEpisodeActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/RecordEpisodeActivity;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/perm/kate/RecordEpisodeActivity$4;->this$0:Lcom/perm/kate/RecordEpisodeActivity;

    invoke-direct {p0}, Lcom/perm/kate/Player$PlayerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion()V
    .locals 0

    .prologue
    .line 206
    return-void
.end method

.method public onError()V
    .locals 0

    .prologue
    .line 208
    return-void
.end method

.method public onNextEpisode()V
    .locals 0

    .prologue
    .line 212
    return-void
.end method

.method public onPrepared()V
    .locals 0

    .prologue
    .line 204
    return-void
.end method

.method public onStartBuffering()V
    .locals 0

    .prologue
    .line 210
    return-void
.end method

.method public onStateChanged()V
    .locals 0

    .prologue
    .line 202
    return-void
.end method

.class Lcom/perm/kate/RecordEpisodeActivity$1;
.super Ljava/lang/Object;
.source "RecordEpisodeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/RecordEpisodeActivity;
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

    .line 21
    iput-object p1, p0, Lcom/perm/kate/RecordEpisodeActivity$1;->this$0:Lcom/perm/kate/RecordEpisodeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 24
    iget-object p1, p0, Lcom/perm/kate/RecordEpisodeActivity$1;->this$0:Lcom/perm/kate/RecordEpisodeActivity;

    iget-object v0, p1, Lcom/perm/kate/RecordEpisodeActivity;->rec:Lcom/perm/kate/VoiceRecorder;

    iget-boolean v1, v0, Lcom/perm/kate/VoiceRecorder;->isRecord:Z

    if-eqz v1, :cond_0

    .line 25
    invoke-virtual {v0, p1}, Lcom/perm/kate/VoiceRecorder;->stop(Landroid/app/Activity;)Z

    .line 26
    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 27
    iget-object v0, p0, Lcom/perm/kate/RecordEpisodeActivity$1;->this$0:Lcom/perm/kate/RecordEpisodeActivity;

    iget-object v0, v0, Lcom/perm/kate/RecordEpisodeActivity;->rec:Lcom/perm/kate/VoiceRecorder;

    iget-object v0, v0, Lcom/perm/kate/VoiceRecorder;->filepath:Ljava/lang/String;

    const-string v1, "file"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 28
    iget-object v0, p0, Lcom/perm/kate/RecordEpisodeActivity$1;->this$0:Lcom/perm/kate/RecordEpisodeActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 29
    iget-object p1, p0, Lcom/perm/kate/RecordEpisodeActivity$1;->this$0:Lcom/perm/kate/RecordEpisodeActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

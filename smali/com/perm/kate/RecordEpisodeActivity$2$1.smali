.class Lcom/perm/kate/RecordEpisodeActivity$2$1;
.super Ljava/lang/Object;
.source "RecordEpisodeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/RecordEpisodeActivity$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/RecordEpisodeActivity$2;


# direct methods
.method constructor <init>(Lcom/perm/kate/RecordEpisodeActivity$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/perm/kate/RecordEpisodeActivity$2;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/perm/kate/RecordEpisodeActivity$2$1;->this$1:Lcom/perm/kate/RecordEpisodeActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/perm/kate/RecordEpisodeActivity$2$1;->this$1:Lcom/perm/kate/RecordEpisodeActivity$2;

    iget-object v0, v0, Lcom/perm/kate/RecordEpisodeActivity$2;->this$0:Lcom/perm/kate/RecordEpisodeActivity;

    invoke-static {v0}, Lcom/perm/kate/RecordEpisodeActivity;->access$400(Lcom/perm/kate/RecordEpisodeActivity;)Lcom/perm/utils/TimerTextView;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/RecordEpisodeActivity$2$1;->this$1:Lcom/perm/kate/RecordEpisodeActivity$2;

    iget-object v1, v1, Lcom/perm/kate/RecordEpisodeActivity$2;->this$0:Lcom/perm/kate/RecordEpisodeActivity;

    invoke-static {v1}, Lcom/perm/kate/RecordEpisodeActivity;->access$300(Lcom/perm/kate/RecordEpisodeActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/perm/utils/TimerTextView;->setTime(I)V

    .line 54
    return-void
.end method

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
    .param p1, "this$0"    # Lcom/perm/kate/RecordEpisodeActivity;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/perm/kate/RecordEpisodeActivity$1;->this$0:Lcom/perm/kate/RecordEpisodeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 36
    iget-object v1, p0, Lcom/perm/kate/RecordEpisodeActivity$1;->this$0:Lcom/perm/kate/RecordEpisodeActivity;

    invoke-static {v1}, Lcom/perm/kate/RecordEpisodeActivity;->access$000(Lcom/perm/kate/RecordEpisodeActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 37
    iget-object v1, p0, Lcom/perm/kate/RecordEpisodeActivity$1;->this$0:Lcom/perm/kate/RecordEpisodeActivity;

    invoke-static {v1}, Lcom/perm/kate/RecordEpisodeActivity;->access$100(Lcom/perm/kate/RecordEpisodeActivity;)V

    .line 38
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 39
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "file"

    iget-object v2, p0, Lcom/perm/kate/RecordEpisodeActivity$1;->this$0:Lcom/perm/kate/RecordEpisodeActivity;

    invoke-static {v2}, Lcom/perm/kate/RecordEpisodeActivity;->access$200(Lcom/perm/kate/RecordEpisodeActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    iget-object v1, p0, Lcom/perm/kate/RecordEpisodeActivity$1;->this$0:Lcom/perm/kate/RecordEpisodeActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/perm/kate/RecordEpisodeActivity;->setResult(ILandroid/content/Intent;)V

    .line 41
    iget-object v1, p0, Lcom/perm/kate/RecordEpisodeActivity$1;->this$0:Lcom/perm/kate/RecordEpisodeActivity;

    invoke-virtual {v1}, Lcom/perm/kate/RecordEpisodeActivity;->finish()V

    .line 42
    return-void
.end method

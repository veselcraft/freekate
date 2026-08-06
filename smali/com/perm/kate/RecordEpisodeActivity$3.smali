.class Lcom/perm/kate/RecordEpisodeActivity$3;
.super Ljava/lang/Object;
.source "RecordEpisodeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/RecordEpisodeActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 73
    iput-object p1, p0, Lcom/perm/kate/RecordEpisodeActivity$3;->this$0:Lcom/perm/kate/RecordEpisodeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/perm/kate/RecordEpisodeActivity$3;->this$0:Lcom/perm/kate/RecordEpisodeActivity;

    invoke-static {v0}, Lcom/perm/kate/RecordEpisodeActivity;->access$000(Lcom/perm/kate/RecordEpisodeActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/perm/kate/RecordEpisodeActivity$3;->this$0:Lcom/perm/kate/RecordEpisodeActivity;

    invoke-static {v0}, Lcom/perm/kate/RecordEpisodeActivity;->access$100(Lcom/perm/kate/RecordEpisodeActivity;)V

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/RecordEpisodeActivity$3;->this$0:Lcom/perm/kate/RecordEpisodeActivity;

    const v1, 0x7f0e02fc

    invoke-virtual {v0, v1}, Lcom/perm/kate/RecordEpisodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 79
    iget-object v0, p0, Lcom/perm/kate/RecordEpisodeActivity$3;->this$0:Lcom/perm/kate/RecordEpisodeActivity;

    invoke-static {v0}, Lcom/perm/kate/RecordEpisodeActivity;->access$500(Lcom/perm/kate/RecordEpisodeActivity;)Lcom/perm/kate/Player;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/RecordEpisodeActivity$3;->this$0:Lcom/perm/kate/RecordEpisodeActivity;

    invoke-static {v1}, Lcom/perm/kate/RecordEpisodeActivity;->access$200(Lcom/perm/kate/RecordEpisodeActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/perm/kate/Player;->play(Ljava/lang/String;)V

    .line 80
    return-void
.end method

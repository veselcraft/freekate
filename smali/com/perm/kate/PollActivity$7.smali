.class Lcom/perm/kate/PollActivity$7;
.super Ljava/lang/Object;
.source "PollActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/PollActivity;->generateProgressBars(Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/PollActivity;

.field final synthetic val$answer_ids:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/perm/kate/PollActivity;Ljava/util/ArrayList;)V
    .locals 0

    .line 266
    iput-object p1, p0, Lcom/perm/kate/PollActivity$7;->this$0:Lcom/perm/kate/PollActivity;

    iput-object p2, p0, Lcom/perm/kate/PollActivity$7;->val$answer_ids:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 269
    iget-object v0, p0, Lcom/perm/kate/PollActivity$7;->this$0:Lcom/perm/kate/PollActivity;

    iget-object v1, p0, Lcom/perm/kate/PollActivity$7;->val$answer_ids:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/perm/kate/PollActivity;->deleteVoteInThread(J)V

    .line 270
    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 271
    iget-object p1, p0, Lcom/perm/kate/PollActivity$7;->this$0:Lcom/perm/kate/PollActivity;

    iput-boolean v2, p1, Lcom/perm/kate/PollActivity;->show_results:Z

    return-void
.end method

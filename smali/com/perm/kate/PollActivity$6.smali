.class Lcom/perm/kate/PollActivity$6;
.super Ljava/lang/Object;
.source "PollActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/PollActivity;->generateProgressBars(Ljava/util/ArrayList;JZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/PollActivity;

.field final synthetic val$answer_id:J


# direct methods
.method constructor <init>(Lcom/perm/kate/PollActivity;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/PollActivity;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/perm/kate/PollActivity$6;->this$0:Lcom/perm/kate/PollActivity;

    iput-wide p2, p0, Lcom/perm/kate/PollActivity$6;->val$answer_id:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 209
    iget-object v0, p0, Lcom/perm/kate/PollActivity$6;->this$0:Lcom/perm/kate/PollActivity;

    iget-wide v2, p0, Lcom/perm/kate/PollActivity$6;->val$answer_id:J

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/PollActivity;->deleteVoteInThread(J)V

    .line 210
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 211
    return-void
.end method

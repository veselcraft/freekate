.class Lcom/perm/kate/AudioFragment$6;
.super Lcom/perm/kate/AudioClickHelper$AudioClickHelperCallback;
.source "AudioFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AudioFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/AudioFragment;)V
    .locals 0

    .line 284
    iput-object p1, p0, Lcom/perm/kate/AudioFragment$6;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-direct {p0}, Lcom/perm/kate/AudioClickHelper$AudioClickHelperCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public audioSelectForDelete(J)V
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/perm/kate/AudioFragment$6;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-static {v0, p1, p2}, Lcom/perm/kate/AudioFragment;->access$900(Lcom/perm/kate/AudioFragment;J)V

    return-void
.end method

.method public audioSelectForMove(JZJ)V
    .locals 0

    .line 292
    iget-object p4, p0, Lcom/perm/kate/AudioFragment$6;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-static {p4, p3}, Lcom/perm/kate/AudioFragment;->access$1002(Lcom/perm/kate/AudioFragment;Z)Z

    .line 293
    iget-object p3, p0, Lcom/perm/kate/AudioFragment$6;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-static {p3, p1, p2}, Lcom/perm/kate/AudioFragment;->access$1100(Lcom/perm/kate/AudioFragment;J)V

    return-void
.end method

.class Lcom/perm/kate/NewsFragment$3;
.super Ljava/lang/Thread;
.source "NewsFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/NewsFragment;

.field final synthetic val$manual:Z


# direct methods
.method constructor <init>(Lcom/perm/kate/NewsFragment;Z)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/perm/kate/NewsFragment$3;->this$0:Lcom/perm/kate/NewsFragment;

    iput-boolean p2, p0, Lcom/perm/kate/NewsFragment$3;->val$manual:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 186
    iget-object v0, p0, Lcom/perm/kate/NewsFragment$3;->this$0:Lcom/perm/kate/NewsFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 187
    iget-object v0, p0, Lcom/perm/kate/NewsFragment$3;->this$0:Lcom/perm/kate/NewsFragment;

    iget-boolean v1, p0, Lcom/perm/kate/NewsFragment$3;->val$manual:Z

    invoke-virtual {v0, v1}, Lcom/perm/kate/NewsFragment;->Refresh(Z)V

    return-void
.end method

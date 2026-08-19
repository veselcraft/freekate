.class Lcom/perm/kate/MessageThreadFragment$45$1;
.super Ljava/lang/Object;
.source "MessageThreadFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/perm/kate/MessageThreadFragment$45;


# direct methods
.method constructor <init>(Lcom/perm/kate/MessageThreadFragment$45;)V
    .locals 0

    .line 2535
    iput-object p1, p0, Lcom/perm/kate/MessageThreadFragment$45$1;->this$1:Lcom/perm/kate/MessageThreadFragment$45;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2538
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$45$1;->this$1:Lcom/perm/kate/MessageThreadFragment$45;

    iget-object v0, v0, Lcom/perm/kate/MessageThreadFragment$45;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2540
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$45$1;->this$1:Lcom/perm/kate/MessageThreadFragment$45;

    iget-object v0, v0, Lcom/perm/kate/MessageThreadFragment$45;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {v0}, Lcom/perm/kate/MessageThreadFragment;->access$4900(Lcom/perm/kate/MessageThreadFragment;)V

    .line 2541
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$45$1;->this$1:Lcom/perm/kate/MessageThreadFragment$45;

    iget-object v0, v0, Lcom/perm/kate/MessageThreadFragment$45;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/MessageThreadActivity;

    iget-object v1, p0, Lcom/perm/kate/MessageThreadFragment$45$1;->this$1:Lcom/perm/kate/MessageThreadFragment$45;

    iget-object v1, v1, Lcom/perm/kate/MessageThreadFragment$45;->this$0:Lcom/perm/kate/MessageThreadFragment;

    iget-object v1, v1, Lcom/perm/kate/MessageThreadFragment;->user:Lcom/perm/kate/api/User;

    invoke-virtual {v0, v1}, Lcom/perm/kate/MessageThreadActivity;->displayOnlineState(Lcom/perm/kate/api/User;)V

    return-void
.end method

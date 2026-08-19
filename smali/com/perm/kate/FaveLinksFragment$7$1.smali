.class Lcom/perm/kate/FaveLinksFragment$7$1;
.super Ljava/lang/Thread;
.source "FaveLinksFragment.java"


# instance fields
.field final synthetic this$1:Lcom/perm/kate/FaveLinksFragment$7;


# direct methods
.method constructor <init>(Lcom/perm/kate/FaveLinksFragment$7;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/perm/kate/FaveLinksFragment$7$1;->this$1:Lcom/perm/kate/FaveLinksFragment$7;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 188
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/FaveLinksFragment$7$1;->this$1:Lcom/perm/kate/FaveLinksFragment$7;

    iget-object v2, v1, Lcom/perm/kate/FaveLinksFragment$7;->val$link_id:Ljava/lang/String;

    iget-object v3, v1, Lcom/perm/kate/FaveLinksFragment$7;->val$fave_remove_link_callback:Lcom/perm/kate/session/Callback;

    iget-object v1, v1, Lcom/perm/kate/FaveLinksFragment$7;->this$0:Lcom/perm/kate/FaveLinksFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v2, v3, v1}, Lcom/perm/kate/session/Session;->faveRemoveLink(Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method

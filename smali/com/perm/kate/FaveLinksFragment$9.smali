.class Lcom/perm/kate/FaveLinksFragment$9;
.super Ljava/lang/Thread;
.source "FaveLinksFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FaveLinksFragment;

.field final synthetic val$fave_add_link_callback:Lcom/perm/kate/session/Callback;

.field final synthetic val$link:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/perm/kate/FaveLinksFragment;Ljava/lang/String;Lcom/perm/kate/session/Callback;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/perm/kate/FaveLinksFragment$9;->this$0:Lcom/perm/kate/FaveLinksFragment;

    iput-object p2, p0, Lcom/perm/kate/FaveLinksFragment$9;->val$link:Ljava/lang/String;

    iput-object p3, p0, Lcom/perm/kate/FaveLinksFragment$9;->val$fave_add_link_callback:Lcom/perm/kate/session/Callback;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 221
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/FaveLinksFragment$9;->val$link:Ljava/lang/String;

    iget-object v2, p0, Lcom/perm/kate/FaveLinksFragment$9;->val$fave_add_link_callback:Lcom/perm/kate/session/Callback;

    iget-object v3, p0, Lcom/perm/kate/FaveLinksFragment$9;->this$0:Lcom/perm/kate/FaveLinksFragment;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/perm/kate/session/Session;->faveAddLink(Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method

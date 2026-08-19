.class Lcom/perm/kate/FaveLinksFragment$1;
.super Ljava/lang/Thread;
.source "FaveLinksFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FaveLinksFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/FaveLinksFragment;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/perm/kate/FaveLinksFragment$1;->this$0:Lcom/perm/kate/FaveLinksFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 68
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/perm/kate/FaveLinksFragment$1;->this$0:Lcom/perm/kate/FaveLinksFragment;

    invoke-static {v3}, Lcom/perm/kate/FaveLinksFragment;->access$000(Lcom/perm/kate/FaveLinksFragment;)Lcom/perm/kate/session/Callback;

    move-result-object v3

    iget-object v4, p0, Lcom/perm/kate/FaveLinksFragment$1;->this$0:Lcom/perm/kate/FaveLinksFragment;

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/perm/kate/session/Session;->getFaveLinks(Ljava/lang/Integer;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method

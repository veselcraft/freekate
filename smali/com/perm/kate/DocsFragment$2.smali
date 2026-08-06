.class Lcom/perm/kate/DocsFragment$2;
.super Ljava/lang/Thread;
.source "DocsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/DocsFragment;->refreshInThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/DocsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/DocsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/DocsFragment;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/perm/kate/DocsFragment$2;->this$0:Lcom/perm/kate/DocsFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 91
    iget-object v0, p0, Lcom/perm/kate/DocsFragment$2;->this$0:Lcom/perm/kate/DocsFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/perm/kate/DocsFragment;->showProgressBar(Z)V

    .line 92
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/DocsFragment$2;->this$0:Lcom/perm/kate/DocsFragment;

    iget-object v1, v1, Lcom/perm/kate/DocsFragment;->owner_id:Ljava/lang/Long;

    iget-object v3, p0, Lcom/perm/kate/DocsFragment$2;->this$0:Lcom/perm/kate/DocsFragment;

    invoke-static {v3}, Lcom/perm/kate/DocsFragment;->access$100(Lcom/perm/kate/DocsFragment;)Lcom/perm/kate/session/Callback;

    move-result-object v4

    iget-object v3, p0, Lcom/perm/kate/DocsFragment$2;->this$0:Lcom/perm/kate/DocsFragment;

    invoke-virtual {v3}, Lcom/perm/kate/DocsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    move-object v3, v2

    invoke-virtual/range {v0 .. v5}, Lcom/perm/kate/session/Session;->getDocs(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 93
    return-void
.end method

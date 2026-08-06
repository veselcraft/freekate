.class Lcom/perm/kate/FaveVideosFragment$1;
.super Ljava/lang/Thread;
.source "FaveVideosFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/FaveVideosFragment;->refreshInThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FaveVideosFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/FaveVideosFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/FaveVideosFragment;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/perm/kate/FaveVideosFragment$1;->this$0:Lcom/perm/kate/FaveVideosFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 53
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    const/16 v1, 0x2710

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/perm/kate/FaveVideosFragment$1;->this$0:Lcom/perm/kate/FaveVideosFragment;

    invoke-static {v3}, Lcom/perm/kate/FaveVideosFragment;->access$000(Lcom/perm/kate/FaveVideosFragment;)Lcom/perm/kate/session/Callback;

    move-result-object v3

    iget-object v4, p0, Lcom/perm/kate/FaveVideosFragment$1;->this$0:Lcom/perm/kate/FaveVideosFragment;

    invoke-virtual {v4}, Lcom/perm/kate/FaveVideosFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/perm/kate/session/Session;->getFaveVideos(Ljava/lang/Integer;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 54
    return-void
.end method

.class Lcom/perm/kate/FavePostsFragment$8;
.super Ljava/lang/Thread;
.source "FavePostsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/FavePostsFragment;->loadMore()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FavePostsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/FavePostsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/FavePostsFragment;

    .prologue
    .line 273
    iput-object p1, p0, Lcom/perm/kate/FavePostsFragment$8;->this$0:Lcom/perm/kate/FavePostsFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 276
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/FavePostsFragment$8;->this$0:Lcom/perm/kate/FavePostsFragment;

    invoke-static {v1}, Lcom/perm/kate/FavePostsFragment;->access$000(Lcom/perm/kate/FavePostsFragment;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/FavePostsFragment$8;->this$0:Lcom/perm/kate/FavePostsFragment;

    iget v2, v2, Lcom/perm/kate/FavePostsFragment;->offset:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/perm/kate/FavePostsFragment$8;->this$0:Lcom/perm/kate/FavePostsFragment;

    invoke-static {v3}, Lcom/perm/kate/FavePostsFragment;->access$600(Lcom/perm/kate/FavePostsFragment;)Lcom/perm/kate/session/Callback;

    move-result-object v3

    iget-object v4, p0, Lcom/perm/kate/FavePostsFragment$8;->this$0:Lcom/perm/kate/FavePostsFragment;

    invoke-virtual {v4}, Lcom/perm/kate/FavePostsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/perm/kate/session/Session;->getFavePosts(Ljava/lang/Integer;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 277
    return-void
.end method

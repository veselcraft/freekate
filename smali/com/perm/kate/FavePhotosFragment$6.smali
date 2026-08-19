.class Lcom/perm/kate/FavePhotosFragment$6;
.super Ljava/lang/Thread;
.source "FavePhotosFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FavePhotosFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/FavePhotosFragment;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/perm/kate/FavePhotosFragment$6;->this$0:Lcom/perm/kate/FavePhotosFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 155
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-nez v0, :cond_0

    return-void

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/FavePhotosFragment$6;->this$0:Lcom/perm/kate/FavePhotosFragment;

    invoke-static {v0}, Lcom/perm/kate/FavePhotosFragment;->access$300(Lcom/perm/kate/FavePhotosFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 158
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v2, p0, Lcom/perm/kate/FavePhotosFragment$6;->this$0:Lcom/perm/kate/FavePhotosFragment;

    invoke-static {v2}, Lcom/perm/kate/FavePhotosFragment;->access$100(Lcom/perm/kate/FavePhotosFragment;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v3, p0, Lcom/perm/kate/FavePhotosFragment$6;->this$0:Lcom/perm/kate/FavePhotosFragment;

    invoke-static {v3}, Lcom/perm/kate/FavePhotosFragment;->access$900(Lcom/perm/kate/FavePhotosFragment;)Lcom/perm/kate/session/Callback;

    move-result-object v3

    iget-object v4, p0, Lcom/perm/kate/FavePhotosFragment$6;->this$0:Lcom/perm/kate/FavePhotosFragment;

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/perm/kate/session/Session;->getFavePhotos(Ljava/lang/Integer;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method

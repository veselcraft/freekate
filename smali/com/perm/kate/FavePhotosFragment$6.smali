.class Lcom/perm/kate/FavePhotosFragment$6;
.super Ljava/lang/Thread;
.source "FavePhotosFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/FavePhotosFragment;->loadMore()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FavePhotosFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/FavePhotosFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/FavePhotosFragment;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/perm/kate/FavePhotosFragment$6;->this$0:Lcom/perm/kate/FavePhotosFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 153
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-nez v1, :cond_0

    .line 157
    :goto_0
    return-void

    .line 155
    :cond_0
    iget-object v1, p0, Lcom/perm/kate/FavePhotosFragment$6;->this$0:Lcom/perm/kate/FavePhotosFragment;

    invoke-static {v1}, Lcom/perm/kate/FavePhotosFragment;->access$300(Lcom/perm/kate/FavePhotosFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 156
    .local v0, "offset":I
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v2, p0, Lcom/perm/kate/FavePhotosFragment$6;->this$0:Lcom/perm/kate/FavePhotosFragment;

    invoke-static {v2}, Lcom/perm/kate/FavePhotosFragment;->access$100(Lcom/perm/kate/FavePhotosFragment;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/perm/kate/FavePhotosFragment$6;->this$0:Lcom/perm/kate/FavePhotosFragment;

    invoke-static {v4}, Lcom/perm/kate/FavePhotosFragment;->access$900(Lcom/perm/kate/FavePhotosFragment;)Lcom/perm/kate/session/Callback;

    move-result-object v4

    iget-object v5, p0, Lcom/perm/kate/FavePhotosFragment$6;->this$0:Lcom/perm/kate/FavePhotosFragment;

    invoke-virtual {v5}, Lcom/perm/kate/FavePhotosFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/perm/kate/session/Session;->getFavePhotos(Ljava/lang/Integer;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_0
.end method

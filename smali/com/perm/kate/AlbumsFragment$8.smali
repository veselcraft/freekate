.class Lcom/perm/kate/AlbumsFragment$8;
.super Ljava/lang/Thread;
.source "AlbumsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/AlbumsFragment;->deleteAlbum(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AlbumsFragment;

.field final synthetic val$aid:J


# direct methods
.method constructor <init>(Lcom/perm/kate/AlbumsFragment;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/AlbumsFragment;

    .prologue
    .line 244
    iput-object p1, p0, Lcom/perm/kate/AlbumsFragment$8;->this$0:Lcom/perm/kate/AlbumsFragment;

    iput-wide p2, p0, Lcom/perm/kate/AlbumsFragment$8;->val$aid:J

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 248
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-wide v2, p0, Lcom/perm/kate/AlbumsFragment$8;->val$aid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/AlbumsFragment$8;->this$0:Lcom/perm/kate/AlbumsFragment;

    invoke-static {v2}, Lcom/perm/kate/AlbumsFragment;->access$1100(Lcom/perm/kate/AlbumsFragment;)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Lcom/perm/kate/AlbumsFragment$8;->this$0:Lcom/perm/kate/AlbumsFragment;

    invoke-static {v3}, Lcom/perm/kate/AlbumsFragment;->access$1200(Lcom/perm/kate/AlbumsFragment;)Lcom/perm/kate/session/Callback;

    move-result-object v3

    iget-object v4, p0, Lcom/perm/kate/AlbumsFragment$8;->this$0:Lcom/perm/kate/AlbumsFragment;

    invoke-virtual {v4}, Lcom/perm/kate/AlbumsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/perm/kate/session/Session;->deleteAlbum(Ljava/lang/Long;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 249
    return-void
.end method

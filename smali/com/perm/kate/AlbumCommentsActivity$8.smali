.class Lcom/perm/kate/AlbumCommentsActivity$8;
.super Ljava/lang/Thread;
.source "AlbumCommentsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/AlbumCommentsActivity;->refreshInThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AlbumCommentsActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/AlbumCommentsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/AlbumCommentsActivity;

    .prologue
    .line 216
    iput-object p1, p0, Lcom/perm/kate/AlbumCommentsActivity$8;->this$0:Lcom/perm/kate/AlbumCommentsActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 219
    iget-object v0, p0, Lcom/perm/kate/AlbumCommentsActivity$8;->this$0:Lcom/perm/kate/AlbumCommentsActivity;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/perm/kate/AlbumCommentsActivity;->showProgressBar(Z)V

    .line 220
    iget-object v0, p0, Lcom/perm/kate/AlbumCommentsActivity$8;->this$0:Lcom/perm/kate/AlbumCommentsActivity;

    invoke-static {v0}, Lcom/perm/kate/AlbumCommentsActivity;->access$700(Lcom/perm/kate/AlbumCommentsActivity;)J

    move-result-wide v2

    const-wide/16 v4, -0x3e8

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/perm/kate/AlbumCommentsActivity$8;->this$0:Lcom/perm/kate/AlbumCommentsActivity;

    invoke-static {v0}, Lcom/perm/kate/AlbumCommentsActivity;->access$700(Lcom/perm/kate/AlbumCommentsActivity;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 221
    .local v1, "_album_id":Ljava/lang/Long;
    :goto_0
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v2, p0, Lcom/perm/kate/AlbumCommentsActivity$8;->this$0:Lcom/perm/kate/AlbumCommentsActivity;

    invoke-static {v2}, Lcom/perm/kate/AlbumCommentsActivity;->access$400(Lcom/perm/kate/AlbumCommentsActivity;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/perm/kate/AlbumCommentsActivity$8;->this$0:Lcom/perm/kate/AlbumCommentsActivity;

    invoke-static {v4}, Lcom/perm/kate/AlbumCommentsActivity;->access$800(Lcom/perm/kate/AlbumCommentsActivity;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/perm/kate/AlbumCommentsActivity$8;->this$0:Lcom/perm/kate/AlbumCommentsActivity;

    invoke-static {v5}, Lcom/perm/kate/AlbumCommentsActivity;->access$900(Lcom/perm/kate/AlbumCommentsActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v5

    iget-object v6, p0, Lcom/perm/kate/AlbumCommentsActivity$8;->this$0:Lcom/perm/kate/AlbumCommentsActivity;

    invoke-virtual/range {v0 .. v6}, Lcom/perm/kate/session/Session;->getAlbumComments(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 222
    return-void

    .line 220
    .end local v1    # "_album_id":Ljava/lang/Long;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

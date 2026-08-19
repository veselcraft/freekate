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

    .line 216
    iput-object p1, p0, Lcom/perm/kate/AlbumCommentsActivity$8;->this$0:Lcom/perm/kate/AlbumCommentsActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 219
    iget-object v0, p0, Lcom/perm/kate/AlbumCommentsActivity$8;->this$0:Lcom/perm/kate/AlbumCommentsActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 220
    iget-object v0, p0, Lcom/perm/kate/AlbumCommentsActivity$8;->this$0:Lcom/perm/kate/AlbumCommentsActivity;

    invoke-static {v0}, Lcom/perm/kate/AlbumCommentsActivity;->access$700(Lcom/perm/kate/AlbumCommentsActivity;)J

    move-result-wide v0

    const-wide/16 v2, -0x3e8

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-object v0, p0, Lcom/perm/kate/AlbumCommentsActivity$8;->this$0:Lcom/perm/kate/AlbumCommentsActivity;

    invoke-static {v0}, Lcom/perm/kate/AlbumCommentsActivity;->access$700(Lcom/perm/kate/AlbumCommentsActivity;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v2, v0

    .line 221
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v0, p0, Lcom/perm/kate/AlbumCommentsActivity$8;->this$0:Lcom/perm/kate/AlbumCommentsActivity;

    invoke-static {v0}, Lcom/perm/kate/AlbumCommentsActivity;->access$400(Lcom/perm/kate/AlbumCommentsActivity;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v0, p0, Lcom/perm/kate/AlbumCommentsActivity$8;->this$0:Lcom/perm/kate/AlbumCommentsActivity;

    invoke-static {v0}, Lcom/perm/kate/AlbumCommentsActivity;->access$800(Lcom/perm/kate/AlbumCommentsActivity;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v0, p0, Lcom/perm/kate/AlbumCommentsActivity$8;->this$0:Lcom/perm/kate/AlbumCommentsActivity;

    invoke-static {v0}, Lcom/perm/kate/AlbumCommentsActivity;->access$900(Lcom/perm/kate/AlbumCommentsActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v6

    iget-object v7, p0, Lcom/perm/kate/AlbumCommentsActivity$8;->this$0:Lcom/perm/kate/AlbumCommentsActivity;

    invoke-virtual/range {v1 .. v7}, Lcom/perm/kate/session/Session;->getAlbumComments(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method

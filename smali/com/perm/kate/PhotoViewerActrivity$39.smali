.class Lcom/perm/kate/PhotoViewerActrivity$39;
.super Lcom/perm/kate/session/Callback;
.source "PhotoViewerActrivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/PhotoViewerActrivity;->moveToAlbum(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/PhotoViewerActrivity;

.field final synthetic val$target_album_id:J


# direct methods
.method constructor <init>(Lcom/perm/kate/PhotoViewerActrivity;Landroid/app/Activity;J)V
    .locals 1
    .param p1, "this$0"    # Lcom/perm/kate/PhotoViewerActrivity;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1614
    iput-object p1, p0, Lcom/perm/kate/PhotoViewerActrivity$39;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    iput-wide p3, p0, Lcom/perm/kate/PhotoViewerActrivity$39;->val$target_album_id:J

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public ready(Ljava/lang/Object;)V
    .locals 10
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 1617
    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    .line 1618
    .local v0, "result":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1621
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v2, p0, Lcom/perm/kate/PhotoViewerActrivity$39;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-static {v2}, Lcom/perm/kate/PhotoViewerActrivity;->access$800(Lcom/perm/kate/PhotoViewerActrivity;)Lcom/perm/kate/api/Photo;

    move-result-object v2

    iget-wide v2, v2, Lcom/perm/kate/api/Photo;->aid:J

    iget-object v4, p0, Lcom/perm/kate/PhotoViewerActrivity$39;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    iget-wide v4, v4, Lcom/perm/kate/PhotoViewerActrivity;->owner_id:J

    iget-object v6, p0, Lcom/perm/kate/PhotoViewerActrivity$39;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-static {v6}, Lcom/perm/kate/PhotoViewerActrivity;->access$800(Lcom/perm/kate/PhotoViewerActrivity;)Lcom/perm/kate/api/Photo;

    move-result-object v6

    iget-wide v6, v6, Lcom/perm/kate/api/Photo;->pid:J

    iget-object v8, p0, Lcom/perm/kate/PhotoViewerActrivity$39;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-static {v8}, Lcom/perm/kate/PhotoViewerActrivity;->access$800(Lcom/perm/kate/PhotoViewerActrivity;)Lcom/perm/kate/api/Photo;

    move-result-object v8

    iget-object v8, v8, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual/range {v1 .. v9}, Lcom/perm/kate/db/DataHelper;->deleteAlbumPhoto(JJJJ)Z

    .line 1622
    iget-object v1, p0, Lcom/perm/kate/PhotoViewerActrivity$39;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-static {v1}, Lcom/perm/kate/PhotoViewerActrivity;->access$800(Lcom/perm/kate/PhotoViewerActrivity;)Lcom/perm/kate/api/Photo;

    move-result-object v1

    iget-wide v2, p0, Lcom/perm/kate/PhotoViewerActrivity$39;->val$target_album_id:J

    iput-wide v2, v1, Lcom/perm/kate/api/Photo;->aid:J

    .line 1624
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v2, p0, Lcom/perm/kate/PhotoViewerActrivity$39;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-static {v2}, Lcom/perm/kate/PhotoViewerActrivity;->access$800(Lcom/perm/kate/PhotoViewerActrivity;)Lcom/perm/kate/api/Photo;

    move-result-object v2

    iget-wide v2, v2, Lcom/perm/kate/api/Photo;->pid:J

    iget-object v4, p0, Lcom/perm/kate/PhotoViewerActrivity$39;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-static {v4}, Lcom/perm/kate/PhotoViewerActrivity;->access$800(Lcom/perm/kate/PhotoViewerActrivity;)Lcom/perm/kate/api/Photo;

    move-result-object v4

    iget-object v4, v4, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iget-wide v6, p0, Lcom/perm/kate/PhotoViewerActrivity$39;->val$target_album_id:J

    invoke-virtual/range {v1 .. v7}, Lcom/perm/kate/db/DataHelper;->updatePhotoAlbumId(JJJ)Z

    .line 1626
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v2, p0, Lcom/perm/kate/PhotoViewerActrivity$39;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-static {v2}, Lcom/perm/kate/PhotoViewerActrivity;->access$800(Lcom/perm/kate/PhotoViewerActrivity;)Lcom/perm/kate/api/Photo;

    move-result-object v2

    iget-wide v2, v2, Lcom/perm/kate/api/Photo;->pid:J

    iget-wide v4, p0, Lcom/perm/kate/PhotoViewerActrivity$39;->val$target_album_id:J

    iget-object v6, p0, Lcom/perm/kate/PhotoViewerActrivity$39;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    iget-wide v6, v6, Lcom/perm/kate/PhotoViewerActrivity;->owner_id:J

    iget-object v8, p0, Lcom/perm/kate/PhotoViewerActrivity$39;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-static {v8}, Lcom/perm/kate/PhotoViewerActrivity;->access$800(Lcom/perm/kate/PhotoViewerActrivity;)Lcom/perm/kate/api/Photo;

    move-result-object v8

    iget-object v8, v8, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual/range {v1 .. v9}, Lcom/perm/kate/db/DataHelper;->createAlbumPhoto(JJJJ)J

    .line 1627
    iget-object v1, p0, Lcom/perm/kate/PhotoViewerActrivity$39;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    const v2, 0x7f0704d8

    invoke-virtual {v1, v2}, Lcom/perm/kate/PhotoViewerActrivity;->displayToast(I)V

    .line 1629
    :cond_0
    return-void
.end method

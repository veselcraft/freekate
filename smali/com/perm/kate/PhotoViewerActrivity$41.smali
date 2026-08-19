.class Lcom/perm/kate/PhotoViewerActrivity$41;
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
    .locals 0

    .line 1795
    iput-object p1, p0, Lcom/perm/kate/PhotoViewerActrivity$41;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    iput-wide p3, p0, Lcom/perm/kate/PhotoViewerActrivity$41;->val$target_album_id:J

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public ready(Ljava/lang/Object;)V
    .locals 20

    move-object/from16 v0, p0

    .line 1798
    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 1799
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1802
    sget-object v3, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v1, v0, Lcom/perm/kate/PhotoViewerActrivity$41;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-static {v1}, Lcom/perm/kate/PhotoViewerActrivity;->access$000(Lcom/perm/kate/PhotoViewerActrivity;)Lcom/perm/kate/api/Photo;

    move-result-object v1

    iget-wide v4, v1, Lcom/perm/kate/api/Photo;->aid:J

    iget-object v1, v0, Lcom/perm/kate/PhotoViewerActrivity$41;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    iget-wide v6, v1, Lcom/perm/kate/PhotoViewerActrivity;->owner_id:J

    invoke-static {v1}, Lcom/perm/kate/PhotoViewerActrivity;->access$000(Lcom/perm/kate/PhotoViewerActrivity;)Lcom/perm/kate/api/Photo;

    move-result-object v1

    iget-wide v8, v1, Lcom/perm/kate/api/Photo;->pid:J

    iget-object v1, v0, Lcom/perm/kate/PhotoViewerActrivity$41;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-static {v1}, Lcom/perm/kate/PhotoViewerActrivity;->access$000(Lcom/perm/kate/PhotoViewerActrivity;)Lcom/perm/kate/api/Photo;

    move-result-object v1

    iget-object v1, v1, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-virtual/range {v3 .. v11}, Lcom/perm/kate/db/DataHelper;->deleteAlbumPhoto(JJJJ)Z

    .line 1803
    iget-object v1, v0, Lcom/perm/kate/PhotoViewerActrivity$41;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-static {v1}, Lcom/perm/kate/PhotoViewerActrivity;->access$000(Lcom/perm/kate/PhotoViewerActrivity;)Lcom/perm/kate/api/Photo;

    move-result-object v1

    iget-wide v2, v0, Lcom/perm/kate/PhotoViewerActrivity$41;->val$target_album_id:J

    iput-wide v2, v1, Lcom/perm/kate/api/Photo;->aid:J

    .line 1805
    sget-object v4, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v1, v0, Lcom/perm/kate/PhotoViewerActrivity$41;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-static {v1}, Lcom/perm/kate/PhotoViewerActrivity;->access$000(Lcom/perm/kate/PhotoViewerActrivity;)Lcom/perm/kate/api/Photo;

    move-result-object v1

    iget-wide v5, v1, Lcom/perm/kate/api/Photo;->pid:J

    iget-object v1, v0, Lcom/perm/kate/PhotoViewerActrivity$41;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-static {v1}, Lcom/perm/kate/PhotoViewerActrivity;->access$000(Lcom/perm/kate/PhotoViewerActrivity;)Lcom/perm/kate/api/Photo;

    move-result-object v1

    iget-object v1, v1, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    iget-wide v9, v0, Lcom/perm/kate/PhotoViewerActrivity$41;->val$target_album_id:J

    invoke-virtual/range {v4 .. v10}, Lcom/perm/kate/db/DataHelper;->updatePhotoAlbumId(JJJ)Z

    .line 1807
    sget-object v11, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v1, v0, Lcom/perm/kate/PhotoViewerActrivity$41;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-static {v1}, Lcom/perm/kate/PhotoViewerActrivity;->access$000(Lcom/perm/kate/PhotoViewerActrivity;)Lcom/perm/kate/api/Photo;

    move-result-object v1

    iget-wide v12, v1, Lcom/perm/kate/api/Photo;->pid:J

    iget-wide v14, v0, Lcom/perm/kate/PhotoViewerActrivity$41;->val$target_album_id:J

    iget-object v1, v0, Lcom/perm/kate/PhotoViewerActrivity$41;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    iget-wide v2, v1, Lcom/perm/kate/PhotoViewerActrivity;->owner_id:J

    invoke-static {v1}, Lcom/perm/kate/PhotoViewerActrivity;->access$000(Lcom/perm/kate/PhotoViewerActrivity;)Lcom/perm/kate/api/Photo;

    move-result-object v1

    iget-object v1, v1, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    move-wide/from16 v16, v2

    invoke-virtual/range {v11 .. v19}, Lcom/perm/kate/db/DataHelper;->createAlbumPhoto(JJJJ)J

    .line 1808
    iget-object v1, v0, Lcom/perm/kate/PhotoViewerActrivity$41;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    const v2, 0x7f0f055c

    invoke-virtual {v1, v2}, Lcom/perm/kate/BaseActivity;->displayToast(I)V

    :cond_0
    return-void
.end method

.class Lcom/perm/kate/PhotoViewerActrivity$21;
.super Lcom/perm/kate/session/Callback;
.source "PhotoViewerActrivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/PhotoViewerActrivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/PhotoViewerActrivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/PhotoViewerActrivity;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/PhotoViewerActrivity;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1113
    iput-object p1, p0, Lcom/perm/kate/PhotoViewerActrivity$21;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public ready(Ljava/lang/Object;)V
    .locals 18
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 1116
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v2}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 1117
    .local v8, "account_id":J
    sget-object v3, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/PhotoViewerActrivity$21;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-static {v2}, Lcom/perm/kate/PhotoViewerActrivity;->access$800(Lcom/perm/kate/PhotoViewerActrivity;)Lcom/perm/kate/api/Photo;

    move-result-object v2

    iget-object v2, v2, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/PhotoViewerActrivity$21;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-static {v2}, Lcom/perm/kate/PhotoViewerActrivity;->access$800(Lcom/perm/kate/PhotoViewerActrivity;)Lcom/perm/kate/api/Photo;

    move-result-object v2

    iget-wide v6, v2, Lcom/perm/kate/api/Photo;->pid:J

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual/range {v3 .. v11}, Lcom/perm/kate/db/DataHelper;->createOrUpdateWallLike(JJJZI)V

    .line 1118
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/PhotoViewerActrivity$21;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-static {v2}, Lcom/perm/kate/PhotoViewerActrivity;->access$800(Lcom/perm/kate/PhotoViewerActrivity;)Lcom/perm/kate/api/Photo;

    move-result-object v2

    iget-object v2, v2, Lcom/perm/kate/api/Photo;->like_count:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 1119
    sget-object v11, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/PhotoViewerActrivity$21;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-static {v2}, Lcom/perm/kate/PhotoViewerActrivity;->access$800(Lcom/perm/kate/PhotoViewerActrivity;)Lcom/perm/kate/api/Photo;

    move-result-object v2

    iget-wide v12, v2, Lcom/perm/kate/api/Photo;->pid:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/PhotoViewerActrivity$21;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-static {v2}, Lcom/perm/kate/PhotoViewerActrivity;->access$800(Lcom/perm/kate/PhotoViewerActrivity;)Lcom/perm/kate/api/Photo;

    move-result-object v2

    iget-object v2, v2, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/PhotoViewerActrivity$21;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-static {v2}, Lcom/perm/kate/PhotoViewerActrivity;->access$800(Lcom/perm/kate/PhotoViewerActrivity;)Lcom/perm/kate/api/Photo;

    move-result-object v2

    iget-object v2, v2, Lcom/perm/kate/api/Photo;->like_count:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v0, v2

    move-wide/from16 v16, v0

    invoke-virtual/range {v11 .. v17}, Lcom/perm/kate/db/DataHelper;->updatePhotoLikes(JJJ)Z

    .line 1120
    :cond_0
    return-void
.end method

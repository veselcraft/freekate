.class Lcom/perm/utils/VideoAlbumsHelper$2;
.super Ljava/lang/Thread;
.source "VideoAlbumsHelper.java"


# instance fields
.field final synthetic val$activity:Lcom/perm/kate/BaseActivity;

.field final synthetic val$callback:Lcom/perm/kate/session/Callback;

.field final synthetic val$offset:I

.field final synthetic val$owner_id:J


# direct methods
.method constructor <init>(Lcom/perm/kate/BaseActivity;JILcom/perm/kate/session/Callback;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/perm/utils/VideoAlbumsHelper$2;->val$activity:Lcom/perm/kate/BaseActivity;

    iput-wide p2, p0, Lcom/perm/utils/VideoAlbumsHelper$2;->val$owner_id:J

    iput p4, p0, Lcom/perm/utils/VideoAlbumsHelper$2;->val$offset:I

    iput-object p5, p0, Lcom/perm/utils/VideoAlbumsHelper$2;->val$callback:Lcom/perm/kate/session/Callback;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 68
    iget-object v0, p0, Lcom/perm/utils/VideoAlbumsHelper$2;->val$activity:Lcom/perm/kate/BaseActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 70
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-wide v3, p0, Lcom/perm/utils/VideoAlbumsHelper$2;->val$owner_id:J

    iget v0, p0, Lcom/perm/utils/VideoAlbumsHelper$2;->val$offset:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget v0, Lcom/perm/utils/VideoAlbumsHelper;->page_size:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v8, p0, Lcom/perm/utils/VideoAlbumsHelper$2;->val$callback:Lcom/perm/kate/session/Callback;

    iget-object v9, p0, Lcom/perm/utils/VideoAlbumsHelper$2;->val$activity:Lcom/perm/kate/BaseActivity;

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v9}, Lcom/perm/kate/session/Session;->getVideoAlbums(JLjava/lang/Integer;Ljava/lang/Integer;ZLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method

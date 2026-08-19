.class Lcom/perm/utils/VideoAlbumsHelper$10$1;
.super Ljava/lang/Object;
.source "VideoAlbumsHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/perm/utils/VideoAlbumsHelper$10;


# direct methods
.method constructor <init>(Lcom/perm/utils/VideoAlbumsHelper$10;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/perm/utils/VideoAlbumsHelper$10$1;->this$0:Lcom/perm/utils/VideoAlbumsHelper$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 214
    iget-object v0, p0, Lcom/perm/utils/VideoAlbumsHelper$10$1;->this$0:Lcom/perm/utils/VideoAlbumsHelper$10;

    iget-object v1, v0, Lcom/perm/utils/VideoAlbumsHelper$10;->val$errorCallback:Lcom/perm/utils/VideoAlbumsHelper$ErrorCallback;

    iget-wide v2, v0, Lcom/perm/utils/VideoAlbumsHelper$10;->val$album_id:J

    invoke-interface {v1, v2, v3}, Lcom/perm/utils/VideoAlbumsHelper$ErrorCallback;->onError(J)V

    return-void
.end method

.class Lcom/perm/utils/VideoAlbumsHelper$10$1;
.super Ljava/lang/Object;
.source "VideoAlbumsHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/utils/VideoAlbumsHelper$10;->error(Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/utils/VideoAlbumsHelper$10;


# direct methods
.method constructor <init>(Lcom/perm/utils/VideoAlbumsHelper$10;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/utils/VideoAlbumsHelper$10;

    .prologue
    .line 212
    iput-object p1, p0, Lcom/perm/utils/VideoAlbumsHelper$10$1;->this$0:Lcom/perm/utils/VideoAlbumsHelper$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 215
    iget-object v0, p0, Lcom/perm/utils/VideoAlbumsHelper$10$1;->this$0:Lcom/perm/utils/VideoAlbumsHelper$10;

    iget-object v0, v0, Lcom/perm/utils/VideoAlbumsHelper$10;->val$errorCallback:Lcom/perm/utils/VideoAlbumsHelper$ErrorCallback;

    iget-object v1, p0, Lcom/perm/utils/VideoAlbumsHelper$10$1;->this$0:Lcom/perm/utils/VideoAlbumsHelper$10;

    iget-wide v2, v1, Lcom/perm/utils/VideoAlbumsHelper$10;->val$album_id:J

    invoke-interface {v0, v2, v3}, Lcom/perm/utils/VideoAlbumsHelper$ErrorCallback;->onError(J)V

    .line 216
    return-void
.end method

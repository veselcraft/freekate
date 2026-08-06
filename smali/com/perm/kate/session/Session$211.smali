.class Lcom/perm/kate/session/Session$211;
.super Lcom/perm/kate/session/Command;
.source "Session.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/session/Session;->videoAddToAlbum(Ljava/lang/Long;JJJLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/session/Session;

.field final synthetic val$album_id:J

.field final synthetic val$owner_id:J

.field final synthetic val$target_id:Ljava/lang/Long;

.field final synthetic val$video_id:J


# direct methods
.method constructor <init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;JJJ)V
    .locals 1
    .param p1, "this$0"    # Lcom/perm/kate/session/Session;
    .param p2, "callback"    # Lcom/perm/kate/session/Callback;
    .param p3, "activity"    # Landroid/app/Activity;

    .prologue
    .line 2125
    iput-object p1, p0, Lcom/perm/kate/session/Session$211;->this$0:Lcom/perm/kate/session/Session;

    iput-object p4, p0, Lcom/perm/kate/session/Session$211;->val$target_id:Ljava/lang/Long;

    iput-wide p5, p0, Lcom/perm/kate/session/Session$211;->val$album_id:J

    iput-wide p7, p0, Lcom/perm/kate/session/Session$211;->val$owner_id:J

    iput-wide p9, p0, Lcom/perm/kate/session/Session$211;->val$video_id:J

    invoke-direct {p0, p2, p3}, Lcom/perm/kate/session/Command;-><init>(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 2128
    iget-object v0, p0, Lcom/perm/kate/session/Session$211;->this$0:Lcom/perm/kate/session/Session;

    iget-object v0, v0, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    iget-object v1, p0, Lcom/perm/kate/session/Session$211;->val$target_id:Ljava/lang/Long;

    iget-wide v2, p0, Lcom/perm/kate/session/Session$211;->val$album_id:J

    iget-wide v4, p0, Lcom/perm/kate/session/Session$211;->val$owner_id:J

    iget-wide v6, p0, Lcom/perm/kate/session/Session$211;->val$video_id:J

    invoke-virtual/range {v0 .. v7}, Lcom/perm/kate/api/Api;->videoAddToAlbum(Ljava/lang/Long;JJJ)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/session/Session$211;->res:Ljava/lang/Object;

    .line 2129
    return-void
.end method

.class Lcom/perm/kate/session/Session$150;
.super Lcom/perm/kate/session/Command;
.source "Session.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/session/Session;->moveToAudioAlbum(Ljava/util/Collection;JLjava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/session/Session;

.field final synthetic val$aids:Ljava/util/Collection;

.field final synthetic val$album_id:J

.field final synthetic val$gid:Ljava/lang/Long;


# direct methods
.method constructor <init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/util/Collection;JLjava/lang/Long;)V
    .locals 1
    .param p1, "this$0"    # Lcom/perm/kate/session/Session;
    .param p2, "callback"    # Lcom/perm/kate/session/Callback;
    .param p3, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1575
    iput-object p1, p0, Lcom/perm/kate/session/Session$150;->this$0:Lcom/perm/kate/session/Session;

    iput-object p4, p0, Lcom/perm/kate/session/Session$150;->val$aids:Ljava/util/Collection;

    iput-wide p5, p0, Lcom/perm/kate/session/Session$150;->val$album_id:J

    iput-object p7, p0, Lcom/perm/kate/session/Session$150;->val$gid:Ljava/lang/Long;

    invoke-direct {p0, p2, p3}, Lcom/perm/kate/session/Command;-><init>(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1578
    iget-object v0, p0, Lcom/perm/kate/session/Session$150;->this$0:Lcom/perm/kate/session/Session;

    iget-object v0, v0, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    iget-object v1, p0, Lcom/perm/kate/session/Session$150;->val$aids:Ljava/util/Collection;

    iget-wide v2, p0, Lcom/perm/kate/session/Session$150;->val$album_id:J

    iget-object v4, p0, Lcom/perm/kate/session/Session$150;->val$gid:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/perm/kate/api/Api;->moveToAudioAlbum(Ljava/util/Collection;JLjava/lang/Long;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/session/Session$150;->res:Ljava/lang/Object;

    .line 1579
    return-void
.end method

.class Lcom/perm/kate/session/Session$148;
.super Lcom/perm/kate/session/Command;
.source "Session.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/session/Session;->editAudioAlbum(Ljava/lang/String;JLjava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/session/Session;

.field final synthetic val$album_id:J

.field final synthetic val$gid:Ljava/lang/Long;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;JLjava/lang/Long;)V
    .locals 1
    .param p1, "this$0"    # Lcom/perm/kate/session/Session;
    .param p2, "callback"    # Lcom/perm/kate/session/Callback;
    .param p3, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1557
    iput-object p1, p0, Lcom/perm/kate/session/Session$148;->this$0:Lcom/perm/kate/session/Session;

    iput-object p4, p0, Lcom/perm/kate/session/Session$148;->val$title:Ljava/lang/String;

    iput-wide p5, p0, Lcom/perm/kate/session/Session$148;->val$album_id:J

    iput-object p7, p0, Lcom/perm/kate/session/Session$148;->val$gid:Ljava/lang/Long;

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
    .line 1560
    iget-object v0, p0, Lcom/perm/kate/session/Session$148;->this$0:Lcom/perm/kate/session/Session;

    iget-object v0, v0, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    iget-object v1, p0, Lcom/perm/kate/session/Session$148;->val$title:Ljava/lang/String;

    iget-wide v2, p0, Lcom/perm/kate/session/Session$148;->val$album_id:J

    iget-object v4, p0, Lcom/perm/kate/session/Session$148;->val$gid:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/perm/kate/api/Api;->editAudioAlbum(Ljava/lang/String;JLjava/lang/Long;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/session/Session$148;->res:Ljava/lang/Object;

    .line 1561
    return-void
.end method

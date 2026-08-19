.class Lcom/perm/kate/SinglePhotoViewer$6;
.super Ljava/lang/Thread;
.source "SinglePhotoViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/SinglePhotoViewer;->getPhotoTags()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/SinglePhotoViewer;


# direct methods
.method constructor <init>(Lcom/perm/kate/SinglePhotoViewer;)V
    .locals 0

    .line 534
    iput-object p1, p0, Lcom/perm/kate/SinglePhotoViewer$6;->this$0:Lcom/perm/kate/SinglePhotoViewer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 538
    iget-object v0, p0, Lcom/perm/kate/SinglePhotoViewer$6;->this$0:Lcom/perm/kate/SinglePhotoViewer;

    invoke-static {v0}, Lcom/perm/kate/SinglePhotoViewer;->access$1900(Lcom/perm/kate/SinglePhotoViewer;)Lcom/perm/kate/api/Photo;

    move-result-object v0

    iget-object v0, v0, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 539
    iget-object v0, p0, Lcom/perm/kate/SinglePhotoViewer$6;->this$0:Lcom/perm/kate/SinglePhotoViewer;

    invoke-static {v0}, Lcom/perm/kate/SinglePhotoViewer;->access$1900(Lcom/perm/kate/SinglePhotoViewer;)Lcom/perm/kate/api/Photo;

    move-result-object v0

    iget-object v0, v0, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 540
    :goto_0
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v2, p0, Lcom/perm/kate/SinglePhotoViewer$6;->this$0:Lcom/perm/kate/SinglePhotoViewer;

    invoke-static {v2}, Lcom/perm/kate/SinglePhotoViewer;->access$1900(Lcom/perm/kate/SinglePhotoViewer;)Lcom/perm/kate/api/Photo;

    move-result-object v2

    iget-wide v2, v2, Lcom/perm/kate/api/Photo;->pid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Lcom/perm/kate/SinglePhotoViewer$6;->this$0:Lcom/perm/kate/SinglePhotoViewer;

    invoke-static {v3}, Lcom/perm/kate/SinglePhotoViewer;->access$2000(Lcom/perm/kate/SinglePhotoViewer;)Lcom/perm/kate/session/Callback;

    move-result-object v3

    iget-object v4, p0, Lcom/perm/kate/SinglePhotoViewer$6;->this$0:Lcom/perm/kate/SinglePhotoViewer;

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/perm/kate/session/Session;->getPhotoTagsById(Ljava/lang/Long;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method

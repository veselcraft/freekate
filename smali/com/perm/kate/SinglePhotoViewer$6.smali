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
    .param p1, "this$0"    # Lcom/perm/kate/SinglePhotoViewer;

    .prologue
    .line 532
    iput-object p1, p0, Lcom/perm/kate/SinglePhotoViewer$6;->this$0:Lcom/perm/kate/SinglePhotoViewer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 535
    const/4 v0, 0x0

    .line 536
    .local v0, "owner_id":Ljava/lang/Long;
    iget-object v1, p0, Lcom/perm/kate/SinglePhotoViewer$6;->this$0:Lcom/perm/kate/SinglePhotoViewer;

    invoke-static {v1}, Lcom/perm/kate/SinglePhotoViewer;->access$1900(Lcom/perm/kate/SinglePhotoViewer;)Lcom/perm/kate/api/Photo;

    move-result-object v1

    iget-object v1, v1, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 537
    iget-object v1, p0, Lcom/perm/kate/SinglePhotoViewer$6;->this$0:Lcom/perm/kate/SinglePhotoViewer;

    invoke-static {v1}, Lcom/perm/kate/SinglePhotoViewer;->access$1900(Lcom/perm/kate/SinglePhotoViewer;)Lcom/perm/kate/api/Photo;

    move-result-object v1

    iget-object v1, v1, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 538
    :cond_0
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

    .line 539
    return-void
.end method

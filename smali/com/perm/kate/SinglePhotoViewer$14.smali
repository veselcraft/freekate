.class Lcom/perm/kate/SinglePhotoViewer$14;
.super Ljava/lang/Thread;
.source "SinglePhotoViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/SinglePhotoViewer;->confirmPhotoTag(Lcom/perm/kate/api/Photo;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/SinglePhotoViewer;

.field final synthetic val$confirm:Z

.field final synthetic val$photo:Lcom/perm/kate/api/Photo;


# direct methods
.method constructor <init>(Lcom/perm/kate/SinglePhotoViewer;ZLcom/perm/kate/api/Photo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/SinglePhotoViewer;

    .prologue
    .line 684
    iput-object p1, p0, Lcom/perm/kate/SinglePhotoViewer$14;->this$0:Lcom/perm/kate/SinglePhotoViewer;

    iput-boolean p2, p0, Lcom/perm/kate/SinglePhotoViewer$14;->val$confirm:Z

    iput-object p3, p0, Lcom/perm/kate/SinglePhotoViewer$14;->val$photo:Lcom/perm/kate/api/Photo;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 687
    iget-boolean v0, p0, Lcom/perm/kate/SinglePhotoViewer$14;->val$confirm:Z

    if-eqz v0, :cond_0

    .line 688
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/SinglePhotoViewer$14;->val$photo:Lcom/perm/kate/api/Photo;

    iget-object v1, v1, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/SinglePhotoViewer$14;->val$photo:Lcom/perm/kate/api/Photo;

    iget-wide v2, v2, Lcom/perm/kate/api/Photo;->pid:J

    iget-object v4, p0, Lcom/perm/kate/SinglePhotoViewer$14;->this$0:Lcom/perm/kate/SinglePhotoViewer;

    invoke-static {v4}, Lcom/perm/kate/SinglePhotoViewer;->access$3000(Lcom/perm/kate/SinglePhotoViewer;)J

    move-result-wide v4

    iget-object v6, p0, Lcom/perm/kate/SinglePhotoViewer$14;->this$0:Lcom/perm/kate/SinglePhotoViewer;

    invoke-static {v6}, Lcom/perm/kate/SinglePhotoViewer;->access$3100(Lcom/perm/kate/SinglePhotoViewer;)Lcom/perm/kate/session/Callback;

    move-result-object v6

    iget-object v7, p0, Lcom/perm/kate/SinglePhotoViewer$14;->this$0:Lcom/perm/kate/SinglePhotoViewer;

    invoke-virtual/range {v0 .. v7}, Lcom/perm/kate/session/Session;->confirmPhotoTag(Ljava/lang/Long;JJLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 691
    :goto_0
    return-void

    .line 690
    :cond_0
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/SinglePhotoViewer$14;->val$photo:Lcom/perm/kate/api/Photo;

    iget-object v1, v1, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/SinglePhotoViewer$14;->val$photo:Lcom/perm/kate/api/Photo;

    iget-wide v2, v2, Lcom/perm/kate/api/Photo;->pid:J

    iget-object v4, p0, Lcom/perm/kate/SinglePhotoViewer$14;->this$0:Lcom/perm/kate/SinglePhotoViewer;

    invoke-static {v4}, Lcom/perm/kate/SinglePhotoViewer;->access$3000(Lcom/perm/kate/SinglePhotoViewer;)J

    move-result-wide v4

    iget-object v6, p0, Lcom/perm/kate/SinglePhotoViewer$14;->this$0:Lcom/perm/kate/SinglePhotoViewer;

    invoke-static {v6}, Lcom/perm/kate/SinglePhotoViewer;->access$3100(Lcom/perm/kate/SinglePhotoViewer;)Lcom/perm/kate/session/Callback;

    move-result-object v6

    iget-object v7, p0, Lcom/perm/kate/SinglePhotoViewer$14;->this$0:Lcom/perm/kate/SinglePhotoViewer;

    invoke-virtual/range {v0 .. v7}, Lcom/perm/kate/session/Session;->removePhotoTag(Ljava/lang/Long;JJLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_0
.end method

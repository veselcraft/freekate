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

    .line 687
    iput-object p1, p0, Lcom/perm/kate/SinglePhotoViewer$14;->this$0:Lcom/perm/kate/SinglePhotoViewer;

    iput-boolean p2, p0, Lcom/perm/kate/SinglePhotoViewer$14;->val$confirm:Z

    iput-object p3, p0, Lcom/perm/kate/SinglePhotoViewer$14;->val$photo:Lcom/perm/kate/api/Photo;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    move-object/from16 v0, p0

    .line 690
    iget-boolean v1, v0, Lcom/perm/kate/SinglePhotoViewer$14;->val$confirm:Z

    if-eqz v1, :cond_0

    .line 691
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, v0, Lcom/perm/kate/SinglePhotoViewer$14;->val$photo:Lcom/perm/kate/api/Photo;

    iget-object v1, v1, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v1, v0, Lcom/perm/kate/SinglePhotoViewer$14;->val$photo:Lcom/perm/kate/api/Photo;

    iget-wide v4, v1, Lcom/perm/kate/api/Photo;->pid:J

    iget-object v1, v0, Lcom/perm/kate/SinglePhotoViewer$14;->this$0:Lcom/perm/kate/SinglePhotoViewer;

    invoke-static {v1}, Lcom/perm/kate/SinglePhotoViewer;->access$3000(Lcom/perm/kate/SinglePhotoViewer;)J

    move-result-wide v6

    iget-object v1, v0, Lcom/perm/kate/SinglePhotoViewer$14;->this$0:Lcom/perm/kate/SinglePhotoViewer;

    invoke-static {v1}, Lcom/perm/kate/SinglePhotoViewer;->access$3100(Lcom/perm/kate/SinglePhotoViewer;)Lcom/perm/kate/session/Callback;

    move-result-object v8

    iget-object v9, v0, Lcom/perm/kate/SinglePhotoViewer$14;->this$0:Lcom/perm/kate/SinglePhotoViewer;

    invoke-virtual/range {v2 .. v9}, Lcom/perm/kate/session/Session;->confirmPhotoTag(Ljava/lang/Long;JJLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_0

    .line 693
    :cond_0
    sget-object v10, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, v0, Lcom/perm/kate/SinglePhotoViewer$14;->val$photo:Lcom/perm/kate/api/Photo;

    iget-object v1, v1, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    iget-object v1, v0, Lcom/perm/kate/SinglePhotoViewer$14;->val$photo:Lcom/perm/kate/api/Photo;

    iget-wide v12, v1, Lcom/perm/kate/api/Photo;->pid:J

    iget-object v1, v0, Lcom/perm/kate/SinglePhotoViewer$14;->this$0:Lcom/perm/kate/SinglePhotoViewer;

    invoke-static {v1}, Lcom/perm/kate/SinglePhotoViewer;->access$3000(Lcom/perm/kate/SinglePhotoViewer;)J

    move-result-wide v14

    iget-object v1, v0, Lcom/perm/kate/SinglePhotoViewer$14;->this$0:Lcom/perm/kate/SinglePhotoViewer;

    invoke-static {v1}, Lcom/perm/kate/SinglePhotoViewer;->access$3100(Lcom/perm/kate/SinglePhotoViewer;)Lcom/perm/kate/session/Callback;

    move-result-object v16

    iget-object v1, v0, Lcom/perm/kate/SinglePhotoViewer$14;->this$0:Lcom/perm/kate/SinglePhotoViewer;

    move-object/from16 v17, v1

    invoke-virtual/range {v10 .. v17}, Lcom/perm/kate/session/Session;->removePhotoTag(Ljava/lang/Long;JJLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    :goto_0
    return-void
.end method

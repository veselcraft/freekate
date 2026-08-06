.class Lcom/perm/kate/PhotoViewerActrivity$35;
.super Ljava/lang/Thread;
.source "PhotoViewerActrivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/PhotoViewerActrivity;->deletePhoto(Lcom/perm/kate/api/Photo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/PhotoViewerActrivity;

.field final synthetic val$owner_id:J

.field final synthetic val$photo:Lcom/perm/kate/api/Photo;


# direct methods
.method constructor <init>(Lcom/perm/kate/PhotoViewerActrivity;JLcom/perm/kate/api/Photo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/PhotoViewerActrivity;

    .prologue
    .line 1506
    iput-object p1, p0, Lcom/perm/kate/PhotoViewerActrivity$35;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    iput-wide p2, p0, Lcom/perm/kate/PhotoViewerActrivity$35;->val$owner_id:J

    iput-object p4, p0, Lcom/perm/kate/PhotoViewerActrivity$35;->val$photo:Lcom/perm/kate/api/Photo;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1509
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-wide v2, p0, Lcom/perm/kate/PhotoViewerActrivity$35;->val$owner_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/PhotoViewerActrivity$35;->val$photo:Lcom/perm/kate/api/Photo;

    iget-wide v2, v2, Lcom/perm/kate/api/Photo;->pid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Lcom/perm/kate/PhotoViewerActrivity$35;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-static {v3}, Lcom/perm/kate/PhotoViewerActrivity;->access$4000(Lcom/perm/kate/PhotoViewerActrivity;)Lcom/perm/kate/session/Callback;

    move-result-object v3

    iget-object v4, p0, Lcom/perm/kate/PhotoViewerActrivity$35;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/perm/kate/session/Session;->deletePhoto(Ljava/lang/Long;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 1510
    return-void
.end method

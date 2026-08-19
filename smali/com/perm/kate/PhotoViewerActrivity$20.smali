.class Lcom/perm/kate/PhotoViewerActrivity$20;
.super Ljava/lang/Thread;
.source "PhotoViewerActrivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/PhotoViewerActrivity;->unlike()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/PhotoViewerActrivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/PhotoViewerActrivity;)V
    .locals 0

    .line 1213
    iput-object p1, p0, Lcom/perm/kate/PhotoViewerActrivity$20;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1216
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/PhotoViewerActrivity$20;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-static {v1}, Lcom/perm/kate/PhotoViewerActrivity;->access$000(Lcom/perm/kate/PhotoViewerActrivity;)Lcom/perm/kate/api/Photo;

    move-result-object v1

    iget-object v1, v1, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/PhotoViewerActrivity$20;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-static {v2}, Lcom/perm/kate/PhotoViewerActrivity;->access$000(Lcom/perm/kate/PhotoViewerActrivity;)Lcom/perm/kate/api/Photo;

    move-result-object v2

    iget-wide v2, v2, Lcom/perm/kate/api/Photo;->pid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v2, p0, Lcom/perm/kate/PhotoViewerActrivity$20;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-static {v2}, Lcom/perm/kate/PhotoViewerActrivity;->access$2600(Lcom/perm/kate/PhotoViewerActrivity;)Lcom/perm/kate/session/Callback;

    move-result-object v4

    iget-object v5, p0, Lcom/perm/kate/PhotoViewerActrivity$20;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    const-string v2, "photo"

    invoke-virtual/range {v0 .. v5}, Lcom/perm/kate/session/Session;->deleteLike(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method

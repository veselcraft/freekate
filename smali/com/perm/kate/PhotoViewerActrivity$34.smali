.class Lcom/perm/kate/PhotoViewerActrivity$34;
.super Ljava/lang/Thread;
.source "PhotoViewerActrivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/PhotoViewerActrivity;->saveToMyAlbum()V
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

    .line 1644
    iput-object p1, p0, Lcom/perm/kate/PhotoViewerActrivity$34;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1647
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/PhotoViewerActrivity$34;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-static {v1}, Lcom/perm/kate/PhotoViewerActrivity;->access$000(Lcom/perm/kate/PhotoViewerActrivity;)Lcom/perm/kate/api/Photo;

    move-result-object v1

    iget-object v1, v1, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/perm/kate/PhotoViewerActrivity$34;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-static {v3}, Lcom/perm/kate/PhotoViewerActrivity;->access$000(Lcom/perm/kate/PhotoViewerActrivity;)Lcom/perm/kate/api/Photo;

    move-result-object v3

    iget-wide v3, v3, Lcom/perm/kate/api/Photo;->pid:J

    iget-object v5, p0, Lcom/perm/kate/PhotoViewerActrivity$34;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-static {v5}, Lcom/perm/kate/PhotoViewerActrivity;->access$000(Lcom/perm/kate/PhotoViewerActrivity;)Lcom/perm/kate/api/Photo;

    move-result-object v5

    iget-object v5, v5, Lcom/perm/kate/api/Photo;->access_key:Ljava/lang/String;

    iget-object v6, p0, Lcom/perm/kate/PhotoViewerActrivity$34;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-static {v6}, Lcom/perm/kate/PhotoViewerActrivity;->access$4000(Lcom/perm/kate/PhotoViewerActrivity;)Lcom/perm/kate/session/Callback;

    move-result-object v6

    iget-object v7, p0, Lcom/perm/kate/PhotoViewerActrivity$34;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-virtual/range {v0 .. v7}, Lcom/perm/kate/session/Session;->photoCopy(JJLjava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method

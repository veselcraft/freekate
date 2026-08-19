.class Lcom/perm/kate/PhotoViewerActrivity$42;
.super Ljava/lang/Thread;
.source "PhotoViewerActrivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/PhotoViewerActrivity;->moveToAlbum(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/PhotoViewerActrivity;

.field final synthetic val$move_callback:Lcom/perm/kate/session/Callback;

.field final synthetic val$target_album_id:J


# direct methods
.method constructor <init>(Lcom/perm/kate/PhotoViewerActrivity;JLcom/perm/kate/session/Callback;)V
    .locals 0

    .line 1812
    iput-object p1, p0, Lcom/perm/kate/PhotoViewerActrivity$42;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    iput-wide p2, p0, Lcom/perm/kate/PhotoViewerActrivity$42;->val$target_album_id:J

    iput-object p4, p0, Lcom/perm/kate/PhotoViewerActrivity$42;->val$move_callback:Lcom/perm/kate/session/Callback;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1815
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/PhotoViewerActrivity$42;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    iget-wide v1, v1, Lcom/perm/kate/PhotoViewerActrivity;->owner_id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, p0, Lcom/perm/kate/PhotoViewerActrivity$42;->val$target_album_id:J

    iget-object v4, p0, Lcom/perm/kate/PhotoViewerActrivity$42;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-static {v4}, Lcom/perm/kate/PhotoViewerActrivity;->access$000(Lcom/perm/kate/PhotoViewerActrivity;)Lcom/perm/kate/api/Photo;

    move-result-object v4

    iget-wide v4, v4, Lcom/perm/kate/api/Photo;->pid:J

    iget-object v6, p0, Lcom/perm/kate/PhotoViewerActrivity$42;->val$move_callback:Lcom/perm/kate/session/Callback;

    iget-object v7, p0, Lcom/perm/kate/PhotoViewerActrivity$42;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-virtual/range {v0 .. v7}, Lcom/perm/kate/session/Session;->movePhoto(Ljava/lang/Long;JJLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method

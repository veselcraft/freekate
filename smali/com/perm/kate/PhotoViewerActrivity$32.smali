.class Lcom/perm/kate/PhotoViewerActrivity$32;
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
    .param p1, "this$0"    # Lcom/perm/kate/PhotoViewerActrivity;

    .prologue
    .line 1463
    iput-object p1, p0, Lcom/perm/kate/PhotoViewerActrivity$32;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 1466
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity$32;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-static {v0}, Lcom/perm/kate/PhotoViewerActrivity;->access$800(Lcom/perm/kate/PhotoViewerActrivity;)Lcom/perm/kate/api/Photo;

    move-result-object v0

    iget-object v0, v0, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity$32;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-static {v0}, Lcom/perm/kate/PhotoViewerActrivity;->access$800(Lcom/perm/kate/PhotoViewerActrivity;)Lcom/perm/kate/api/Photo;

    move-result-object v0

    iget-wide v4, v0, Lcom/perm/kate/api/Photo;->pid:J

    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity$32;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-static {v0}, Lcom/perm/kate/PhotoViewerActrivity;->access$800(Lcom/perm/kate/PhotoViewerActrivity;)Lcom/perm/kate/api/Photo;

    move-result-object v0

    iget-object v6, v0, Lcom/perm/kate/api/Photo;->access_key:Ljava/lang/String;

    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity$32;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-static {v0}, Lcom/perm/kate/PhotoViewerActrivity;->access$3700(Lcom/perm/kate/PhotoViewerActrivity;)Lcom/perm/kate/session/Callback;

    move-result-object v7

    iget-object v8, p0, Lcom/perm/kate/PhotoViewerActrivity$32;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-virtual/range {v1 .. v8}, Lcom/perm/kate/session/Session;->photoCopy(JJLjava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 1467
    return-void
.end method

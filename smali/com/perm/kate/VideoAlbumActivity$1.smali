.class Lcom/perm/kate/VideoAlbumActivity$1;
.super Ljava/lang/Thread;
.source "VideoAlbumActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/VideoAlbumActivity;->save()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/VideoAlbumActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/VideoAlbumActivity;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/perm/kate/VideoAlbumActivity$1;->this$0:Lcom/perm/kate/VideoAlbumActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .line 71
    iget-object v0, p0, Lcom/perm/kate/VideoAlbumActivity$1;->this$0:Lcom/perm/kate/VideoAlbumActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 72
    iget-object v0, p0, Lcom/perm/kate/VideoAlbumActivity$1;->this$0:Lcom/perm/kate/VideoAlbumActivity;

    invoke-static {v0}, Lcom/perm/kate/VideoAlbumActivity;->access$000(Lcom/perm/kate/VideoAlbumActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v0, p0, Lcom/perm/kate/VideoAlbumActivity$1;->this$0:Lcom/perm/kate/VideoAlbumActivity;

    invoke-static {v0}, Lcom/perm/kate/VideoAlbumActivity;->access$100(Lcom/perm/kate/VideoAlbumActivity;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v0, p0, Lcom/perm/kate/VideoAlbumActivity$1;->this$0:Lcom/perm/kate/VideoAlbumActivity;

    invoke-static {v0}, Lcom/perm/kate/VideoAlbumActivity;->access$200(Lcom/perm/kate/VideoAlbumActivity;)Ljava/lang/Long;

    move-result-object v4

    iget-object v0, p0, Lcom/perm/kate/VideoAlbumActivity$1;->this$0:Lcom/perm/kate/VideoAlbumActivity;

    invoke-static {v0}, Lcom/perm/kate/VideoAlbumActivity;->access$300(Lcom/perm/kate/VideoAlbumActivity;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/perm/kate/VideoAlbumActivity$1;->this$0:Lcom/perm/kate/VideoAlbumActivity;

    invoke-static {v0}, Lcom/perm/kate/VideoAlbumActivity;->access$400(Lcom/perm/kate/VideoAlbumActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v7

    iget-object v8, p0, Lcom/perm/kate/VideoAlbumActivity$1;->this$0:Lcom/perm/kate/VideoAlbumActivity;

    invoke-virtual/range {v1 .. v8}, Lcom/perm/kate/session/Session;->editVideoAlbum(JLjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_0

    .line 75
    :cond_0
    sget-object v9, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v0, p0, Lcom/perm/kate/VideoAlbumActivity$1;->this$0:Lcom/perm/kate/VideoAlbumActivity;

    invoke-static {v0}, Lcom/perm/kate/VideoAlbumActivity;->access$200(Lcom/perm/kate/VideoAlbumActivity;)Ljava/lang/Long;

    move-result-object v10

    iget-object v0, p0, Lcom/perm/kate/VideoAlbumActivity$1;->this$0:Lcom/perm/kate/VideoAlbumActivity;

    invoke-static {v0}, Lcom/perm/kate/VideoAlbumActivity;->access$300(Lcom/perm/kate/VideoAlbumActivity;)Ljava/lang/String;

    move-result-object v11

    iget-object v0, p0, Lcom/perm/kate/VideoAlbumActivity$1;->this$0:Lcom/perm/kate/VideoAlbumActivity;

    invoke-static {v0}, Lcom/perm/kate/VideoAlbumActivity;->access$500(Lcom/perm/kate/VideoAlbumActivity;)Ljava/lang/String;

    move-result-object v12

    iget-object v0, p0, Lcom/perm/kate/VideoAlbumActivity$1;->this$0:Lcom/perm/kate/VideoAlbumActivity;

    invoke-static {v0}, Lcom/perm/kate/VideoAlbumActivity;->access$600(Lcom/perm/kate/VideoAlbumActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v13

    iget-object v14, p0, Lcom/perm/kate/VideoAlbumActivity$1;->this$0:Lcom/perm/kate/VideoAlbumActivity;

    invoke-virtual/range {v9 .. v14}, Lcom/perm/kate/session/Session;->addVideoAlbum(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    :goto_0
    return-void
.end method

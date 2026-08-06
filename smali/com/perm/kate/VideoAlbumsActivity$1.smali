.class Lcom/perm/kate/VideoAlbumsActivity$1;
.super Ljava/lang/Thread;
.source "VideoAlbumsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/VideoAlbumsActivity;->refresh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/VideoAlbumsActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/VideoAlbumsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/VideoAlbumsActivity;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/perm/kate/VideoAlbumsActivity$1;->this$0:Lcom/perm/kate/VideoAlbumsActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 65
    iget-object v0, p0, Lcom/perm/kate/VideoAlbumsActivity$1;->this$0:Lcom/perm/kate/VideoAlbumsActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/perm/kate/VideoAlbumsActivity;->showProgressBar(Z)V

    .line 66
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v0, p0, Lcom/perm/kate/VideoAlbumsActivity$1;->this$0:Lcom/perm/kate/VideoAlbumsActivity;

    invoke-static {v0}, Lcom/perm/kate/VideoAlbumsActivity;->access$000(Lcom/perm/kate/VideoAlbumsActivity;)J

    move-result-wide v2

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/perm/kate/VideoAlbumsActivity$1;->this$0:Lcom/perm/kate/VideoAlbumsActivity;

    invoke-static {v0}, Lcom/perm/kate/VideoAlbumsActivity;->access$100(Lcom/perm/kate/VideoAlbumsActivity;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/perm/kate/VideoAlbumsActivity$1;->this$0:Lcom/perm/kate/VideoAlbumsActivity;

    iget-object v7, v0, Lcom/perm/kate/VideoAlbumsActivity;->callback:Lcom/perm/kate/session/Callback;

    iget-object v8, p0, Lcom/perm/kate/VideoAlbumsActivity$1;->this$0:Lcom/perm/kate/VideoAlbumsActivity;

    invoke-virtual/range {v1 .. v8}, Lcom/perm/kate/session/Session;->getVideoAlbums(JLjava/lang/Integer;Ljava/lang/Integer;ZLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 67
    return-void
.end method

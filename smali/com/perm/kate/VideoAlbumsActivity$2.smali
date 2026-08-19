.class Lcom/perm/kate/VideoAlbumsActivity$2;
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

    .line 84
    iput-object p1, p0, Lcom/perm/kate/VideoAlbumsActivity$2;->this$0:Lcom/perm/kate/VideoAlbumsActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 87
    iget-object v0, p0, Lcom/perm/kate/VideoAlbumsActivity$2;->this$0:Lcom/perm/kate/VideoAlbumsActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 88
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v0, p0, Lcom/perm/kate/VideoAlbumsActivity$2;->this$0:Lcom/perm/kate/VideoAlbumsActivity;

    invoke-static {v0}, Lcom/perm/kate/VideoAlbumsActivity;->access$100(Lcom/perm/kate/VideoAlbumsActivity;)J

    move-result-wide v3

    iget-object v0, p0, Lcom/perm/kate/VideoAlbumsActivity$2;->this$0:Lcom/perm/kate/VideoAlbumsActivity;

    invoke-static {v0}, Lcom/perm/kate/VideoAlbumsActivity;->access$200(Lcom/perm/kate/VideoAlbumsActivity;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v9, p0, Lcom/perm/kate/VideoAlbumsActivity$2;->this$0:Lcom/perm/kate/VideoAlbumsActivity;

    iget-object v8, v9, Lcom/perm/kate/VideoAlbumsActivity;->callback:Lcom/perm/kate/session/Callback;

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/perm/kate/session/Session;->getVideoAlbums(JLjava/lang/Integer;Ljava/lang/Integer;ZLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method

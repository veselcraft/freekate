.class Lcom/perm/kate/VideoAlbumsActivity$9;
.super Ljava/lang/Thread;
.source "VideoAlbumsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/VideoAlbumsActivity;->loadMore()V
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

    .line 238
    iput-object p1, p0, Lcom/perm/kate/VideoAlbumsActivity$9;->this$0:Lcom/perm/kate/VideoAlbumsActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 241
    iget-object v0, p0, Lcom/perm/kate/VideoAlbumsActivity$9;->this$0:Lcom/perm/kate/VideoAlbumsActivity;

    invoke-static {v0}, Lcom/perm/kate/VideoAlbumsActivity;->access$300(Lcom/perm/kate/VideoAlbumsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 242
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v2, p0, Lcom/perm/kate/VideoAlbumsActivity$9;->this$0:Lcom/perm/kate/VideoAlbumsActivity;

    invoke-static {v2}, Lcom/perm/kate/VideoAlbumsActivity;->access$100(Lcom/perm/kate/VideoAlbumsActivity;)J

    move-result-wide v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v0, p0, Lcom/perm/kate/VideoAlbumsActivity$9;->this$0:Lcom/perm/kate/VideoAlbumsActivity;

    invoke-static {v0}, Lcom/perm/kate/VideoAlbumsActivity;->access$200(Lcom/perm/kate/VideoAlbumsActivity;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v0, p0, Lcom/perm/kate/VideoAlbumsActivity$9;->this$0:Lcom/perm/kate/VideoAlbumsActivity;

    invoke-static {v0}, Lcom/perm/kate/VideoAlbumsActivity;->access$1100(Lcom/perm/kate/VideoAlbumsActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v7

    iget-object v8, p0, Lcom/perm/kate/VideoAlbumsActivity$9;->this$0:Lcom/perm/kate/VideoAlbumsActivity;

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v8}, Lcom/perm/kate/session/Session;->getVideoAlbums(JLjava/lang/Integer;Ljava/lang/Integer;ZLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method

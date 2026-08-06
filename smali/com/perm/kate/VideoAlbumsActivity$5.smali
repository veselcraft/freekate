.class Lcom/perm/kate/VideoAlbumsActivity$5;
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
    .param p1, "this$0"    # Lcom/perm/kate/VideoAlbumsActivity;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/perm/kate/VideoAlbumsActivity$5;->this$0:Lcom/perm/kate/VideoAlbumsActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 162
    iget-object v1, p0, Lcom/perm/kate/VideoAlbumsActivity$5;->this$0:Lcom/perm/kate/VideoAlbumsActivity;

    invoke-static {v1}, Lcom/perm/kate/VideoAlbumsActivity;->access$200(Lcom/perm/kate/VideoAlbumsActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 163
    .local v0, "offset":I
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v2, p0, Lcom/perm/kate/VideoAlbumsActivity$5;->this$0:Lcom/perm/kate/VideoAlbumsActivity;

    invoke-static {v2}, Lcom/perm/kate/VideoAlbumsActivity;->access$000(Lcom/perm/kate/VideoAlbumsActivity;)J

    move-result-wide v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/perm/kate/VideoAlbumsActivity$5;->this$0:Lcom/perm/kate/VideoAlbumsActivity;

    invoke-static {v5}, Lcom/perm/kate/VideoAlbumsActivity;->access$100(Lcom/perm/kate/VideoAlbumsActivity;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/perm/kate/VideoAlbumsActivity$5;->this$0:Lcom/perm/kate/VideoAlbumsActivity;

    invoke-static {v7}, Lcom/perm/kate/VideoAlbumsActivity;->access$700(Lcom/perm/kate/VideoAlbumsActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v7

    iget-object v8, p0, Lcom/perm/kate/VideoAlbumsActivity$5;->this$0:Lcom/perm/kate/VideoAlbumsActivity;

    invoke-virtual/range {v1 .. v8}, Lcom/perm/kate/session/Session;->getVideoAlbums(JLjava/lang/Integer;Ljava/lang/Integer;ZLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 164
    return-void
.end method

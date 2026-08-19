.class Lcom/perm/kate/NewMarketAlbumActivity$6;
.super Ljava/lang/Thread;
.source "NewMarketAlbumActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/NewMarketAlbumActivity;->createMarketAlbum()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/NewMarketAlbumActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/NewMarketAlbumActivity;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/perm/kate/NewMarketAlbumActivity$6;->this$0:Lcom/perm/kate/NewMarketAlbumActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 116
    iget-object v0, p0, Lcom/perm/kate/NewMarketAlbumActivity$6;->this$0:Lcom/perm/kate/NewMarketAlbumActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 117
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v0, p0, Lcom/perm/kate/NewMarketAlbumActivity$6;->this$0:Lcom/perm/kate/NewMarketAlbumActivity;

    invoke-static {v0}, Lcom/perm/kate/NewMarketAlbumActivity;->access$300(Lcom/perm/kate/NewMarketAlbumActivity;)J

    move-result-wide v0

    neg-long v3, v0

    iget-object v0, p0, Lcom/perm/kate/NewMarketAlbumActivity$6;->this$0:Lcom/perm/kate/NewMarketAlbumActivity;

    invoke-static {v0}, Lcom/perm/kate/NewMarketAlbumActivity;->access$500(Lcom/perm/kate/NewMarketAlbumActivity;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/perm/kate/NewMarketAlbumActivity$6;->this$0:Lcom/perm/kate/NewMarketAlbumActivity;

    invoke-static {v0}, Lcom/perm/kate/NewMarketAlbumActivity;->access$600(Lcom/perm/kate/NewMarketAlbumActivity;)Ljava/lang/Long;

    move-result-object v6

    iget-object v0, p0, Lcom/perm/kate/NewMarketAlbumActivity$6;->this$0:Lcom/perm/kate/NewMarketAlbumActivity;

    invoke-static {v0}, Lcom/perm/kate/NewMarketAlbumActivity;->access$900(Lcom/perm/kate/NewMarketAlbumActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v7

    iget-object v8, p0, Lcom/perm/kate/NewMarketAlbumActivity$6;->this$0:Lcom/perm/kate/NewMarketAlbumActivity;

    invoke-virtual/range {v2 .. v8}, Lcom/perm/kate/session/Session;->addMarketAlbum(JLjava/lang/String;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 118
    iget-object v0, p0, Lcom/perm/kate/NewMarketAlbumActivity$6;->this$0:Lcom/perm/kate/NewMarketAlbumActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void
.end method

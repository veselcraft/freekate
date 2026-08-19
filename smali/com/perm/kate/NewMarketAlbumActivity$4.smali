.class Lcom/perm/kate/NewMarketAlbumActivity$4;
.super Ljava/lang/Thread;
.source "NewMarketAlbumActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/NewMarketAlbumActivity;->editMarketAlbum()V
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

    .line 92
    iput-object p1, p0, Lcom/perm/kate/NewMarketAlbumActivity$4;->this$0:Lcom/perm/kate/NewMarketAlbumActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 95
    iget-object v0, p0, Lcom/perm/kate/NewMarketAlbumActivity$4;->this$0:Lcom/perm/kate/NewMarketAlbumActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 96
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v0, p0, Lcom/perm/kate/NewMarketAlbumActivity$4;->this$0:Lcom/perm/kate/NewMarketAlbumActivity;

    invoke-static {v0}, Lcom/perm/kate/NewMarketAlbumActivity;->access$300(Lcom/perm/kate/NewMarketAlbumActivity;)J

    move-result-wide v0

    neg-long v3, v0

    iget-object v0, p0, Lcom/perm/kate/NewMarketAlbumActivity$4;->this$0:Lcom/perm/kate/NewMarketAlbumActivity;

    invoke-static {v0}, Lcom/perm/kate/NewMarketAlbumActivity;->access$400(Lcom/perm/kate/NewMarketAlbumActivity;)Lcom/perm/kate/api/MarketAlbum;

    move-result-object v0

    iget-wide v5, v0, Lcom/perm/kate/api/MarketAlbum;->id:J

    iget-object v0, p0, Lcom/perm/kate/NewMarketAlbumActivity$4;->this$0:Lcom/perm/kate/NewMarketAlbumActivity;

    invoke-static {v0}, Lcom/perm/kate/NewMarketAlbumActivity;->access$500(Lcom/perm/kate/NewMarketAlbumActivity;)Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/perm/kate/NewMarketAlbumActivity$4;->this$0:Lcom/perm/kate/NewMarketAlbumActivity;

    invoke-static {v0}, Lcom/perm/kate/NewMarketAlbumActivity;->access$600(Lcom/perm/kate/NewMarketAlbumActivity;)Ljava/lang/Long;

    move-result-object v8

    iget-object v0, p0, Lcom/perm/kate/NewMarketAlbumActivity$4;->this$0:Lcom/perm/kate/NewMarketAlbumActivity;

    invoke-static {v0}, Lcom/perm/kate/NewMarketAlbumActivity;->access$700(Lcom/perm/kate/NewMarketAlbumActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v9

    iget-object v10, p0, Lcom/perm/kate/NewMarketAlbumActivity$4;->this$0:Lcom/perm/kate/NewMarketAlbumActivity;

    invoke-virtual/range {v2 .. v10}, Lcom/perm/kate/session/Session;->editMarketAlbum(JJLjava/lang/String;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 97
    iget-object v0, p0, Lcom/perm/kate/NewMarketAlbumActivity$4;->this$0:Lcom/perm/kate/NewMarketAlbumActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void
.end method

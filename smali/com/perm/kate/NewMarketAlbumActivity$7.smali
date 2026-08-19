.class Lcom/perm/kate/NewMarketAlbumActivity$7;
.super Lcom/perm/kate/session/Callback;
.source "NewMarketAlbumActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/NewMarketAlbumActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/NewMarketAlbumActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/NewMarketAlbumActivity;Landroid/app/Activity;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/perm/kate/NewMarketAlbumActivity$7;->this$0:Lcom/perm/kate/NewMarketAlbumActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public ready(Ljava/lang/Object;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 136
    iget-object p1, p0, Lcom/perm/kate/NewMarketAlbumActivity$7;->this$0:Lcom/perm/kate/NewMarketAlbumActivity;

    invoke-static {p1}, Lcom/perm/kate/NewMarketAlbumActivity;->access$800(Lcom/perm/kate/NewMarketAlbumActivity;)V

    :cond_0
    return-void
.end method

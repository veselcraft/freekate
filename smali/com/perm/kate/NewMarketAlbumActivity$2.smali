.class Lcom/perm/kate/NewMarketAlbumActivity$2;
.super Ljava/lang/Object;
.source "NewMarketAlbumActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
.method constructor <init>(Lcom/perm/kate/NewMarketAlbumActivity;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/perm/kate/NewMarketAlbumActivity$2;->this$0:Lcom/perm/kate/NewMarketAlbumActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 75
    iget-object p1, p0, Lcom/perm/kate/NewMarketAlbumActivity$2;->this$0:Lcom/perm/kate/NewMarketAlbumActivity;

    invoke-static {p1}, Lcom/perm/kate/NewMarketAlbumActivity;->access$000(Lcom/perm/kate/NewMarketAlbumActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 76
    iget-object p1, p0, Lcom/perm/kate/NewMarketAlbumActivity$2;->this$0:Lcom/perm/kate/NewMarketAlbumActivity;

    invoke-static {p1}, Lcom/perm/kate/NewMarketAlbumActivity;->access$100(Lcom/perm/kate/NewMarketAlbumActivity;)V

    goto :goto_0

    .line 78
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/NewMarketAlbumActivity$2;->this$0:Lcom/perm/kate/NewMarketAlbumActivity;

    invoke-static {p1}, Lcom/perm/kate/NewMarketAlbumActivity;->access$200(Lcom/perm/kate/NewMarketAlbumActivity;)V

    :goto_0
    return-void
.end method

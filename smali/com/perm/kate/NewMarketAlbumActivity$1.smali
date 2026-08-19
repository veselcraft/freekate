.class Lcom/perm/kate/NewMarketAlbumActivity$1;
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

    .line 65
    iput-object p1, p0, Lcom/perm/kate/NewMarketAlbumActivity$1;->this$0:Lcom/perm/kate/NewMarketAlbumActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 68
    iget-object v0, p0, Lcom/perm/kate/NewMarketAlbumActivity$1;->this$0:Lcom/perm/kate/NewMarketAlbumActivity;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/perm/kate/photoupload/PhotoChooser;->requestPhoto(Landroid/app/Activity;Landroidx/fragment/app/Fragment;ZZZLjava/lang/Long;)V

    return-void
.end method

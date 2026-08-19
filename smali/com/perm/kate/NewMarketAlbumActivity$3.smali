.class Lcom/perm/kate/NewMarketAlbumActivity$3;
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

    .line 82
    iput-object p1, p0, Lcom/perm/kate/NewMarketAlbumActivity$3;->this$0:Lcom/perm/kate/NewMarketAlbumActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 85
    iget-object p1, p0, Lcom/perm/kate/NewMarketAlbumActivity$3;->this$0:Lcom/perm/kate/NewMarketAlbumActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

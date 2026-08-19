.class Lcom/perm/kate/NewMarketAlbumActivity$9;
.super Ljava/lang/Object;
.source "NewMarketAlbumActivity.java"

# interfaces
.implements Lcom/perm/kate/photoupload/UploadCallback;


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

    .line 171
    iput-object p1, p0, Lcom/perm/kate/NewMarketAlbumActivity$9;->this$0:Lcom/perm/kate/NewMarketAlbumActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public success(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/perm/kate/api/Photo;",
            ">;)V"
        }
    .end annotation

    .line 174
    iget-object v0, p0, Lcom/perm/kate/NewMarketAlbumActivity$9;->this$0:Lcom/perm/kate/NewMarketAlbumActivity;

    invoke-static {v0, p1}, Lcom/perm/kate/NewMarketAlbumActivity;->access$1100(Lcom/perm/kate/NewMarketAlbumActivity;Ljava/util/ArrayList;)V

    return-void
.end method

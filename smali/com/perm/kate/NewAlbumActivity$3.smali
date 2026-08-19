.class Lcom/perm/kate/NewAlbumActivity$3;
.super Ljava/lang/Object;
.source "NewAlbumActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/NewAlbumActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/NewAlbumActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/NewAlbumActivity;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/perm/kate/NewAlbumActivity$3;->this$0:Lcom/perm/kate/NewAlbumActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 123
    iget-object p1, p0, Lcom/perm/kate/NewAlbumActivity$3;->this$0:Lcom/perm/kate/NewAlbumActivity;

    invoke-static {p1}, Lcom/perm/kate/NewAlbumActivity;->access$400(Lcom/perm/kate/NewAlbumActivity;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {p1, v0, v1}, Lcom/perm/kate/NewAlbumActivity;->access$300(Lcom/perm/kate/NewAlbumActivity;Ljava/util/ArrayList;I)V

    return-void
.end method

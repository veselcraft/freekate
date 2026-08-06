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
    .param p1, "this$0"    # Lcom/perm/kate/NewAlbumActivity;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/perm/kate/NewAlbumActivity$3;->this$0:Lcom/perm/kate/NewAlbumActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/perm/kate/NewAlbumActivity$3;->this$0:Lcom/perm/kate/NewAlbumActivity;

    iget-object v1, p0, Lcom/perm/kate/NewAlbumActivity$3;->this$0:Lcom/perm/kate/NewAlbumActivity;

    invoke-static {v1}, Lcom/perm/kate/NewAlbumActivity;->access$400(Lcom/perm/kate/NewAlbumActivity;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/perm/kate/NewAlbumActivity;->access$300(Lcom/perm/kate/NewAlbumActivity;Ljava/util/ArrayList;I)V

    .line 122
    return-void
.end method

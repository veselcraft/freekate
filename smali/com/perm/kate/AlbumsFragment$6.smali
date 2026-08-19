.class Lcom/perm/kate/AlbumsFragment$6;
.super Ljava/lang/Object;
.source "AlbumsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AlbumsFragment;

.field final synthetic val$aid:J

.field final synthetic val$album:Lcom/perm/kate/AlbumsFragment$AlbumData;

.field final synthetic val$menuItems:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/perm/kate/AlbumsFragment;Ljava/util/ArrayList;JLcom/perm/kate/AlbumsFragment$AlbumData;)V
    .locals 0

    .line 262
    iput-object p1, p0, Lcom/perm/kate/AlbumsFragment$6;->this$0:Lcom/perm/kate/AlbumsFragment;

    iput-object p2, p0, Lcom/perm/kate/AlbumsFragment$6;->val$menuItems:Ljava/util/ArrayList;

    iput-wide p3, p0, Lcom/perm/kate/AlbumsFragment$6;->val$aid:J

    iput-object p5, p0, Lcom/perm/kate/AlbumsFragment$6;->val$album:Lcom/perm/kate/AlbumsFragment$AlbumData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 265
    iget-object p1, p0, Lcom/perm/kate/AlbumsFragment$6;->val$menuItems:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/MenuItemDetails;

    iget p1, p1, Lcom/perm/kate/MenuItemDetails;->code:I

    const/4 p2, 0x1

    if-eq p1, p2, :cond_4

    const/4 p2, 0x2

    if-eq p1, p2, :cond_3

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    const/4 p2, 0x4

    if-eq p1, p2, :cond_1

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 279
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/AlbumsFragment$6;->this$0:Lcom/perm/kate/AlbumsFragment;

    iget-object p2, p0, Lcom/perm/kate/AlbumsFragment$6;->val$album:Lcom/perm/kate/AlbumsFragment$AlbumData;

    iput-object p2, p1, Lcom/perm/kate/AlbumsFragment;->album_move:Lcom/perm/kate/AlbumsFragment$AlbumData;

    const p2, 0x7f0f0431

    .line 280
    invoke-virtual {p1, p2}, Lcom/perm/kate/BaseFragment;->displayToast(I)V

    goto :goto_0

    .line 276
    :cond_1
    iget-object p1, p0, Lcom/perm/kate/AlbumsFragment$6;->this$0:Lcom/perm/kate/AlbumsFragment;

    iget-wide v0, p0, Lcom/perm/kate/AlbumsFragment$6;->val$aid:J

    invoke-virtual {p1, v0, v1}, Lcom/perm/kate/AlbumsFragment;->albumCommentsClick(J)V

    goto :goto_0

    .line 267
    :cond_2
    iget-object p1, p0, Lcom/perm/kate/AlbumsFragment$6;->this$0:Lcom/perm/kate/AlbumsFragment;

    iget-wide v0, p0, Lcom/perm/kate/AlbumsFragment$6;->val$aid:J

    invoke-static {p1, v0, v1}, Lcom/perm/kate/AlbumsFragment;->access$800(Lcom/perm/kate/AlbumsFragment;J)V

    goto :goto_0

    .line 270
    :cond_3
    iget-object p1, p0, Lcom/perm/kate/AlbumsFragment$6;->this$0:Lcom/perm/kate/AlbumsFragment;

    iget-wide v0, p0, Lcom/perm/kate/AlbumsFragment$6;->val$aid:J

    invoke-static {p1, v0, v1}, Lcom/perm/kate/AlbumsFragment;->access$900(Lcom/perm/kate/AlbumsFragment;J)V

    goto :goto_0

    .line 273
    :cond_4
    iget-object p1, p0, Lcom/perm/kate/AlbumsFragment$6;->this$0:Lcom/perm/kate/AlbumsFragment;

    iget-wide v0, p0, Lcom/perm/kate/AlbumsFragment$6;->val$aid:J

    invoke-static {p1, v0, v1}, Lcom/perm/kate/AlbumsFragment;->access$1000(Lcom/perm/kate/AlbumsFragment;J)V

    :goto_0
    return-void
.end method

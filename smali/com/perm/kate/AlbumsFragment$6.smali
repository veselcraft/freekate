.class Lcom/perm/kate/AlbumsFragment$6;
.super Ljava/lang/Object;
.source "AlbumsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/AlbumsFragment;->showAlbumContextMenu(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AlbumsFragment;

.field final synthetic val$aid:J

.field final synthetic val$menuItems:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/perm/kate/AlbumsFragment;Ljava/util/ArrayList;J)V
    .locals 1
    .param p1, "this$0"    # Lcom/perm/kate/AlbumsFragment;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/perm/kate/AlbumsFragment$6;->this$0:Lcom/perm/kate/AlbumsFragment;

    iput-object p2, p0, Lcom/perm/kate/AlbumsFragment$6;->val$menuItems:Ljava/util/ArrayList;

    iput-wide p3, p0, Lcom/perm/kate/AlbumsFragment$6;->val$aid:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 192
    iget-object v0, p0, Lcom/perm/kate/AlbumsFragment$6;->val$menuItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/MenuItemDetails;

    iget v0, v0, Lcom/perm/kate/MenuItemDetails;->code:I

    packed-switch v0, :pswitch_data_0

    .line 206
    :goto_0
    return-void

    .line 194
    :pswitch_0
    iget-object v0, p0, Lcom/perm/kate/AlbumsFragment$6;->this$0:Lcom/perm/kate/AlbumsFragment;

    iget-wide v2, p0, Lcom/perm/kate/AlbumsFragment$6;->val$aid:J

    invoke-static {v0, v2, v3}, Lcom/perm/kate/AlbumsFragment;->access$700(Lcom/perm/kate/AlbumsFragment;J)V

    goto :goto_0

    .line 197
    :pswitch_1
    iget-object v0, p0, Lcom/perm/kate/AlbumsFragment$6;->this$0:Lcom/perm/kate/AlbumsFragment;

    iget-wide v2, p0, Lcom/perm/kate/AlbumsFragment$6;->val$aid:J

    invoke-static {v0, v2, v3}, Lcom/perm/kate/AlbumsFragment;->access$800(Lcom/perm/kate/AlbumsFragment;J)V

    goto :goto_0

    .line 200
    :pswitch_2
    iget-object v0, p0, Lcom/perm/kate/AlbumsFragment$6;->this$0:Lcom/perm/kate/AlbumsFragment;

    iget-wide v2, p0, Lcom/perm/kate/AlbumsFragment$6;->val$aid:J

    invoke-static {v0, v2, v3}, Lcom/perm/kate/AlbumsFragment;->access$900(Lcom/perm/kate/AlbumsFragment;J)V

    goto :goto_0

    .line 203
    :pswitch_3
    iget-object v0, p0, Lcom/perm/kate/AlbumsFragment$6;->this$0:Lcom/perm/kate/AlbumsFragment;

    iget-wide v2, p0, Lcom/perm/kate/AlbumsFragment$6;->val$aid:J

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/AlbumsFragment;->albumCommentsClick(J)V

    goto :goto_0

    .line 192
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

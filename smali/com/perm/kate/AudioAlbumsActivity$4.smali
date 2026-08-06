.class Lcom/perm/kate/AudioAlbumsActivity$4;
.super Ljava/lang/Object;
.source "AudioAlbumsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/AudioAlbumsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AudioAlbumsActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/AudioAlbumsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/AudioAlbumsActivity;

    .prologue
    .line 204
    iput-object p1, p0, Lcom/perm/kate/AudioAlbumsActivity$4;->this$0:Lcom/perm/kate/AudioAlbumsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 11
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 207
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/AudioAlbum;

    .line 208
    .local v0, "album":Lcom/perm/kate/api/AudioAlbum;
    if-nez v0, :cond_0

    .line 209
    const/4 v1, 0x0

    .line 232
    :goto_0
    return v1

    .line 210
    :cond_0
    iget-wide v4, v0, Lcom/perm/kate/api/AudioAlbum;->album_id:J

    .line 211
    .local v4, "album_id":J
    iget-object v6, v0, Lcom/perm/kate/api/AudioAlbum;->title:Ljava/lang/String;

    .line 212
    .local v6, "album_title":Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 213
    .local v3, "menuItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/MenuItemDetails;>;"
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f07018e

    const/4 v9, 0x0

    invoke-direct {v1, v2, v9}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f070182

    const/4 v9, 0x1

    invoke-direct {v1, v2, v9}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    new-instance v9, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/perm/kate/AudioAlbumsActivity$4;->this$0:Lcom/perm/kate/AudioAlbumsActivity;

    invoke-direct {v9, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 216
    invoke-static {v3}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object v10

    new-instance v1, Lcom/perm/kate/AudioAlbumsActivity$4$1;

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/perm/kate/AudioAlbumsActivity$4$1;-><init>(Lcom/perm/kate/AudioAlbumsActivity$4;Ljava/util/ArrayList;JLjava/lang/String;)V

    invoke-virtual {v9, v10, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v8

    .line 229
    .local v8, "winAlert":Landroid/support/v7/app/AlertDialog$Builder;
    invoke-virtual {v8}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v7

    .line 230
    .local v7, "dialog":Landroid/support/v7/app/AlertDialog;
    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 231
    invoke-virtual {v7}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 232
    const/4 v1, 0x1

    goto :goto_0
.end method

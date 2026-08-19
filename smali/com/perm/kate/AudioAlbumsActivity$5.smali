.class Lcom/perm/kate/AudioAlbumsActivity$5;
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

    .line 223
    iput-object p1, p0, Lcom/perm/kate/AudioAlbumsActivity$5;->this$0:Lcom/perm/kate/AudioAlbumsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .line 226
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/api/AudioAlbum;

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return p2

    .line 229
    :cond_0
    iget-wide v3, p1, Lcom/perm/kate/api/AudioAlbum;->album_id:J

    .line 230
    iget-object v5, p1, Lcom/perm/kate/api/AudioAlbum;->title:Ljava/lang/String;

    .line 231
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 232
    new-instance p1, Lcom/perm/kate/MenuItemDetails;

    const p3, 0x7f0f01ec

    invoke-direct {p1, p3, p2}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    new-instance p1, Lcom/perm/kate/MenuItemDetails;

    const p2, 0x7f0f00ba

    const/4 p3, 0x1

    invoke-direct {p1, p2, p3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object p2, p0, Lcom/perm/kate/AudioAlbumsActivity$5;->this$0:Lcom/perm/kate/AudioAlbumsActivity;

    invoke-direct {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 235
    invoke-static {v2}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object p2

    new-instance p4, Lcom/perm/kate/AudioAlbumsActivity$5$1;

    move-object v0, p4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/AudioAlbumsActivity$5$1;-><init>(Lcom/perm/kate/AudioAlbumsActivity$5;Ljava/util/ArrayList;JLjava/lang/String;)V

    invoke-virtual {p1, p2, p4}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 248
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 249
    invoke-virtual {p1, p3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 250
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return p3
.end method

.class Lcom/perm/kate/AlbumsFragment$5;
.super Ljava/lang/Object;
.source "AlbumsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AlbumsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/AlbumsFragment;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/perm/kate/AlbumsFragment$5;->this$0:Lcom/perm/kate/AlbumsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 0

    .line 233
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 236
    :cond_0
    iget-object p2, p0, Lcom/perm/kate/AlbumsFragment$5;->this$0:Lcom/perm/kate/AlbumsFragment;

    invoke-static {p2}, Lcom/perm/kate/AlbumsFragment;->access$600(Lcom/perm/kate/AlbumsFragment;)Landroid/widget/GridView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p2

    check-cast p2, Lcom/perm/kate/AlbumListAdapter;

    iget-object p2, p2, Lcom/perm/kate/AlbumListAdapter;->albums:Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/perm/kate/AlbumsFragment$AlbumData;

    .line 237
    iget-object p3, p0, Lcom/perm/kate/AlbumsFragment$5;->this$0:Lcom/perm/kate/AlbumsFragment;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p4

    invoke-static {p3, p4, p5, p2}, Lcom/perm/kate/AlbumsFragment;->access$700(Lcom/perm/kate/AlbumsFragment;JLcom/perm/kate/AlbumsFragment$AlbumData;)V

    const/4 p1, 0x1

    return p1
.end method

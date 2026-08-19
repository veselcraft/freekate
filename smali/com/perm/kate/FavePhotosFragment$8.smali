.class Lcom/perm/kate/FavePhotosFragment$8;
.super Ljava/lang/Object;
.source "FavePhotosFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FavePhotosFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/FavePhotosFragment;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/perm/kate/FavePhotosFragment$8;->this$0:Lcom/perm/kate/FavePhotosFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1

    .line 199
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 200
    iget-object p2, p0, Lcom/perm/kate/FavePhotosFragment$8;->this$0:Lcom/perm/kate/FavePhotosFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const-class p4, Lcom/perm/kate/PhotoViewerActrivity;

    invoke-virtual {p1, p2, p4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    add-int/lit8 p2, p3, -0x64

    add-int/lit8 p4, p3, 0x64

    if-gez p2, :cond_0

    const/4 p2, 0x0

    .line 206
    :cond_0
    iget-object p5, p0, Lcom/perm/kate/FavePhotosFragment$8;->this$0:Lcom/perm/kate/FavePhotosFragment;

    invoke-static {p5}, Lcom/perm/kate/FavePhotosFragment;->access$300(Lcom/perm/kate/FavePhotosFragment;)Ljava/util/ArrayList;

    move-result-object p5

    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result p5

    if-le p4, p5, :cond_1

    .line 207
    iget-object p4, p0, Lcom/perm/kate/FavePhotosFragment$8;->this$0:Lcom/perm/kate/FavePhotosFragment;

    invoke-static {p4}, Lcom/perm/kate/FavePhotosFragment;->access$300(Lcom/perm/kate/FavePhotosFragment;)Ljava/util/ArrayList;

    move-result-object p4

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p4

    .line 208
    :cond_1
    new-instance p5, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/perm/kate/FavePhotosFragment$8;->this$0:Lcom/perm/kate/FavePhotosFragment;

    invoke-static {v0}, Lcom/perm/kate/FavePhotosFragment;->access$300(Lcom/perm/kate/FavePhotosFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2, p4}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p4

    invoke-direct {p5, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sub-int/2addr p3, p2

    const-string p4, "com.perm.kate.position"

    .line 210
    invoke-virtual {p1, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p3, "com.perm.kate.photos"

    .line 211
    invoke-virtual {p1, p3, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p3, "com.perm.kate.info_position_offset"

    .line 212
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 213
    iget-object p2, p0, Lcom/perm/kate/FavePhotosFragment$8;->this$0:Lcom/perm/kate/FavePhotosFragment;

    invoke-static {p2}, Lcom/perm/kate/FavePhotosFragment;->access$300(Lcom/perm/kate/FavePhotosFragment;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const-string p3, "com.perm.kate.info_total_count"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 214
    iget-object p2, p0, Lcom/perm/kate/FavePhotosFragment$8;->this$0:Lcom/perm/kate/FavePhotosFragment;

    invoke-virtual {p2, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.class Lcom/perm/kate/FavePhotosFragment$8;
.super Ljava/lang/Object;
.source "FavePhotosFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/FavePhotosFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FavePhotosFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/FavePhotosFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/FavePhotosFragment;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/perm/kate/FavePhotosFragment$8;->this$0:Lcom/perm/kate/FavePhotosFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "pos"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 197
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 198
    .local v1, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/perm/kate/FavePhotosFragment$8;->this$0:Lcom/perm/kate/FavePhotosFragment;

    invoke-virtual {v4}, Lcom/perm/kate/FavePhotosFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-class v5, Lcom/perm/kate/PhotoViewerActrivity;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 200
    add-int/lit8 v3, p3, -0x64

    .line 201
    .local v3, "start":I
    add-int/lit8 v0, p3, 0x64

    .line 202
    .local v0, "end":I
    if-gez v3, :cond_0

    .line 203
    const/4 v3, 0x0

    .line 204
    :cond_0
    iget-object v4, p0, Lcom/perm/kate/FavePhotosFragment$8;->this$0:Lcom/perm/kate/FavePhotosFragment;

    invoke-static {v4}, Lcom/perm/kate/FavePhotosFragment;->access$300(Lcom/perm/kate/FavePhotosFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v0, v4, :cond_1

    .line 205
    iget-object v4, p0, Lcom/perm/kate/FavePhotosFragment$8;->this$0:Lcom/perm/kate/FavePhotosFragment;

    invoke-static {v4}, Lcom/perm/kate/FavePhotosFragment;->access$300(Lcom/perm/kate/FavePhotosFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 206
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/perm/kate/FavePhotosFragment$8;->this$0:Lcom/perm/kate/FavePhotosFragment;

    invoke-static {v4}, Lcom/perm/kate/FavePhotosFragment;->access$300(Lcom/perm/kate/FavePhotosFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3, v0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 208
    .local v2, "photos_chunk":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Photo;>;"
    const-string v4, "com.perm.kate.position"

    sub-int v5, p3, v3

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 209
    const-string v4, "com.perm.kate.photos"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 210
    const-string v4, "com.perm.kate.info_position_offset"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 211
    const-string v4, "com.perm.kate.info_total_count"

    iget-object v5, p0, Lcom/perm/kate/FavePhotosFragment$8;->this$0:Lcom/perm/kate/FavePhotosFragment;

    invoke-static {v5}, Lcom/perm/kate/FavePhotosFragment;->access$300(Lcom/perm/kate/FavePhotosFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 212
    iget-object v4, p0, Lcom/perm/kate/FavePhotosFragment$8;->this$0:Lcom/perm/kate/FavePhotosFragment;

    invoke-virtual {v4, v1}, Lcom/perm/kate/FavePhotosFragment;->startActivity(Landroid/content/Intent;)V

    .line 213
    return-void
.end method

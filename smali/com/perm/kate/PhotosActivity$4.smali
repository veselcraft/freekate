.class Lcom/perm/kate/PhotosActivity$4;
.super Ljava/lang/Object;
.source "PhotosActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/PhotosActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/PhotosActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/PhotosActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/PhotosActivity;

    .prologue
    .line 225
    iput-object p1, p0, Lcom/perm/kate/PhotosActivity$4;->this$0:Lcom/perm/kate/PhotosActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
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
    .line 229
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    :try_start_0
    iget-object v5, p0, Lcom/perm/kate/PhotosActivity$4;->this$0:Lcom/perm/kate/PhotosActivity;

    iget-wide v6, v5, Lcom/perm/kate/PhotosActivity;->aid:J

    const-wide/16 v8, -0x2710

    cmp-long v5, v6, v8

    if-nez v5, :cond_1

    .line 230
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 231
    .local v1, "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/perm/kate/PhotosActivity$4;->this$0:Lcom/perm/kate/PhotosActivity;

    const-class v6, Lcom/perm/kate/SinglePhotoViewer;

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 232
    const-string v6, "com.perm.kate.photo"

    iget-object v5, p0, Lcom/perm/kate/PhotosActivity$4;->this$0:Lcom/perm/kate/PhotosActivity;

    iget-object v5, v5, Lcom/perm/kate/PhotosActivity;->photos:Ljava/util/ArrayList;

    invoke-virtual {v5, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/Serializable;

    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 233
    const-string v5, "com.perm.kate.confirm_tag"

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 234
    iget-object v5, p0, Lcom/perm/kate/PhotosActivity$4;->this$0:Lcom/perm/kate/PhotosActivity;

    const/4 v6, 0x1

    invoke-virtual {v5, v1, v6}, Lcom/perm/kate/PhotosActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 260
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 237
    :cond_1
    iget-object v5, p0, Lcom/perm/kate/PhotosActivity$4;->this$0:Lcom/perm/kate/PhotosActivity;

    iget v5, v5, Lcom/perm/kate/PhotosActivity;->select_mode:I

    if-nez v5, :cond_0

    .line 238
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 239
    .restart local v1    # "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/perm/kate/PhotosActivity$4;->this$0:Lcom/perm/kate/PhotosActivity;

    const-class v6, Lcom/perm/kate/PhotoViewerActrivity;

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 241
    add-int/lit8 v3, p3, -0x64

    .line 242
    .local v3, "start":I
    add-int/lit8 v0, p3, 0x64

    .line 243
    .local v0, "end":I
    if-gez v3, :cond_2

    .line 244
    const/4 v3, 0x0

    .line 245
    :cond_2
    iget-object v5, p0, Lcom/perm/kate/PhotosActivity$4;->this$0:Lcom/perm/kate/PhotosActivity;

    iget-object v5, v5, Lcom/perm/kate/PhotosActivity;->photos:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v0, v5, :cond_3

    .line 246
    iget-object v5, p0, Lcom/perm/kate/PhotosActivity$4;->this$0:Lcom/perm/kate/PhotosActivity;

    iget-object v5, v5, Lcom/perm/kate/PhotosActivity;->photos:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 247
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/perm/kate/PhotosActivity$4;->this$0:Lcom/perm/kate/PhotosActivity;

    iget-object v5, v5, Lcom/perm/kate/PhotosActivity;->photos:Ljava/util/ArrayList;

    invoke-virtual {v5, v3, v0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 249
    .local v2, "photos_chunk":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Photo;>;"
    const-string v5, "com.perm.kate.photos"

    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 250
    const-string v5, "com.perm.kate.position"

    sub-int v6, p3, v3

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 251
    const-string v5, "com.perm.kate.info_position_offset"

    invoke-virtual {v1, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 252
    const-string v5, "com.perm.kate.info_total_count"

    iget-object v6, p0, Lcom/perm/kate/PhotosActivity$4;->this$0:Lcom/perm/kate/PhotosActivity;

    iget-object v6, v6, Lcom/perm/kate/PhotosActivity;->photos:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 253
    const-string v5, "com.perm.kate.owner_id"

    iget-object v6, p0, Lcom/perm/kate/PhotosActivity$4;->this$0:Lcom/perm/kate/PhotosActivity;

    iget-wide v6, v6, Lcom/perm/kate/PhotosActivity;->album_owner_id:J

    invoke-virtual {v1, v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 254
    iget-object v5, p0, Lcom/perm/kate/PhotosActivity$4;->this$0:Lcom/perm/kate/PhotosActivity;

    invoke-virtual {v5, v1}, Lcom/perm/kate/PhotosActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 256
    .end local v0    # "end":I
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "photos_chunk":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Photo;>;"
    .end local v3    # "start":I
    :catch_0
    move-exception v4

    .line 257
    .local v4, "th":Ljava/lang/Throwable;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 258
    invoke-static {v4}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

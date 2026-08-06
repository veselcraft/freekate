.class Lcom/perm/kate/PhotosActivity$5;
.super Ljava/lang/Object;
.source "PhotosActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


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
    .line 271
    iput-object p1, p0, Lcom/perm/kate/PhotosActivity$5;->this$0:Lcom/perm/kate/PhotosActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
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
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 275
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v6, p0, Lcom/perm/kate/PhotosActivity$5;->this$0:Lcom/perm/kate/PhotosActivity;

    iget-object v6, v6, Lcom/perm/kate/PhotosActivity;->photos:Ljava/util/ArrayList;

    invoke-virtual {v6, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/perm/kate/api/Photo;

    .line 276
    .local v4, "photo":Lcom/perm/kate/api/Photo;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 277
    .local v3, "menuItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/MenuItemDetails;>;"
    iget-object v6, v4, Lcom/perm/kate/api/Photo;->like_count:Ljava/lang/Integer;

    if-eqz v6, :cond_0

    iget-object v6, v4, Lcom/perm/kate/api/Photo;->like_count:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lez v6, :cond_1

    .line 278
    :cond_0
    new-instance v6, Lcom/perm/kate/MenuItemDetails;

    const v7, 0x7f070518

    const/4 v8, 0x1

    invoke-direct {v6, v7, v8}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    :cond_1
    new-instance v6, Lcom/perm/kate/MenuItemDetails;

    const v7, 0x7f0701d2

    const/4 v8, 0x2

    invoke-direct {v6, v7, v8}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    new-instance v6, Lcom/perm/kate/MenuItemDetails;

    const v7, 0x7f070175

    const/4 v8, 0x5

    invoke-direct {v6, v7, v8}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    iget-object v6, p0, Lcom/perm/kate/PhotosActivity$5;->this$0:Lcom/perm/kate/PhotosActivity;

    iget-wide v6, v6, Lcom/perm/kate/PhotosActivity;->aid:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-gez v6, :cond_6

    iget-object v6, p0, Lcom/perm/kate/PhotosActivity$5;->this$0:Lcom/perm/kate/PhotosActivity;

    iget-wide v6, v6, Lcom/perm/kate/PhotosActivity;->aid:J

    const-wide/16 v8, -0x7

    cmp-long v6, v6, v8

    if-nez v6, :cond_5

    const/4 v0, 0x1

    .line 283
    .local v0, "can_edit2":Z
    :goto_0
    if-eqz v0, :cond_2

    invoke-static {v4}, Lcom/perm/kate/PhotoViewerActrivity;->canEdit(Lcom/perm/kate/api/Photo;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 284
    new-instance v6, Lcom/perm/kate/MenuItemDetails;

    const v7, 0x7f070163

    const/4 v8, 0x4

    invoke-direct {v6, v7, v8}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    :cond_2
    iget-object v6, p0, Lcom/perm/kate/PhotosActivity$5;->this$0:Lcom/perm/kate/PhotosActivity;

    iget-wide v6, v6, Lcom/perm/kate/PhotosActivity;->aid:J

    const-wide/16 v8, -0x7

    cmp-long v6, v6, v8

    if-nez v6, :cond_7

    const/4 v2, 0x1

    .line 287
    .local v2, "is_wall_photos_album":Z
    :goto_1
    if-nez v2, :cond_3

    invoke-static {v4}, Lcom/perm/kate/PhotoViewerActrivity;->canEdit(Lcom/perm/kate/api/Photo;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 288
    new-instance v6, Lcom/perm/kate/MenuItemDetails;

    const v7, 0x7f0701e8

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    :cond_3
    invoke-static {v4}, Lcom/perm/kate/PhotoViewerActrivity;->canDelete(Lcom/perm/kate/api/Photo;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 290
    new-instance v6, Lcom/perm/kate/MenuItemDetails;

    const v7, 0x7f070084

    const/4 v8, 0x3

    invoke-direct {v6, v7, v8}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    :cond_4
    new-instance v6, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/perm/kate/PhotosActivity$5;->this$0:Lcom/perm/kate/PhotosActivity;

    invoke-direct {v6, v7}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 292
    invoke-static {v3}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object v7

    new-instance v8, Lcom/perm/kate/PhotosActivity$5$1;

    invoke-direct {v8, p0, v3, v4}, Lcom/perm/kate/PhotosActivity$5$1;-><init>(Lcom/perm/kate/PhotosActivity$5;Ljava/util/ArrayList;Lcom/perm/kate/api/Photo;)V

    invoke-virtual {v6, v7, v8}, Landroid/support/v7/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v5

    .line 325
    .local v5, "winAlert":Landroid/support/v7/app/AlertDialog$Builder;
    invoke-virtual {v5}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    .line 326
    .local v1, "dialog":Landroid/support/v7/app/AlertDialog;
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 327
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 328
    const/4 v6, 0x1

    return v6

    .line 282
    .end local v0    # "can_edit2":Z
    .end local v1    # "dialog":Landroid/support/v7/app/AlertDialog;
    .end local v2    # "is_wall_photos_album":Z
    .end local v5    # "winAlert":Landroid/support/v7/app/AlertDialog$Builder;
    :cond_5
    const/4 v0, 0x0

    goto :goto_0

    :cond_6
    const/4 v0, 0x1

    goto :goto_0

    .line 285
    .restart local v0    # "can_edit2":Z
    :cond_7
    const/4 v2, 0x0

    goto :goto_1
.end method

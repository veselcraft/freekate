.class Lcom/perm/kate/SearchActivity$41;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/SearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/SearchActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/SearchActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/SearchActivity;

    .prologue
    .line 1469
    iput-object p1, p0, Lcom/perm/kate/SearchActivity$41;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 12
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
    .line 1472
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/perm/kate/SearchActivity$41;->this$0:Lcom/perm/kate/SearchActivity;

    iget-object v1, v1, Lcom/perm/kate/SearchActivity;->docs:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Document;

    .line 1473
    .local v0, "doc":Lcom/perm/kate/api/Document;
    new-instance v1, Lcom/perm/kate/DocClickHelper;

    iget-object v2, p0, Lcom/perm/kate/SearchActivity$41;->this$0:Lcom/perm/kate/SearchActivity;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/perm/kate/DocClickHelper;-><init>(Lcom/perm/kate/BaseActivity;Lcom/perm/kate/DocClickHelper$DocClickHelperCallback;)V

    iget-wide v2, v0, Lcom/perm/kate/api/Document;->id:J

    iget-wide v4, v0, Lcom/perm/kate/api/Document;->owner_id:J

    iget-object v6, v0, Lcom/perm/kate/api/Document;->url:Ljava/lang/String;

    iget-object v7, v0, Lcom/perm/kate/api/Document;->title:Ljava/lang/String;

    iget-object v8, v0, Lcom/perm/kate/api/Document;->ext:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-object v11, v0, Lcom/perm/kate/api/Document;->thumb:Ljava/lang/String;

    invoke-virtual/range {v1 .. v11}, Lcom/perm/kate/DocClickHelper;->createContextMenu(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z

    .line 1474
    return-void
.end method

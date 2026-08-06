.class Lcom/perm/kate/SearchWallActivity$10;
.super Ljava/lang/Object;
.source "SearchWallActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/SearchWallActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/SearchWallActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/SearchWallActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/SearchWallActivity;

    .prologue
    .line 324
    iput-object p1, p0, Lcom/perm/kate/SearchWallActivity$10;->this$0:Lcom/perm/kate/SearchWallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 4
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
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v1, 0x0

    .line 327
    invoke-static {}, Lcom/perm/kate/NewsFragment;->clickOpensNews()Z

    move-result v2

    if-nez v2, :cond_1

    .line 335
    :cond_0
    :goto_0
    return v1

    .line 329
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/NewsItemTag;

    .line 330
    .local v0, "tag":Lcom/perm/kate/NewsItemTag;
    if-eqz v0, :cond_2

    .line 331
    iget-object v2, v0, Lcom/perm/kate/NewsItemTag;->type:Ljava/lang/String;

    const-string v3, "reply"

    if-eq v2, v3, :cond_0

    .line 333
    iget-object v1, p0, Lcom/perm/kate/SearchWallActivity$10;->this$0:Lcom/perm/kate/SearchWallActivity;

    invoke-virtual {v1, v0}, Lcom/perm/kate/SearchWallActivity;->CreateContextMenu(Lcom/perm/kate/NewsItemTag;)V

    .line 335
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

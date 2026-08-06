.class Lcom/perm/kate/SearchActivity$35;
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
    .line 1302
    iput-object p1, p0, Lcom/perm/kate/SearchActivity$35;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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
    .line 1305
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/NewsItemTag;

    .line 1306
    .local v0, "tag":Lcom/perm/kate/NewsItemTag;
    if-nez v0, :cond_0

    .line 1309
    :goto_0
    return-void

    .line 1308
    :cond_0
    iget-object v1, p0, Lcom/perm/kate/SearchActivity$35;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v0, v1}, Lcom/perm/kate/SearchedNewsClickHelper;->newsItemClick(Lcom/perm/kate/NewsItemTag;Lcom/perm/kate/SearchActivity;)V

    goto :goto_0
.end method

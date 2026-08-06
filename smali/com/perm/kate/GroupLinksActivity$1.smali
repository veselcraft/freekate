.class Lcom/perm/kate/GroupLinksActivity$1;
.super Ljava/lang/Object;
.source "GroupLinksActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/GroupLinksActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/GroupLinksActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/GroupLinksActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/GroupLinksActivity;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/perm/kate/GroupLinksActivity$1;->this$0:Lcom/perm/kate/GroupLinksActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    .line 71
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Link;

    .line 72
    .local v0, "link":Lcom/perm/kate/api/Link;
    if-eqz v0, :cond_0

    .line 73
    iget-object v1, p0, Lcom/perm/kate/GroupLinksActivity$1;->this$0:Lcom/perm/kate/GroupLinksActivity;

    iget-object v2, v0, Lcom/perm/kate/api/Link;->url:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/perm/kate/GroupLinksActivity;->access$000(Lcom/perm/kate/GroupLinksActivity;Ljava/lang/String;)V

    .line 74
    :cond_0
    return-void
.end method

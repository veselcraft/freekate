.class Lcom/perm/kate/LikesActivity$3;
.super Ljava/lang/Object;
.source "LikesActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/LikesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/LikesActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/LikesActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/LikesActivity;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/perm/kate/LikesActivity$3;->this$0:Lcom/perm/kate/LikesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
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
    .line 100
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 101
    .local v2, "str_id":Ljava/lang/String;
    invoke-static {v2}, Lcom/perm/kate/Helper;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 102
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 103
    .local v0, "item_id":J
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-gez v3, :cond_1

    .line 104
    const-wide/16 v4, -0x1

    mul-long/2addr v4, v0

    iget-object v3, p0, Lcom/perm/kate/LikesActivity$3;->this$0:Lcom/perm/kate/LikesActivity;

    invoke-static {v4, v5, v3}, Lcom/perm/kate/Helper;->showGroup(JLandroid/app/Activity;)V

    .line 108
    .end local v0    # "item_id":J
    :cond_0
    :goto_0
    return-void

    .line 106
    .restart local v0    # "item_id":J
    :cond_1
    iget-object v3, p0, Lcom/perm/kate/LikesActivity$3;->this$0:Lcom/perm/kate/LikesActivity;

    invoke-static {v0, v1, v3}, Lcom/perm/kate/Helper;->ShowProfile(JLandroid/app/Activity;)V

    goto :goto_0
.end method

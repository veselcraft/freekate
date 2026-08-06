.class Lcom/perm/kate/GiftsFragment$7;
.super Ljava/lang/Object;
.source "GiftsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/GiftsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/GiftsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/GiftsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/GiftsFragment;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/perm/kate/GiftsFragment$7;->this$0:Lcom/perm/kate/GiftsFragment;

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
    .line 212
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/GiftItem;

    .line 213
    .local v0, "item":Lcom/perm/kate/api/GiftItem;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/perm/kate/api/GiftItem;->from_id:Ljava/lang/Long;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/perm/kate/api/GiftItem;->from_id:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 214
    iget-object v1, v0, Lcom/perm/kate/api/GiftItem;->from_id:Ljava/lang/Long;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/GiftsFragment$7;->this$0:Lcom/perm/kate/GiftsFragment;

    invoke-virtual {v2}, Lcom/perm/kate/GiftsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/perm/kate/Helper;->ShowProfile(Ljava/lang/String;Landroid/app/Activity;)V

    .line 216
    :cond_0
    return-void
.end method

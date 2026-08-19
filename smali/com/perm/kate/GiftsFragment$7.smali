.class Lcom/perm/kate/GiftsFragment$7;
.super Ljava/lang/Object;
.source "GiftsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/GiftsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/GiftsFragment;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/perm/kate/GiftsFragment$7;->this$0:Lcom/perm/kate/GiftsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1

    .line 212
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/api/GiftItem;

    if-eqz p1, :cond_0

    .line 213
    iget-object p2, p1, Lcom/perm/kate/api/GiftItem;->from_id:Ljava/lang/Long;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    const-wide/16 p4, 0x0

    cmp-long v0, p2, p4

    if-lez v0, :cond_0

    .line 214
    iget-object p1, p1, Lcom/perm/kate/api/GiftItem;->from_id:Ljava/lang/Long;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/perm/kate/GiftsFragment$7;->this$0:Lcom/perm/kate/GiftsFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/perm/kate/Helper;->ShowProfile(Ljava/lang/String;Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

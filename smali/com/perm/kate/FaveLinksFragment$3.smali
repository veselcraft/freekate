.class Lcom/perm/kate/FaveLinksFragment$3;
.super Ljava/lang/Object;
.source "FaveLinksFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FaveLinksFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/FaveLinksFragment;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/perm/kate/FaveLinksFragment$3;->this$0:Lcom/perm/kate/FaveLinksFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 101
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 102
    iget-object p2, p0, Lcom/perm/kate/FaveLinksFragment$3;->this$0:Lcom/perm/kate/FaveLinksFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/perm/kate/Helper;->openUrl(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

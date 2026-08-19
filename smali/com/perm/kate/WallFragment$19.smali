.class Lcom/perm/kate/WallFragment$19;
.super Ljava/lang/Object;
.source "WallFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/WallFragment;

.field final synthetic val$menus:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/perm/kate/WallFragment;Ljava/util/ArrayList;)V
    .locals 0

    .line 970
    iput-object p1, p0, Lcom/perm/kate/WallFragment$19;->this$0:Lcom/perm/kate/WallFragment;

    iput-object p2, p0, Lcom/perm/kate/WallFragment$19;->val$menus:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 973
    iget-object p1, p0, Lcom/perm/kate/WallFragment$19;->this$0:Lcom/perm/kate/WallFragment;

    iget-object p2, p0, Lcom/perm/kate/WallFragment$19;->val$menus:Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/perm/kate/MenuItemDetails;

    iget p2, p2, Lcom/perm/kate/MenuItemDetails;->code:I

    invoke-static {p1, p2}, Lcom/perm/kate/WallFragment;->access$1200(Lcom/perm/kate/WallFragment;I)V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    return-void
.end method

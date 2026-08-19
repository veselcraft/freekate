.class Lcom/perm/kate/WallFragment$15;
.super Ljava/lang/Object;
.source "WallFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/WallFragment;

.field final synthetic val$menus:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/perm/kate/WallFragment;Ljava/util/ArrayList;)V
    .locals 0

    .line 844
    iput-object p1, p0, Lcom/perm/kate/WallFragment$15;->this$0:Lcom/perm/kate/WallFragment;

    iput-object p2, p0, Lcom/perm/kate/WallFragment$15;->val$menus:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 847
    iget-object p1, p0, Lcom/perm/kate/WallFragment$15;->this$0:Lcom/perm/kate/WallFragment;

    iget-object v0, p0, Lcom/perm/kate/WallFragment$15;->val$menus:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/perm/kate/MenuItemDetails;

    iget p2, p2, Lcom/perm/kate/MenuItemDetails;->code:I

    invoke-static {p1, p2}, Lcom/perm/kate/WallFragment;->access$1200(Lcom/perm/kate/WallFragment;I)V

    return-void
.end method

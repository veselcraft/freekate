.class Lcom/perm/kate/NewsFragment$22;
.super Ljava/lang/Object;
.source "NewsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/NewsFragment;

.field final synthetic val$menus:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/perm/kate/NewsFragment;Ljava/util/ArrayList;)V
    .locals 0

    .line 1017
    iput-object p1, p0, Lcom/perm/kate/NewsFragment$22;->this$0:Lcom/perm/kate/NewsFragment;

    iput-object p2, p0, Lcom/perm/kate/NewsFragment$22;->val$menus:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1019
    iget-object v0, p0, Lcom/perm/kate/NewsFragment$22;->this$0:Lcom/perm/kate/NewsFragment;

    iget-object v1, p0, Lcom/perm/kate/NewsFragment$22;->val$menus:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/perm/kate/MenuItemDetails;

    iget p2, p2, Lcom/perm/kate/MenuItemDetails;->code:I

    invoke-static {v0, p2}, Lcom/perm/kate/NewsFragment;->access$1500(Lcom/perm/kate/NewsFragment;I)V

    .line 1020
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

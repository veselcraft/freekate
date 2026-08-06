.class Lcom/perm/kate/NewsFragment$22;
.super Ljava/lang/Object;
.source "NewsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/NewsFragment;->showSourcesDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/NewsFragment;

.field final synthetic val$menus:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/perm/kate/NewsFragment;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/NewsFragment;

    .prologue
    .line 979
    iput-object p1, p0, Lcom/perm/kate/NewsFragment$22;->this$0:Lcom/perm/kate/NewsFragment;

    iput-object p2, p0, Lcom/perm/kate/NewsFragment$22;->val$menus:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 981
    iget-object v1, p0, Lcom/perm/kate/NewsFragment$22;->this$0:Lcom/perm/kate/NewsFragment;

    iget-object v0, p0, Lcom/perm/kate/NewsFragment$22;->val$menus:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/MenuItemDetails;

    iget v0, v0, Lcom/perm/kate/MenuItemDetails;->code:I

    invoke-static {v1, v0}, Lcom/perm/kate/NewsFragment;->access$1400(Lcom/perm/kate/NewsFragment;I)V

    .line 982
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 983
    return-void
.end method

.class Lcom/perm/kate/AccountsActivity$5;
.super Ljava/lang/Object;
.source "AccountsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/AccountsActivity;->showAccountMenu(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AccountsActivity;

.field final synthetic val$menus:Ljava/util/ArrayList;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/perm/kate/AccountsActivity;Ljava/util/ArrayList;I)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/perm/kate/AccountsActivity$5;->this$0:Lcom/perm/kate/AccountsActivity;

    iput-object p2, p0, Lcom/perm/kate/AccountsActivity$5;->val$menus:Ljava/util/ArrayList;

    iput p3, p0, Lcom/perm/kate/AccountsActivity$5;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 143
    iget-object p1, p0, Lcom/perm/kate/AccountsActivity$5;->val$menus:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/MenuItemDetails;

    iget p1, p1, Lcom/perm/kate/MenuItemDetails;->code:I

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 145
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/AccountsActivity$5;->this$0:Lcom/perm/kate/AccountsActivity;

    iget p2, p0, Lcom/perm/kate/AccountsActivity$5;->val$position:I

    invoke-static {p1, p2}, Lcom/perm/kate/AccountsActivity;->access$200(Lcom/perm/kate/AccountsActivity;I)V

    :goto_0
    return-void
.end method

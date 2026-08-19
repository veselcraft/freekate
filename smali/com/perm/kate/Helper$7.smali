.class Lcom/perm/kate/Helper$7;
.super Ljava/lang/Object;
.source "Helper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$menuItems:Ljava/util/ArrayList;

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .line 1130
    iput-object p1, p0, Lcom/perm/kate/Helper$7;->val$menuItems:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/perm/kate/Helper$7;->val$text:Ljava/lang/String;

    iput-object p3, p0, Lcom/perm/kate/Helper$7;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1133
    iget-object p1, p0, Lcom/perm/kate/Helper$7;->val$menuItems:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/MenuItemDetails;

    iget p1, p1, Lcom/perm/kate/MenuItemDetails;->code:I

    const/4 p2, 0x6

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 1135
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/Helper$7;->val$text:Ljava/lang/String;

    iget-object p2, p0, Lcom/perm/kate/Helper$7;->val$context:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/perm/kate/Helper;->copyText(Ljava/lang/String;Landroid/content/Context;)V

    :goto_0
    return-void
.end method

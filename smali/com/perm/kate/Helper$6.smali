.class final Lcom/perm/kate/Helper$6;
.super Ljava/lang/Object;
.source "Helper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/Helper;->createCopyTextContextMenu(Ljava/lang/String;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$menuItems:Ljava/util/ArrayList;

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 981
    iput-object p1, p0, Lcom/perm/kate/Helper$6;->val$menuItems:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/perm/kate/Helper$6;->val$text:Ljava/lang/String;

    iput-object p3, p0, Lcom/perm/kate/Helper$6;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 984
    iget-object v0, p0, Lcom/perm/kate/Helper$6;->val$menuItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/MenuItemDetails;

    iget v0, v0, Lcom/perm/kate/MenuItemDetails;->code:I

    packed-switch v0, :pswitch_data_0

    .line 989
    :goto_0
    return-void

    .line 986
    :pswitch_0
    iget-object v0, p0, Lcom/perm/kate/Helper$6;->val$text:Ljava/lang/String;

    iget-object v1, p0, Lcom/perm/kate/Helper$6;->val$context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/perm/kate/Helper;->copyText(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 984
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

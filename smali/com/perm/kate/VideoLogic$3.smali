.class Lcom/perm/kate/VideoLogic$3;
.super Ljava/lang/Object;
.source "VideoLogic.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$menuItems:Ljava/util/ArrayList;

.field final synthetic val$video:Lcom/perm/kate/api/Video;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/util/ArrayList;Lcom/perm/kate/api/Video;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/perm/kate/VideoLogic$3;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/perm/kate/VideoLogic$3;->val$menuItems:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/perm/kate/VideoLogic$3;->val$video:Lcom/perm/kate/api/Video;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 126
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/perm/kate/VideoLogic$3;->val$activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f027e

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/VideoLogic$3;->val$menuItems:Ljava/util/ArrayList;

    .line 127
    invoke-static {v1}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Lcom/perm/kate/VideoLogic$3$1;

    invoke-direct {v2, p0}, Lcom/perm/kate/VideoLogic$3$1;-><init>(Lcom/perm/kate/VideoLogic$3;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 149
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

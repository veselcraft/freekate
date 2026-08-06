.class final Lcom/perm/kate/VideoLogic$3;
.super Ljava/lang/Object;
.source "VideoLogic.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/VideoLogic;->displayQualityMenu(Lcom/perm/kate/api/Video;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$menuItems:Ljava/util/ArrayList;

.field final synthetic val$video:Lcom/perm/kate/api/Video;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/util/ArrayList;Lcom/perm/kate/api/Video;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/perm/kate/VideoLogic$3;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/perm/kate/VideoLogic$3;->val$menuItems:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/perm/kate/VideoLogic$3;->val$video:Lcom/perm/kate/api/Video;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 108
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/perm/kate/VideoLogic$3;->val$activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f070224

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/VideoLogic$3;->val$menuItems:Ljava/util/ArrayList;

    .line 109
    invoke-static {v1}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Lcom/perm/kate/VideoLogic$3$1;

    invoke-direct {v2, p0}, Lcom/perm/kate/VideoLogic$3$1;-><init>(Lcom/perm/kate/VideoLogic$3;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 131
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 132
    return-void
.end method

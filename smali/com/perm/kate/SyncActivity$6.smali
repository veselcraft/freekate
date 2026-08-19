.class Lcom/perm/kate/SyncActivity$6;
.super Ljava/lang/Object;
.source "SyncActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/SyncActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/SyncActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/SyncActivity;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/perm/kate/SyncActivity$6;->this$0:Lcom/perm/kate/SyncActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 210
    iget-object p1, p0, Lcom/perm/kate/SyncActivity$6;->this$0:Lcom/perm/kate/SyncActivity;

    const/4 v0, -0x1

    iput v0, p1, Lcom/perm/kate/SyncActivity;->selected:I

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/CharSequence;

    const v1, 0x7f0f04cf

    .line 211
    invoke-virtual {p1, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iget-object p1, p0, Lcom/perm/kate/SyncActivity$6;->this$0:Lcom/perm/kate/SyncActivity;

    const v1, 0x7f0f04d0

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    iget-object p1, p0, Lcom/perm/kate/SyncActivity$6;->this$0:Lcom/perm/kate/SyncActivity;

    const v1, 0x7f0f04d1

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    const/4 v1, 0x2

    aput-object p1, v0, v1

    .line 212
    invoke-static {}, Lcom/perm/kate/sync/SyncLogic;->getPhotoSize()I

    move-result p1

    .line 213
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/perm/kate/SyncActivity$6;->this$0:Lcom/perm/kate/SyncActivity;

    invoke-direct {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0f04ce

    .line 214
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 215
    new-instance v2, Lcom/perm/kate/SyncActivity$6$1;

    invoke-direct {v2, p0}, Lcom/perm/kate/SyncActivity$6$1;-><init>(Lcom/perm/kate/SyncActivity$6;)V

    invoke-virtual {v1, v0, p1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 220
    new-instance p1, Lcom/perm/kate/SyncActivity$6$2;

    invoke-direct {p1, p0}, Lcom/perm/kate/SyncActivity$6$2;-><init>(Lcom/perm/kate/SyncActivity$6;)V

    const v0, 0x7f0f0398

    invoke-virtual {v1, v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const p1, 0x7f0f01c5

    const/4 v0, 0x0

    .line 226
    invoke-virtual {v1, p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 227
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

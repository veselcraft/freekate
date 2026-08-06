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
    .param p1, "this$0"    # Lcom/perm/kate/SyncActivity;

    .prologue
    .line 203
    iput-object p1, p0, Lcom/perm/kate/SyncActivity$6;->this$0:Lcom/perm/kate/SyncActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 206
    iget-object v3, p0, Lcom/perm/kate/SyncActivity$6;->this$0:Lcom/perm/kate/SyncActivity;

    const/4 v4, -0x1

    iput v4, v3, Lcom/perm/kate/SyncActivity;->selected:I

    .line 207
    const/4 v3, 0x3

    new-array v2, v3, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/perm/kate/SyncActivity$6;->this$0:Lcom/perm/kate/SyncActivity;

    const v5, 0x7f07043c

    invoke-virtual {v4, v5}, Lcom/perm/kate/SyncActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/perm/kate/SyncActivity$6;->this$0:Lcom/perm/kate/SyncActivity;

    const v5, 0x7f07043d

    invoke-virtual {v4, v5}, Lcom/perm/kate/SyncActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/perm/kate/SyncActivity$6;->this$0:Lcom/perm/kate/SyncActivity;

    const v5, 0x7f07043e

    invoke-virtual {v4, v5}, Lcom/perm/kate/SyncActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v2, v3

    .line 208
    .local v2, "items":[Ljava/lang/CharSequence;
    invoke-static {}, Lcom/perm/kate/sync/SyncLogic;->getPhotoSize()I

    move-result v1

    .line 209
    .local v1, "current_size":I
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/perm/kate/SyncActivity$6;->this$0:Lcom/perm/kate/SyncActivity;

    invoke-direct {v0, v3}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 210
    .local v0, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    const v3, 0x7f07043b

    invoke-virtual {v0, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 211
    new-instance v3, Lcom/perm/kate/SyncActivity$6$1;

    invoke-direct {v3, p0}, Lcom/perm/kate/SyncActivity$6$1;-><init>(Lcom/perm/kate/SyncActivity$6;)V

    invoke-virtual {v0, v2, v1, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 216
    const v3, 0x7f070334

    new-instance v4, Lcom/perm/kate/SyncActivity$6$2;

    invoke-direct {v4, p0}, Lcom/perm/kate/SyncActivity$6$2;-><init>(Lcom/perm/kate/SyncActivity$6;)V

    invoke-virtual {v0, v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 222
    const v3, 0x7f07015d

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 223
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 224
    return-void
.end method

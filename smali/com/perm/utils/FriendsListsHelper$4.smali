.class final Lcom/perm/utils/FriendsListsHelper$4;
.super Ljava/lang/Object;
.source "FriendsListsHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/utils/FriendsListsHelper;->showFriendsListsDialog(Lcom/perm/kate/BaseActivity;Ljava/lang/Long;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$new_checked:[Z


# direct methods
.method constructor <init>([Z)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/perm/utils/FriendsListsHelper$4;->val$new_checked:[Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I
    .param p3, "isChecked"    # Z

    .prologue
    .line 142
    iget-object v0, p0, Lcom/perm/utils/FriendsListsHelper$4;->val$new_checked:[Z

    aput-boolean p3, v0, p2

    .line 143
    return-void
.end method

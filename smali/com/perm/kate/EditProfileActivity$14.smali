.class Lcom/perm/kate/EditProfileActivity$14;
.super Ljava/lang/Object;
.source "EditProfileActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/EditProfileActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/EditProfileActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/EditProfileActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/EditProfileActivity;

    .prologue
    .line 520
    iput-object p1, p0, Lcom/perm/kate/EditProfileActivity$14;->this$0:Lcom/perm/kate/EditProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 523
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 524
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/perm/kate/EditProfileActivity$14;->this$0:Lcom/perm/kate/EditProfileActivity;

    const-class v2, Lcom/perm/kate/MembersActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 525
    iget-object v1, p0, Lcom/perm/kate/EditProfileActivity$14;->this$0:Lcom/perm/kate/EditProfileActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/perm/kate/EditProfileActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 526
    return-void
.end method

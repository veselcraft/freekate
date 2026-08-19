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

    .line 523
    iput-object p1, p0, Lcom/perm/kate/EditProfileActivity$14;->this$0:Lcom/perm/kate/EditProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 526
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 527
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity$14;->this$0:Lcom/perm/kate/EditProfileActivity;

    const-class v1, Lcom/perm/kate/MembersActivity;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 528
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity$14;->this$0:Lcom/perm/kate/EditProfileActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

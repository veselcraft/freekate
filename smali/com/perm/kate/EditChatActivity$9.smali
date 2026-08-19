.class Lcom/perm/kate/EditChatActivity$9;
.super Ljava/lang/Object;
.source "EditChatActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/EditChatActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/EditChatActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/EditChatActivity;)V
    .locals 0

    .line 299
    iput-object p1, p0, Lcom/perm/kate/EditChatActivity$9;->this$0:Lcom/perm/kate/EditChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 302
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 303
    iget-object v0, p0, Lcom/perm/kate/EditChatActivity$9;->this$0:Lcom/perm/kate/EditChatActivity;

    const-class v1, Lcom/perm/kate/MembersActivity;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 304
    iget-object v0, p0, Lcom/perm/kate/EditChatActivity$9;->this$0:Lcom/perm/kate/EditChatActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

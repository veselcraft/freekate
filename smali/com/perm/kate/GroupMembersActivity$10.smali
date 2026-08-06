.class Lcom/perm/kate/GroupMembersActivity$10;
.super Ljava/lang/Object;
.source "GroupMembersActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/GroupMembersActivity;->showFilterDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/GroupMembersActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/GroupMembersActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/GroupMembersActivity;

    .prologue
    .line 317
    iput-object p1, p0, Lcom/perm/kate/GroupMembersActivity$10;->this$0:Lcom/perm/kate/GroupMembersActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 319
    iget-object v0, p0, Lcom/perm/kate/GroupMembersActivity$10;->this$0:Lcom/perm/kate/GroupMembersActivity;

    invoke-static {v0, p2}, Lcom/perm/kate/GroupMembersActivity;->access$1300(Lcom/perm/kate/GroupMembersActivity;I)V

    .line 320
    return-void
.end method

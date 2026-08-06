.class Lcom/perm/kate/GroupsFragment$10;
.super Ljava/lang/Object;
.source "GroupsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/GroupsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/GroupsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/GroupsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/GroupsFragment;

    .prologue
    .line 284
    iput-object p1, p0, Lcom/perm/kate/GroupsFragment$10;->this$0:Lcom/perm/kate/GroupsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 287
    iget-object v0, p0, Lcom/perm/kate/GroupsFragment$10;->this$0:Lcom/perm/kate/GroupsFragment;

    invoke-static {v0}, Lcom/perm/kate/GroupsFragment;->access$2100(Lcom/perm/kate/GroupsFragment;)V

    .line 288
    return-void
.end method

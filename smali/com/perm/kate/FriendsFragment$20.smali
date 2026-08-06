.class Lcom/perm/kate/FriendsFragment$20;
.super Ljava/lang/Object;
.source "FriendsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/FriendsFragment;->showDeleteDialog(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FriendsFragment;

.field final synthetic val$friend_id:J


# direct methods
.method constructor <init>(Lcom/perm/kate/FriendsFragment;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/FriendsFragment;

    .prologue
    .line 759
    iput-object p1, p0, Lcom/perm/kate/FriendsFragment$20;->this$0:Lcom/perm/kate/FriendsFragment;

    iput-wide p2, p0, Lcom/perm/kate/FriendsFragment$20;->val$friend_id:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 761
    iget-object v0, p0, Lcom/perm/kate/FriendsFragment$20;->this$0:Lcom/perm/kate/FriendsFragment;

    iget-wide v2, p0, Lcom/perm/kate/FriendsFragment$20;->val$friend_id:J

    invoke-static {v0, v2, v3}, Lcom/perm/kate/FriendsFragment;->access$2200(Lcom/perm/kate/FriendsFragment;J)V

    .line 762
    return-void
.end method

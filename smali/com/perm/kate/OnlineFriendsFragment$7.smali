.class Lcom/perm/kate/OnlineFriendsFragment$7;
.super Ljava/lang/Object;
.source "OnlineFriendsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/OnlineFriendsFragment;->showDeleteDialog(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/OnlineFriendsFragment;

.field final synthetic val$friend_id:J


# direct methods
.method constructor <init>(Lcom/perm/kate/OnlineFriendsFragment;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/OnlineFriendsFragment;

    .prologue
    .line 237
    iput-object p1, p0, Lcom/perm/kate/OnlineFriendsFragment$7;->this$0:Lcom/perm/kate/OnlineFriendsFragment;

    iput-wide p2, p0, Lcom/perm/kate/OnlineFriendsFragment$7;->val$friend_id:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 239
    iget-object v0, p0, Lcom/perm/kate/OnlineFriendsFragment$7;->this$0:Lcom/perm/kate/OnlineFriendsFragment;

    iget-wide v2, p0, Lcom/perm/kate/OnlineFriendsFragment$7;->val$friend_id:J

    invoke-static {v0, v2, v3}, Lcom/perm/kate/OnlineFriendsFragment;->access$200(Lcom/perm/kate/OnlineFriendsFragment;J)V

    .line 240
    return-void
.end method

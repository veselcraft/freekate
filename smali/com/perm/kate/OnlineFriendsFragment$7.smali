.class Lcom/perm/kate/OnlineFriendsFragment$7;
.super Ljava/lang/Object;
.source "OnlineFriendsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/OnlineFriendsFragment;

.field final synthetic val$friend_id:J


# direct methods
.method constructor <init>(Lcom/perm/kate/OnlineFriendsFragment;J)V
    .locals 0

    .line 239
    iput-object p1, p0, Lcom/perm/kate/OnlineFriendsFragment$7;->this$0:Lcom/perm/kate/OnlineFriendsFragment;

    iput-wide p2, p0, Lcom/perm/kate/OnlineFriendsFragment$7;->val$friend_id:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 241
    iget-object p1, p0, Lcom/perm/kate/OnlineFriendsFragment$7;->this$0:Lcom/perm/kate/OnlineFriendsFragment;

    iget-wide v0, p0, Lcom/perm/kate/OnlineFriendsFragment$7;->val$friend_id:J

    invoke-static {p1, v0, v1}, Lcom/perm/kate/OnlineFriendsFragment;->access$200(Lcom/perm/kate/OnlineFriendsFragment;J)V

    return-void
.end method

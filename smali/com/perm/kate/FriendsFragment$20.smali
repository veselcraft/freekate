.class Lcom/perm/kate/FriendsFragment$20;
.super Ljava/lang/Object;
.source "FriendsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FriendsFragment;

.field final synthetic val$friend_id:J


# direct methods
.method constructor <init>(Lcom/perm/kate/FriendsFragment;J)V
    .locals 0

    .line 795
    iput-object p1, p0, Lcom/perm/kate/FriendsFragment$20;->this$0:Lcom/perm/kate/FriendsFragment;

    iput-wide p2, p0, Lcom/perm/kate/FriendsFragment$20;->val$friend_id:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 797
    iget-object p1, p0, Lcom/perm/kate/FriendsFragment$20;->this$0:Lcom/perm/kate/FriendsFragment;

    iget-wide v0, p0, Lcom/perm/kate/FriendsFragment$20;->val$friend_id:J

    invoke-static {p1, v0, v1}, Lcom/perm/kate/FriendsFragment;->access$2100(Lcom/perm/kate/FriendsFragment;J)V

    return-void
.end method

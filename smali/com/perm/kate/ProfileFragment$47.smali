.class Lcom/perm/kate/ProfileFragment$47;
.super Lcom/perm/kate/session/Callback;
.source "ProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/ProfileFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/ProfileFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/ProfileFragment;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/ProfileFragment;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1693
    iput-object p1, p0, Lcom/perm/kate/ProfileFragment$47;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public ready(Ljava/lang/Object;)V
    .locals 8
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    .line 1696
    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    .line 1697
    .local v0, "friend_status":Ljava/lang/Integer;
    if-eqz v0, :cond_1

    .line 1698
    iget-object v5, p0, Lcom/perm/kate/ProfileFragment$47;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v4, :cond_2

    :goto_0
    invoke-static {v5, v4}, Lcom/perm/kate/ProfileFragment;->access$3902(Lcom/perm/kate/ProfileFragment;Z)Z

    .line 1699
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    .line 1700
    sget-object v4, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v4}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 1701
    .local v2, "owner_id":J
    sget-object v4, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v5, p0, Lcom/perm/kate/ProfileFragment$47;->this$0:Lcom/perm/kate/ProfileFragment;

    iget-object v5, v5, Lcom/perm/kate/ProfileFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v4, v2, v3, v6, v7}, Lcom/perm/kate/db/DataHelper;->isFriend(JJ)Z

    move-result v1

    .line 1702
    .local v1, "is_friend":Z
    if-nez v1, :cond_0

    .line 1703
    sget-object v4, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v5, p0, Lcom/perm/kate/ProfileFragment$47;->this$0:Lcom/perm/kate/ProfileFragment;

    iget-object v5, v5, Lcom/perm/kate/ProfileFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v4, v2, v3, v6, v7}, Lcom/perm/kate/db/DataHelper;->createFriend(JJ)J

    .line 1705
    .end local v1    # "is_friend":Z
    .end local v2    # "owner_id":J
    :cond_0
    iget-object v4, p0, Lcom/perm/kate/ProfileFragment$47;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v4, v5}, Lcom/perm/kate/ProfileFragment;->access$4000(Lcom/perm/kate/ProfileFragment;I)V

    .line 1707
    :cond_1
    return-void

    .line 1698
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

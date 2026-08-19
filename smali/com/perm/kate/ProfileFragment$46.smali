.class Lcom/perm/kate/ProfileFragment$46;
.super Lcom/perm/kate/session/Callback;
.source "ProfileFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/ProfileFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/ProfileFragment;Landroid/app/Activity;)V
    .locals 0

    .line 1746
    iput-object p1, p0, Lcom/perm/kate/ProfileFragment$46;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public ready(Ljava/lang/Object;)V
    .locals 5

    .line 1749
    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_2

    .line 1751
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment$46;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v0, v2}, Lcom/perm/kate/ProfileFragment;->access$3902(Lcom/perm/kate/ProfileFragment;Z)Z

    .line 1752
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 1753
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v0}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 1754
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v3, p0, Lcom/perm/kate/ProfileFragment$46;->this$0:Lcom/perm/kate/ProfileFragment;

    iget-object v3, v3, Lcom/perm/kate/ProfileFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/perm/kate/db/DataHelper;->isFriend(JJ)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1756
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v3, p0, Lcom/perm/kate/ProfileFragment$46;->this$0:Lcom/perm/kate/ProfileFragment;

    iget-object v3, v3, Lcom/perm/kate/ProfileFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/perm/kate/db/DataHelper;->createFriend(JJ)J

    .line 1758
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment$46;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/perm/kate/ProfileFragment;->access$4000(Lcom/perm/kate/ProfileFragment;I)V

    :cond_2
    return-void
.end method
